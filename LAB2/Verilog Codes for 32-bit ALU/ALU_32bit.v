
include "Adder_Subtractor_module.v"
include "Left_Right_32bit_Shifter.v"
include "Comparator_32bit.v"
include "Counter_32bit.v"
module ALU_32bit (
    input wire [31:0] A,      // First operand
    input wire [31:0] B,      // Second operand
    input wire [4:0] ShiftAmt, // Shift amount (used for shifting)
    input wire [2:0] ALU_Op,  // ALU operation selector
    input wire CLK,           // Clock signal (for counter)
    input wire RST,           // Reset signal (for counter)
    output reg [31:0] Result, // ALU Output
    output wire Zero,         // Zero Flag (1 if Result == 0)
    output wire CarryOut,     // Carry/Borrow flag
    output wire A_gt_B,       // Comparison output (A > B)
    output wire A_lt_B,       // Comparison output (A < B)
    output wire A_eq_B        // Comparison output (A == B)
);

    // Internal wires to hold operation results
    wire [31:0] AdderResult, ShiftResult, CounterResult;
    wire AdderCarryOut;
    wire Cmp_gt, Cmp_lt, Cmp_eq;

    // Instantiate Adder/Subtractor Module
    Adder_Subtractor_32bit ADD_SUB (
        .A(A),
        .B(B),
        .SUB(ALU_Op[0]), // Uses ALU_Op[0]: 0 for addition, 1 for subtraction
        .Result(AdderResult),
        .CarryOut(AdderCarryOut)
    );

    // Instantiate Left-Right Shifter Module
    Shifter_32bit SHIFTER (
        .A(A),
        .ShiftAmt(ShiftAmt),
        .DIR(ALU_Op[0]), // Uses ALU_Op[0]: 0 for left shift, 1 for right shift
        .Result(ShiftResult)
    );

    // Instantiate Comparator Module
    Comparator_32bit COMPARE (
        .A(A),
        .B(B),
        .A_gt_B(Cmp_gt),
        .A_lt_B(Cmp_lt),
        .A_eq_B(Cmp_eq)
    );

    // Instantiate Counter Module
    Counter_32bit COUNTER (
        .CLK(CLK),
        .RST(RST),
        .Q(CounterResult)
    );

    // ALU Operation Selection
    always @(*) begin
        case (ALU_Op)
            3'b000: Result = AdderResult;  // Addition
            3'b001: Result = AdderResult;  // Subtraction
            3'b010: Result = ShiftResult;  // Left Shift
            3'b011: Result = ShiftResult;  // Right Shift
            //3'b100: Result = {31'b0, Cmp_eq}; // Comparison Output (Only shows equality)
            3'b100: Result = {Cmp_gt, Cmp_lt, Cmp_eq, 29'b0}; // Store all three comparison flags
            3'b101: Result = CounterResult; // Counter Operation
            default: Result = 32'b0; // Default case
        endcase
    end

    // Output Flags
    assign Zero = (Result == 32'b0) ? 1'b1 : 1'b0; // Zero flag
    assign CarryOut = (ALU_Op == 3'b000 || ALU_Op == 3'b001) ? AdderCarryOut : 1'b0; // Carry only for Addition/Subtraction
    assign A_gt_B = Cmp_gt;
    assign A_lt_B = Cmp_lt;
    assign A_eq_B = Cmp_eq;

endmodule
