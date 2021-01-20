pkg load image
input_image = imread("foto.jpg");
[input_row, input_column,~] = size(input_image); 
%I used ~ for function return the appropriate result.

output_image = zeros(input_row*2, input_column*2,3);
%zeros returns an n -by- n matrix of zeros.
output_row = 1; output_column = 1;

for row = 1:1:input_row
    for column = 1:1:input_column
          output_image(output_row, output_column ,:)=input_image(row, column,:);
          %I used : for indexing the original image to get new image 
          output_column = output_column+2;
    end
    output_row = output_row+2;
    output_column = 1;
end
imwrite(output_image/255,"1.jpg")
%I divided the image to 255 because for setting the colors bit range.
%first image that I got had empty spaces.

output_image = zeros(input_row*2, input_column*2,3);
output_row = 1; output_column = 1;

for row = 1:1:input_row
    for column = 1:1:input_column
          output_image(output_row, output_column+1 ,:)=input_image(row, column,:);
          output_column = output_column+2;
    end
    output_row = output_row+2;
    output_column = 1;
end
imwrite(output_image/255,"2.jpg")
%second image is better but still had empty spaces.

output_image = zeros(input_row*2, input_column*2,3);
output_row = 1; output_column = 1;

for row = 1:1:input_row
    for column = 1:1:input_column
          output_image(output_row, output_column ,:)=input_image(row, column,:);
          output_image(output_row, output_column+1 ,:)=input_image(row, column,:);
          output_column = output_column+2;
    end
    output_column=1;
    for column = 1:1:input_column
          output_image(output_row+1, output_column ,:)=input_image(row, column,:);
          output_image(output_row+1, output_column+1 ,:)=input_image(row, column,:);
          output_column = output_column+2;
    end
    output_row = output_row+2;
    output_column = 1;
end
imwrite(output_image/255,"3.jpg")
%finally third image has clearly resized.

sizeScale=4;
output_image = zeros(input_row*4, input_column*4,3);
output_row = 1; output_column = 1;

for row = 1:1:input_row
    for column = 1:1:input_column
          output_image(output_row, output_column ,:)=input_image(row, column,:);
          output_column = output_column+4;
    end
    output_row = output_row+4;
    output_column = 1;
end
imwrite(output_image/255,"4.jpg")
%first n*4 resized image had empty spaces.

sizeScale=4;
output_image = zeros(input_row*4, input_column*4,3);
output_row = 1; output_column = 1;

for row = 1:1:input_row
    for column = 1:1:input_column
          output_image(output_row+1, output_column+0 ,:)=input_image(row, column,:);
          output_image(output_row+1, output_column+1 ,:)=input_image(row, column,:);
          output_image(output_row+1, output_column+3 ,:)=input_image(row, column,:);
          output_column = output_column+4;
    end
    output_column=1;
    for column = 1:1:input_column
          output_image(output_row+3, output_column+0 ,:)=input_image(row, column,:);
          output_image(output_row+3, output_column+2 ,:)=input_image(row, column,:);
          output_image(output_row+3, output_column+3 ,:)=input_image(row, column,:);
          output_column = output_column+4;
    end
    output_row = output_row+4;
    output_column = 1;
end
imwrite(output_image/255,"5.jpg")
%Second n*4 resized image is much better but still had empty spaces.

output_image = zeros(input_row*4, input_column*4,3);
output_row = 1; output_column = 1;

for row = 1:1:input_row
    for column = 1:1:input_column
          output_image(output_row, output_column ,:)=input_image(row, column,:);
          output_image(output_row, output_column+1 ,:)=input_image(row, column,:);
          output_image(output_row, output_column+2 ,:)=input_image(row, column,:);
          output_image(output_row, output_column+3 ,:)=input_image(row, column,:);
          output_column = output_column+4;
    end
    output_column=1;
    for column = 1:1:input_column
          output_image(output_row+1, output_column ,:)=input_image(row, column,:);
          output_image(output_row+1, output_column+1 ,:)=input_image(row, column,:);
          output_image(output_row+1, output_column+2 ,:)=input_image(row, column,:);
          output_image(output_row+1, output_column+3 ,:)=input_image(row, column,:);
          output_column = output_column+4;
    end
    output_column=1;
    for column = 1:1:input_column
          output_image(output_row+2, output_column ,:)=input_image(row, column,:);
          output_image(output_row+2, output_column+1 ,:)=input_image(row, column,:);
          output_image(output_row+2, output_column+2 ,:)=input_image(row, column,:);
          output_image(output_row+2, output_column+3 ,:)=input_image(row, column,:);
          output_column = output_column+4;
    end
    output_column=1;
    for column = 1:1:input_column
          output_image(output_row+3, output_column ,:)=input_image(row, column,:);
          output_image(output_row+3, output_column+1 ,:)=input_image(row, column,:);
          output_image(output_row+3, output_column+2 ,:)=input_image(row, column,:);
          output_image(output_row+3, output_column+3 ,:)=input_image(row, column,:);
          output_column = output_column+4;
    end
    output_column=1;

    output_row = output_row+4;
    output_column = 1;
end
imwrite(output_image/255,"6.jpg")
%third n*4 resized image has clearly resized.

