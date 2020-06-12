tri = [7 9];
triIso = [4 4];
tri306090 = [2 2*sqrt(3)];

% preconditions
angles = rightTri(tri);
assert(angles(3) == 90,'Fundamental problem: rightTri not producing right triangle')

%% Test 1: sum of angles
angles = rightTri(tri);
assert(sum(angles) == 180)
 
angles = rightTri(triIso);
assert(sum(angles) == 180)
 
angles = rightTri(tri306090);
assert(sum(angles) == 180)
 
%% Test 2: isosceles triangles
angles = rightTri(triIso);
assert(angles(1) == 45)
assert(angles(1) == angles(2))
 

