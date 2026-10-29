`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/14/2026 10:11:28 PM
// Design Name: 
// Module Name: calc_type2
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module calc_type2(
  input Enb,    
  input [1:0]op,
  input [3:0]A,
  input Sa,
  input [3:0]B,
  input Sb,
  output reg [7:0] Result,
  output reg Sr
    );
    
  always@(*)begin
  
  Result = 1'bX;
  Sr = 1'bX;
  
  if(Enb)begin
   
     case(op)
     
     //ADDITION
     
      2'b00:begin
            
      if (Sa == Sb)begin
      Result = A + B;
      Sr = Sa;
      end
      
      else begin 
      if (A > B) begin
      Result = A - B;
      Sr = Sa;
      end
      else if (B > A) begin
      Result = B - A;
      Sr = Sb;
      end
      else begin
      // A == B 
      Result = 8'b0;
      Sr = 1'b0;
      end
      end
      end
      
      // SUBTRACTION
      
      2'b01:begin
      
      if (Sa != Sb)begin
      Result = A + B;
      Sr = Sa;
      end
      
      else begin
      if (A > B)begin
      Result = A - B;
      Sr = Sa;   
      end
      else if (B > A)begin
      Result = B - A;
      Sr = ~Sa;
      end
      else begin
      // A == B
      Result = 8'b0;
      Sr = 1'b0;
      end
      end
      end
      
      // MULTIPLICATION
      
        2'b10:begin
        
       Result = A * B;
       if ((A == 0) || (B == 0))
         Sr = 1'b0;
       else
         Sr = Sa ^ Sb;
        end
        
        // DIVISION
        
        2'b11:begin

         if (B != 0) begin
            Result = A / B;

             if (Result == 0)
                Sr = 1'b0;
             else
                Sr = Sa ^ Sb;
         end
         else begin
            Result = 8'd0;
            Sr = 1'b0;
         end
        end
        default:begin
        Result = 1'bX;
        Sr = 1'bX;
        end
        endcase
        end
   else begin   // Calculator do not operate
          Result=8'd0;
          Sr=1'b0;
  end
  end
endmodule
 
