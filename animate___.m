function animate(fun, from_cell,to_cell)
% for index = 1:numel(varargin)
% if isequal(varargin{index}, "")
% 
% end
% end
% Where function is defined using a single cell as an input parameter,
% where all the elements inside the cell are assumed to be such that
% multiplication is defined.

cellwise_inbetween = @(from_cell, to_cell, factor) ...
                         cellfun(@(from_val, to_val) ...
                            from_val - (from_val-to_val)*factor, from_cell, to_cell, ...
                            "UniformOutput",false);

for i  = 0:0.02:1
factor = 2*i^2*(1-0.5*i^2);
fun(cellwise_inbetween(from_cell, to_cell, factor));
drawnow
end

end

% https://blogs.mathworks.com/matlab/