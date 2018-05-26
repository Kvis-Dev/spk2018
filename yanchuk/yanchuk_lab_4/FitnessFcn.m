function  [output_args] = FitnessFcn( input_args )

a = 26; b = -86; c = -59; d = 3;
x = input_args(1);

f = a + b*x + c*(x^2) + d*(x^3);
output_args = f;

end

