int nondet() { int a; return a; }
_Bool nondet_bool() { _Bool a; return a; }
int main() {
int v1 = nondet();
int v2 = nondet();
goto loc_2;
loc_2:
 if (nondet_bool()) {
  goto loc_0;
 }
 goto end;
loc_0:
 if (nondet_bool()) {
  v1 = -1;
  v2 = 1;
  v1 = v2;
  goto loc_1;
 }
 goto end;
loc_1:
end:
;
}
