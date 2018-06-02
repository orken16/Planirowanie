program johnson;
const n = 6;
type
mas = array [1..n] of integer;
function min(a, b: integer): integer;
begin
if a <= b then
min := a
else
min := b;
end;
function sign(a: integer): integer;
begin
if a > 0 then
sign := 1
else if a = 0 then
sign := 0
else
sign := -1;
end;
procedure swap(var a: mas; i, j: integer);
var
t: integer;
begin
t := a[i];
a[i] := a[j];
a[j] := t;
end;
procedure main;
var
a, b, c, w, p: mas;
i, j, m: integer;
begin
m := 1;
for i := 1 to n do
begin
p[i] := i;
write('a[', i, '] b[', i, '] : ');
readln(a[i], b[i]);
c[i] := min(a[i], b[i]);
m := m + c[i];
end;
for i := 1 to n do
w[i] := sign(a[i] - b[i]) * (m - c[i]);
writeln('M = ', m);
writeln(' i a b c w');
for i := 1 to n do
writeln(i:4, a[i]:4, b[i]:4, c[i]:4, w[i]:4);
for i := 1 to n - 1 do
for j := 1 to n - i do
if w[j] > w[j + 1] then
begin
swap(a, j, j + 1);
swap(b, j, j + 1);
swap(w, j, j + 1);
swap(p, j, j + 1);
end;
for i := 1 to n do
write(' ', p[i]);
writeln;
end;
begin
main;
end.