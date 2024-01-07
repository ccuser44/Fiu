--[====[Generated by CreateTests.lua]====]
return function()
	return [[Function 0 (f):
   14: function f (x) return a:x (x) end
GETGLOBAL R1 K0 ['a']
MOVE R3 R0
NAMECALL R1 R1 K1 ['x']
CALL R1 2 -1
RETURN R1 -1

Function 1 (fact):
   25:     if n==0 then return res
JUMPXEQKN R0 K0 L0 NOT [0]
LOADN R1 1
RETURN R1 1
   26:     else return n*fact(n-1)
L0: GETUPVAL R2 0
SUBK R3 R0 K1 [1]
CALL R2 1 1
MUL R1 R0 R2
RETURN R1 1

Function 2 (x):
   36: function a:x (x) return x+self.i end
GETTABLEKS R3 R0 K0 ['i']
ADD R2 R1 R3
RETURN R2 1

Function 3 (y):
   37: function a.y (x) return x+self end
GETGLOBAL R2 K0 ['self']
ADD R1 R0 R2
RETURN R1 1

Function 4 (??):
   42: a["t"].x = function (self, a,b) return self.i+a+b end
GETTABLEKS R5 R0 K0 ['i']
ADD R4 R5 R1
ADD R3 R4 R2
RETURN R3 1

Function 5 (add):
   48:   function a:add (x) self.x, a.y = self.x+x, 20; return self end
GETUPVAL R2 0
GETTABLEKS R4 R0 K0 ['x']
ADD R3 R4 R1
LOADN R4 20
SETTABLEKS R3 R0 K0 ['x']
SETTABLEKS R4 R2 K1 ['y']
RETURN R0 1

Function 6 (f1):
   54: function a.b.c.f1 (x) return x+1 end
ADDK R1 R0 K0 [1]
RETURN R1 1

Function 7 (f2):
   55: function a.b.c:f2 (x,y) self[x] = y end
SETTABLE R2 R0 R1
RETURN R0 0

Function 8 (f):
REMARK allocation: table array 4
   62: function f(a,b,c) local d = 'a'; t={a,b,c,d} end
NEWTABLE R3 0 4
MOVE R4 R0
MOVE R5 R1
MOVE R6 R2
LOADK R7 K0 ['a']
SETLIST R3 R4 4 [1]
SETGLOBAL R3 K1 ['t']
RETURN R0 0

Function 9 (fat):
   72:   if x <= 1 then return 1
LOADN R1 1
JUMPIFNOTLE R0 R1 L0
LOADN R1 1
RETURN R1 1
   73:   else return x*loadstring("return fat(" .. x-1 .. ")")()
L0: GETIMPORT R2 1 [loadstring]
LOADK R4 K2 ['return fat(']
SUBK R5 R0 K3 [1]
LOADK R6 K4 [')']
CONCAT R3 R4 R6
CALL R2 1 1
CALL R2 0 1
MUL R1 R0 R2
RETURN R1 1

Function 10 (err_on_n):
   84:   if n==0 then error(); exit(1);
JUMPXEQKN R0 K0 L0 NOT [0]
GETIMPORT R1 2 [error]
CALL R1 0 0
GETIMPORT R1 4 [exit]
LOADN R2 1
CALL R1 1 0
   87: end
RETURN R0 0
   85:   else err_on_n (n-1); exit(1);
L0: GETGLOBAL R1 K5 ['err_on_n']
SUBK R2 R0 K6 [1]
CALL R1 1 0
GETIMPORT R1 4 [exit]
LOADN R2 1
CALL R1 1 0
   87: end
RETURN R0 0

Function 11 (dummy):
   91:     if n > 0 then
LOADN R1 0
JUMPIFNOTLT R1 R0 L1
REMARK builtin assert/1
   92:       assert(not pcall(err_on_n, n))
GETIMPORT R3 1 [pcall]
GETGLOBAL R4 K2 ['err_on_n']
MOVE R5 R0
CALL R3 2 1
NOT R2 R3
FASTCALL1 1 R2 L0
GETIMPORT R1 4 [assert]
CALL R1 1 0
   93:       dummy(n-1)
L0: GETGLOBAL R1 K5 ['dummy']
SUBK R2 R0 K6 [1]
CALL R1 1 0
   95:   end
L1: RETURN R0 0

Function 12 (deep):
  101:   if n>0 then deep(n-1) end
LOADN R1 0
JUMPIFNOTLT R1 R0 L0
GETGLOBAL R1 K0 ['deep']
SUBK R2 R0 K1 [1]
CALL R1 1 0
  102: end
L0: RETURN R0 0

Function 13 (deep):
  107: function deep (n) if n>0 then return deep(n-1) else return 101 end end
LOADN R1 0
JUMPIFNOTLT R1 R0 L0
GETGLOBAL R1 K0 ['deep']
SUBK R2 R0 K1 [1]
CALL R1 1 -1
RETURN R1 -1
L0: LOADN R1 101
RETURN R1 1

Function 14 (deep):
  110: function a:deep (n) if n>0 then return self:deep(n-1) else return 101 end end
LOADN R2 0
JUMPIFNOTLT R2 R1 L0
SUBK R4 R1 K0 [1]
NAMECALL R2 R0 K1 ['deep']
CALL R2 2 -1
RETURN R2 -1
L0: LOADN R2 101
RETURN R2 1

Function 15 (??):
  117: (function (x) a=x end)(23)
SETUPVAL R0 0
RETURN R0 0

Function 16 (??):
  118: assert(a == 23 and (function (x) return x*2 end)(20) == 40)
MULK R1 R0 K0 [2]
RETURN R1 1

Function 17 (??):
  150:         return le(function (x) return f(f)(x) end)
GETUPVAL R1 0
GETUPVAL R2 0
CALL R1 1 1
MOVE R2 R0
CALL R1 1 -1
RETURN R1 -1

Function 18 (a):
  150:         return le(function (x) return f(f)(x) end)
GETUPVAL R1 0
REMARK allocation: closure with 1 upvalues
NEWCLOSURE R2 P0
CAPTURE VAL R0
CALL R1 1 -1
RETURN R1 -1

Function 19 (??):
REMARK allocation: closure with 1 upvalues
  149:       local function a (f)
NEWCLOSURE R1 P0
CAPTURE VAL R0
  152:       return a(a)
MOVE R2 R1
MOVE R3 R1
CALL R2 1 -1
RETURN R2 -1

Function 20 (??):
  160:                if n == 0 then return 1
JUMPXEQKN R0 K0 L0 NOT [0]
LOADN R1 1
RETURN R1 1
  161:                else return n*f(n-1) end
L0: GETUPVAL R2 0
SUBK R3 R0 K1 [1]
CALL R2 1 1
MUL R1 R0 R2
RETURN R1 1

Function 21 (??):
REMARK allocation: closure with 1 upvalues
  159:       return function (n)
NEWCLOSURE R1 P0
CAPTURE VAL R0
RETURN R1 1

Function 22 (??):
  171:     return function (x,y) return a+b+c+d+a+x+y+z end
GETUPVAL R9 0
GETUPVAL R10 1
ADD R8 R9 R10
GETUPVAL R9 2
ADD R7 R8 R9
GETUPVAL R8 3
ADD R6 R7 R8
GETUPVAL R7 0
ADD R5 R6 R7
ADD R4 R5 R0
ADD R3 R4 R1
GETUPVAL R4 4
ADD R2 R3 R4
RETURN R2 1

Function 23 (f):
REMARK allocation: closure with 5 upvalues
  171:     return function (x,y) return a+b+c+d+a+x+y+z end
NEWCLOSURE R4 P0
CAPTURE VAL R0
CAPTURE VAL R1
CAPTURE VAL R2
CAPTURE VAL R3
CAPTURE UPVAL U0
RETURN R4 1

Function 24 (g):
REMARK allocation: closure with 1 upvalues
  170:   local function f (a,b,c,d)
NEWCLOSURE R1 P0
CAPTURE VAL R0
  173:   return f(z,z+1,z+2,z+3)
MOVE R2 R1
MOVE R3 R0
ADDK R4 R0 K0 [1]
ADDK R5 R0 K1 [2]
ADDK R6 R0 K2 [3]
CALL R2 4 -1
RETURN R2 -1

Function 25 (unlpack):
  185:   i = i or 1
ORK R1 R1 K0 [1]
  186:   if (i <= table.getn(t)) then
GETIMPORT R2 3 [table.getn]
MOVE R3 R0
CALL R2 1 1
JUMPIFNOTLE R1 R2 L0
  187:     return t[i], unlpack(t, i+1)
GETTABLE R2 R0 R1
GETGLOBAL R3 K4 ['unlpack']
MOVE R4 R0
ADDK R5 R1 K0 [1]
CALL R3 2 -1
RETURN R2 -1
  189: end
L0: RETURN R0 0

Function 26 (equaltab):
REMARK builtin assert/1
  192:   assert(table.getn(t1) == table.getn(t2))
GETIMPORT R4 2 [table.getn]
MOVE R5 R0
CALL R4 1 1
GETIMPORT R5 2 [table.getn]
MOVE R6 R1
CALL R5 1 1
JUMPIFEQ R4 R5 L0
LOADB R3 0 +1
L0: LOADB R3 1
L1: FASTCALL1 1 R3 L2
GETIMPORT R2 4 [assert]
CALL R2 1 0
  193:   for i,v1 in ipairs(t1) do
L2: GETIMPORT R2 6 [ipairs]
MOVE R3 R0
CALL R2 1 3
FORGPREP_INEXT R2 L6
REMARK builtin assert/1
  194:     assert(v1 == t2[i])
L3: GETTABLE R9 R1 R5
JUMPIFEQ R6 R9 L4
LOADB R8 0 +1
L4: LOADB R8 1
L5: FASTCALL1 1 R8 L6
GETIMPORT R7 4 [assert]
CALL R7 1 0
  193:   for i,v1 in ipairs(t1) do
L6: FORGLOOP R2 L3 2 [inext]
  196: end
RETURN R0 0

Function 27 (f):
  198: function f() return 1,2,30,4 end
LOADN R0 1
LOADN R1 2
LOADN R2 30
LOADN R3 4
RETURN R0 4

Function 28 (ret2):
  199: function ret2 (a,b) return a,b end
RETURN R0 2

Function 29 (??):
  221: table.sort({10,9,8,4,19,23,0,0}, function (a,b) return a<b end, "extra arg")
JUMPIFLT R0 R1 L0
LOADB R2 0 +1
L0: LOADB R2 1
L1: RETURN R2 1

Function 30 (??):
  225: assert((function () return nil end)(4) == nil)
LOADNIL R0
RETURN R0 1

Function 31 (??):
  226: assert((function () local a; return a end)(4) == nil)
LOADNIL R0
RETURN R0 1

Function 32 (??):
  227: assert((function (a) return a end)() == nil)
RETURN R0 1

Function 33 (??):
    3: print("testing functions and calls")
GETIMPORT R0 1 [print]
LOADK R1 K2 ['testing functions and calls']
CALL R0 1 0
REMARK builtin assert/1
REMARK builtin type/1
    7: assert(type(1<2) == 'boolean')
LOADB R3 1
FASTCALL1 40 R3 L0
GETIMPORT R2 4 [type]
CALL R2 1 1
L0: JUMPXEQKS R2 K5 L1 ['boolean']
LOADB R1 0 +1
L1: LOADB R1 1
L2: FASTCALL1 1 R1 L3
GETIMPORT R0 7 [assert]
CALL R0 1 0
REMARK builtin assert/1
    8: assert(type(true) == 'boolean' and type(false) == 'boolean')
L3: LOADB R1 0
REMARK builtin type/1
LOADB R3 1
FASTCALL1 40 R3 L4
GETIMPORT R2 4 [type]
CALL R2 1 1
L4: JUMPXEQKS R2 K5 L7 NOT ['boolean']
REMARK builtin type/1
LOADB R3 0
FASTCALL1 40 R3 L5
GETIMPORT R2 4 [type]
CALL R2 1 1
L5: JUMPXEQKS R2 K5 L6 ['boolean']
LOADB R1 0 +1
L6: LOADB R1 1
L7: FASTCALL1 1 R1 L8
GETIMPORT R0 7 [assert]
CALL R0 1 0
REMARK builtin assert/1
    9: assert(type(nil) == 'nil' and type(-3) == 'number' and type'x' == 'string' and
L8: LOADB R1 0
REMARK builtin type/1
LOADNIL R3
FASTCALL1 40 R3 L9
GETIMPORT R2 4 [type]
CALL R2 1 1
L9: JUMPXEQKS R2 K8 L15 NOT ['nil']
LOADB R1 0
REMARK builtin type/1
LOADN R3 -3
FASTCALL1 40 R3 L10
GETIMPORT R2 4 [type]
CALL R2 1 1
L10: JUMPXEQKS R2 K9 L15 NOT ['number']
LOADB R1 0
REMARK builtin type/1
LOADK R3 K10 ['x']
FASTCALL1 40 R3 L11
GETIMPORT R2 4 [type]
CALL R2 1 1
L11: JUMPXEQKS R2 K11 L15 NOT ['string']
LOADB R1 0
REMARK builtin type/1
REMARK allocation: table hash 0
   10:        type{} == 'table' and type(type) == 'function')
NEWTABLE R3 0 0
FASTCALL1 40 R3 L12
GETIMPORT R2 4 [type]
CALL R2 1 1
L12: JUMPXEQKS R2 K12 L15 NOT ['table']
REMARK builtin type/1
GETIMPORT R3 4 [type]
FASTCALL1 40 R3 L13
GETIMPORT R2 4 [type]
CALL R2 1 1
L13: JUMPXEQKS R2 K13 L14 ['function']
LOADB R1 0 +1
L14: LOADB R1 1
L15: FASTCALL1 1 R1 L16
    9: assert(type(nil) == 'nil' and type(-3) == 'number' and type'x' == 'string' and
GETIMPORT R0 7 [assert]
CALL R0 1 0
REMARK builtin assert/1
REMARK builtin type/1
   12: assert(type(assert) == type(print))
L16: GETIMPORT R3 7 [assert]
FASTCALL1 40 R3 L17
GETIMPORT R2 4 [type]
CALL R2 1 1
REMARK builtin type/1
L17: GETIMPORT R4 1 [print]
FASTCALL1 40 R4 L18
GETIMPORT R3 4 [type]
CALL R3 1 1
L18: JUMPIFEQ R2 R3 L19
LOADB R1 0 +1
L19: LOADB R1 1
L20: FASTCALL1 1 R1 L21
GETIMPORT R0 7 [assert]
CALL R0 1 0
   13: f = nil
L21: LOADNIL R0
SETGLOBAL R0 K14 ['f']
   14: function f (x) return a:x (x) end
DUPCLOSURE R0 K15 ['f']
SETGLOBAL R0 K14 ['f']
REMARK builtin assert/1
REMARK builtin type/1
   15: assert(type(f) == 'function')
GETGLOBAL R3 K14 ['f']
FASTCALL1 40 R3 L22
GETIMPORT R2 4 [type]
CALL R2 1 1
L22: JUMPXEQKS R2 K13 L23 ['function']
LOADB R1 0 +1
L23: LOADB R1 1
L24: FASTCALL1 1 R1 L25
GETIMPORT R0 7 [assert]
CALL R0 1 0
   17: local pack = table.pack
L25: GETIMPORT R0 17 [table.pack]
   18: local unpack = table.unpack
GETIMPORT R1 19 [table.unpack]
   21: fact = false
LOADB R2 0
SETGLOBAL R2 K20 ['fact']
   24:   local function fact (n)
DUPCLOSURE R2 K21 ['fact']
CAPTURE VAL R2
REMARK builtin assert/1
   29:   assert(fact(5) == 120)
MOVE R5 R2
LOADN R6 5
CALL R5 1 1
JUMPXEQKN R5 K22 L26 [120]
LOADB R4 0 +1
L26: LOADB R4 1
L27: FASTCALL1 1 R4 L28
GETIMPORT R3 7 [assert]
CALL R3 1 0
REMARK builtin assert/1
   31: assert(fact == false)
L28: GETGLOBAL R4 K20 ['fact']
JUMPXEQKB R4 0 L29
LOADB R3 0 +1
L29: LOADB R3 1
L30: FASTCALL1 1 R3 L31
GETIMPORT R2 7 [assert]
CALL R2 1 0
REMARK allocation: table template 1
   34: a = {i = 10}
L31: DUPTABLE R2 24
LOADN R3 10
SETTABLEKS R3 R2 K23 ['i']
SETGLOBAL R2 K25 ['a']
   35: self = 20
LOADN R2 20
SETGLOBAL R2 K26 ['self']
   36: function a:x (x) return x+self.i end
DUPCLOSURE R2 K27 ['x']
GETGLOBAL R3 K25 ['a']
SETTABLEKS R2 R3 K10 ['x']
   37: function a.y (x) return x+self end
DUPCLOSURE R2 K28 ['y']
GETGLOBAL R3 K25 ['a']
SETTABLEKS R2 R3 K29 ['y']
REMARK builtin assert/1
   39: assert(a:x(1)+10 == a.y(1))
GETGLOBAL R5 K25 ['a']
LOADN R7 1
NAMECALL R5 R5 K10 ['x']
CALL R5 2 1
ADDK R4 R5 K30 [10]
GETGLOBAL R6 K25 ['a']
GETTABLEKS R5 R6 K29 ['y']
LOADN R6 1
CALL R5 1 1
JUMPIFEQ R4 R5 L32
LOADB R3 0 +1
L32: LOADB R3 1
L33: FASTCALL1 1 R3 L34
GETIMPORT R2 7 [assert]
CALL R2 1 0
   41: a.t = {i=-100}
L34: GETGLOBAL R2 K25 ['a']
REMARK allocation: table template 1
DUPTABLE R3 24
LOADN R4 -100
SETTABLEKS R4 R3 K23 ['i']
SETTABLEKS R3 R2 K31 ['t']
   42: a["t"].x = function (self, a,b) return self.i+a+b end
GETGLOBAL R3 K25 ['a']
GETTABLEKS R2 R3 K31 ['t']
DUPCLOSURE R3 K32 []
SETTABLEKS R3 R2 K10 ['x']
REMARK builtin assert/1
   44: assert(a.t:x(2,3) == -95)
GETGLOBAL R5 K25 ['a']
GETTABLEKS R4 R5 K31 ['t']
LOADN R6 2
LOADN R7 3
NAMECALL R4 R4 K10 ['x']
CALL R4 3 1
JUMPXEQKN R4 K33 L35 [-95]
LOADB R3 0 +1
L35: LOADB R3 1
L36: FASTCALL1 1 R3 L37
GETIMPORT R2 7 [assert]
CALL R2 1 0
REMARK allocation: table template 1
   47:   local a = {x=0}
L37: DUPTABLE R2 34
LOADN R3 0
SETTABLEKS R3 R2 K10 ['x']
   48:   function a:add (x) self.x, a.y = self.x+x, 20; return self end
DUPCLOSURE R3 K35 ['add']
CAPTURE VAL R2
SETTABLEKS R3 R2 K36 ['add']
REMARK builtin assert/1
   49:   assert(a:add(10):add(20):add(30).x == 60 and a.y == 20)
LOADB R4 0
LOADN R8 10
NAMECALL R6 R2 K36 ['add']
CALL R6 2 1
LOADN R8 20
NAMECALL R6 R6 K36 ['add']
CALL R6 2 1
LOADN R8 30
NAMECALL R6 R6 K36 ['add']
CALL R6 2 1
GETTABLEKS R5 R6 K10 ['x']
JUMPXEQKN R5 K37 L39 NOT [60]
GETTABLEKS R5 R2 K29 ['y']
JUMPXEQKN R5 K38 L38 [20]
LOADB R4 0 +1
L38: LOADB R4 1
L39: FASTCALL1 1 R4 L40
GETIMPORT R3 7 [assert]
CALL R3 1 0
REMARK allocation: table template 1
   52: local a = {b={c={}}}
L40: DUPTABLE R2 40
REMARK allocation: table template 1
DUPTABLE R3 42
REMARK allocation: table hash 0
NEWTABLE R4 0 0
SETTABLEKS R4 R3 K41 ['c']
SETTABLEKS R3 R2 K39 ['b']
   54: function a.b.c.f1 (x) return x+1 end
DUPCLOSURE R3 K43 ['f1']
GETTABLEKS R5 R2 K39 ['b']
GETTABLEKS R4 R5 K41 ['c']
SETTABLEKS R3 R4 K44 ['f1']
   55: function a.b.c:f2 (x,y) self[x] = y end
DUPCLOSURE R3 K45 ['f2']
GETTABLEKS R5 R2 K39 ['b']
GETTABLEKS R4 R5 K41 ['c']
SETTABLEKS R3 R4 K46 ['f2']
REMARK builtin assert/1
   56: assert(a.b.c.f1(4) == 5)
GETTABLEKS R7 R2 K39 ['b']
GETTABLEKS R6 R7 K41 ['c']
GETTABLEKS R5 R6 K44 ['f1']
LOADN R6 4
CALL R5 1 1
JUMPXEQKN R5 K47 L41 [5]
LOADB R4 0 +1
L41: LOADB R4 1
L42: FASTCALL1 1 R4 L43
GETIMPORT R3 7 [assert]
CALL R3 1 0
   57: a.b.c:f2('k', 12); assert(a.b.c.k == 12)
L43: GETTABLEKS R4 R2 K39 ['b']
GETTABLEKS R3 R4 K41 ['c']
LOADK R5 K48 ['k']
LOADN R6 12
NAMECALL R3 R3 K46 ['f2']
CALL R3 3 0
REMARK builtin assert/1
GETTABLEKS R7 R2 K39 ['b']
GETTABLEKS R6 R7 K41 ['c']
GETTABLEKS R5 R6 K48 ['k']
JUMPXEQKN R5 K49 L44 [12]
LOADB R4 0 +1
L44: LOADB R4 1
L45: FASTCALL1 1 R4 L46
GETIMPORT R3 7 [assert]
CALL R3 1 0
   59: print('+')
L46: GETIMPORT R3 1 [print]
LOADK R4 K50 ['+']
CALL R3 1 0
   61: t = nil   -- 'declare' t
LOADNIL R3
SETGLOBAL R3 K31 ['t']
   62: function f(a,b,c) local d = 'a'; t={a,b,c,d} end
DUPCLOSURE R3 K51 ['f']
SETGLOBAL R3 K14 ['f']
   64: f(      -- this line change must be valid
GETGLOBAL R3 K14 ['f']
   65:   1,2)
LOADN R4 1
LOADN R5 2
   64: f(      -- this line change must be valid
CALL R3 2 0
REMARK builtin assert/1
   66: assert(t[1] == 1 and t[2] == 2 and t[3] == nil and t[4] == 'a')
LOADB R4 0
GETGLOBAL R6 K31 ['t']
GETTABLEN R5 R6 1
JUMPXEQKN R5 K52 L48 NOT [1]
LOADB R4 0
GETGLOBAL R6 K31 ['t']
GETTABLEN R5 R6 2
JUMPXEQKN R5 K53 L48 NOT [2]
LOADB R4 0
GETGLOBAL R6 K31 ['t']
GETTABLEN R5 R6 3
JUMPXEQKNIL R5 L48 NOT
GETGLOBAL R6 K31 ['t']
GETTABLEN R5 R6 4
JUMPXEQKS R5 K25 L47 ['a']
LOADB R4 0 +1
L47: LOADB R4 1
L48: FASTCALL1 1 R4 L49
GETIMPORT R3 7 [assert]
CALL R3 1 0
   67: f(1,2,   -- this one too
L49: GETGLOBAL R3 K14 ['f']
LOADN R4 1
LOADN R5 2
   68:       3,4)
LOADN R6 3
LOADN R7 4
   67: f(1,2,   -- this one too
CALL R3 4 0
REMARK builtin assert/1
   69: assert(t[1] == 1 and t[2] == 2 and t[3] == 3 and t[4] == 'a')
LOADB R4 0
GETGLOBAL R6 K31 ['t']
GETTABLEN R5 R6 1
JUMPXEQKN R5 K52 L51 NOT [1]
LOADB R4 0
GETGLOBAL R6 K31 ['t']
GETTABLEN R5 R6 2
JUMPXEQKN R5 K53 L51 NOT [2]
LOADB R4 0
GETGLOBAL R6 K31 ['t']
GETTABLEN R5 R6 3
JUMPXEQKN R5 K54 L51 NOT [3]
GETGLOBAL R6 K31 ['t']
GETTABLEN R5 R6 4
JUMPXEQKS R5 K25 L50 ['a']
LOADB R4 0 +1
L50: LOADB R4 1
L51: FASTCALL1 1 R4 L52
GETIMPORT R3 7 [assert]
CALL R3 1 0
   71: function fat(x)
L52: DUPCLOSURE R3 K55 ['fat']
SETGLOBAL R3 K56 ['fat']
REMARK builtin assert/1+
   77: assert(loadstring "loadstring 'assert(fat(6)==720)' () ")()
GETIMPORT R4 58 [loadstring]
LOADK R5 K59 ['loadstring 'assert(fat(6)==720)''...]
CALL R4 1 -1
FASTCALL 1 L53
GETIMPORT R3 7 [assert]
CALL R3 -1 1
L53: CALL R3 0 0
   78: a = loadstring('return fat(5), 3')
GETIMPORT R3 58 [loadstring]
LOADK R4 K60 ['return fat(5), 3']
CALL R3 1 1
MOVE R2 R3
   79: a,b = a()
MOVE R3 R2
CALL R3 0 2
SETGLOBAL R4 K39 ['b']
MOVE R2 R3
REMARK builtin assert/1
   80: assert(a == 120 and b == 3)
LOADB R4 0
JUMPXEQKN R2 K22 L55 NOT [120]
GETGLOBAL R5 K39 ['b']
JUMPXEQKN R5 K54 L54 [3]
LOADB R4 0 +1
L54: LOADB R4 1
L55: FASTCALL1 1 R4 L56
GETIMPORT R3 7 [assert]
CALL R3 1 0
   81: print('+')
L56: GETIMPORT R3 1 [print]
LOADK R4 K50 ['+']
CALL R3 1 0
   83: function err_on_n (n)
DUPCLOSURE R3 K61 ['err_on_n']
SETGLOBAL R3 K62 ['err_on_n']
   90:   function dummy (n)
DUPCLOSURE R3 K63 ['dummy']
SETGLOBAL R3 K64 ['dummy']
   98: dummy(10)
GETGLOBAL R3 K64 ['dummy']
LOADN R4 10
CALL R3 1 0
  100: function deep (n)
DUPCLOSURE R3 K65 ['deep']
SETGLOBAL R3 K66 ['deep']
  103: deep(10)
GETGLOBAL R3 K66 ['deep']
LOADN R4 10
CALL R3 1 0
  104: deep(200)
GETGLOBAL R3 K66 ['deep']
LOADN R4 200
CALL R3 1 0
  107: function deep (n) if n>0 then return deep(n-1) else return 101 end end
DUPCLOSURE R3 K67 ['deep']
SETGLOBAL R3 K66 ['deep']
REMARK builtin assert/1
  108: assert(deep(10000) == 101)
GETGLOBAL R5 K66 ['deep']
LOADN R6 10000
CALL R5 1 1
JUMPXEQKN R5 K68 L57 [101]
LOADB R4 0 +1
L57: LOADB R4 1
L58: FASTCALL1 1 R4 L59
GETIMPORT R3 7 [assert]
CALL R3 1 0
REMARK allocation: table hash 0
  109: a = {}
L59: NEWTABLE R2 0 0
  110: function a:deep (n) if n>0 then return self:deep(n-1) else return 101 end end
DUPCLOSURE R3 K69 ['deep']
SETTABLEKS R3 R2 K66 ['deep']
REMARK builtin assert/1
  111: assert(a:deep(10000) == 101)
LOADN R7 10000
NAMECALL R5 R2 K66 ['deep']
CALL R5 2 1
JUMPXEQKN R5 K68 L60 [101]
LOADB R4 0 +1
L60: LOADB R4 1
L61: FASTCALL1 1 R4 L62
GETIMPORT R3 7 [assert]
CALL R3 1 0
  113: print('+')
L62: GETIMPORT R3 1 [print]
LOADK R4 K50 ['+']
CALL R3 1 0
  116: a = nil
LOADNIL R2
REMARK allocation: closure with 1 upvalues
  117: (function (x) a=x end)(23)
NEWCLOSURE R3 P15
CAPTURE REF R2
LOADN R4 23
CALL R3 1 0
REMARK builtin assert/1
  118: assert(a == 23 and (function (x) return x*2 end)(20) == 40)
LOADB R4 0
JUMPXEQKN R2 K70 L64 NOT [23]
DUPCLOSURE R5 K71 []
LOADN R6 20
CALL R5 1 1
JUMPXEQKN R5 K72 L63 [40]
LOADB R4 0 +1
L63: LOADB R4 1
L64: FASTCALL1 1 R4 L65
GETIMPORT R3 7 [assert]
CALL R3 1 0
  121: local x,y,z,a
L65: LOADNIL R3
LOADNIL R4
LOADNIL R5
LOADNIL R6
REMARK allocation: table hash 0
  122: a = {}; lim = 2000
NEWTABLE R6 0 0
LOADN R7 2000
SETGLOBAL R7 K73 ['lim']
  123: for i=1, lim do a[i]=i end
LOADN R9 1
GETGLOBAL R7 K73 ['lim']
LOADN R8 1
FORNPREP R7 L67
L66: SETTABLE R9 R6 R9
FORNLOOP R7 L66
REMARK builtin assert/1
  124: assert(select(lim, unpack(a)) == lim and select('#', unpack(a)) == lim)
L67: LOADB R8 0
GETIMPORT R9 75 [select]
GETGLOBAL R10 K73 ['lim']
REMARK builtin table.unpack/1
FASTCALL1 53 R6 L68
MOVE R12 R6
MOVE R11 R1
CALL R11 1 -1
L68: CALL R9 -1 1
GETGLOBAL R10 K73 ['lim']
JUMPIFNOTEQ R9 R10 L71
GETIMPORT R9 75 [select]
LOADK R10 K76 ['#']
REMARK builtin table.unpack/1
FASTCALL1 53 R6 L69
MOVE R12 R6
MOVE R11 R1
CALL R11 1 -1
L69: CALL R9 -1 1
GETGLOBAL R10 K73 ['lim']
JUMPIFEQ R9 R10 L70
LOADB R8 0 +1
L70: LOADB R8 1
L71: FASTCALL1 1 R8 L72
GETIMPORT R7 7 [assert]
CALL R7 1 0
REMARK builtin table.unpack/1
  125: x = unpack(a)
L72: FASTCALL1 53 R6 L73
MOVE R8 R6
MOVE R7 R1
CALL R7 1 1
L73: MOVE R3 R7
REMARK builtin assert/1
  126: assert(x == 1)
JUMPXEQKN R3 K52 L74 [1]
LOADB R8 0 +1
L74: LOADB R8 1
L75: FASTCALL1 1 R8 L76
GETIMPORT R7 7 [assert]
CALL R7 1 0
REMARK allocation: table array 1
  127: x = {unpack(a)}
L76: NEWTABLE R7 0 1
REMARK builtin table.unpack/1
FASTCALL1 53 R6 L77
MOVE R9 R6
MOVE R8 R1
CALL R8 1 -1
L77: SETLIST R7 R8 -1 [1]
MOVE R3 R7
REMARK builtin assert/1
  128: assert(table.getn(x) == lim and x[1] == 1 and x[lim] == lim)
LOADB R8 0
GETIMPORT R9 78 [table.getn]
MOVE R10 R3
CALL R9 1 1
GETGLOBAL R10 K73 ['lim']
JUMPIFNOTEQ R9 R10 L79
LOADB R8 0
GETTABLEN R9 R3 1
JUMPXEQKN R9 K52 L79 NOT [1]
GETGLOBAL R10 K73 ['lim']
GETTABLE R9 R3 R10
GETGLOBAL R10 K73 ['lim']
JUMPIFEQ R9 R10 L78
LOADB R8 0 +1
L78: LOADB R8 1
L79: FASTCALL1 1 R8 L80
GETIMPORT R7 7 [assert]
CALL R7 1 0
REMARK allocation: table array 1
  129: x = {unpack(a, lim-2)}
L80: NEWTABLE R7 0 1
REMARK builtin table.unpack/2
GETGLOBAL R11 K73 ['lim']
SUBK R10 R11 K53 [2]
FASTCALL2 53 R6 R10 L81
MOVE R9 R6
MOVE R8 R1
CALL R8 2 -1
L81: SETLIST R7 R8 -1 [1]
MOVE R3 R7
REMARK builtin assert/1
  130: assert(table.getn(x) == 3 and x[1] == lim-2 and x[3] == lim)
LOADB R8 0
GETIMPORT R9 78 [table.getn]
MOVE R10 R3
CALL R9 1 1
JUMPXEQKN R9 K54 L83 NOT [3]
LOADB R8 0
GETTABLEN R9 R3 1
GETGLOBAL R11 K73 ['lim']
SUBK R10 R11 K53 [2]
JUMPIFNOTEQ R9 R10 L83
GETTABLEN R9 R3 3
GETGLOBAL R10 K73 ['lim']
JUMPIFEQ R9 R10 L82
LOADB R8 0 +1
L82: LOADB R8 1
L83: FASTCALL1 1 R8 L84
GETIMPORT R7 7 [assert]
CALL R7 1 0
REMARK allocation: table array 1
  131: x = {unpack(a, 10, 6)}
L84: NEWTABLE R7 0 1
REMARK builtin table.unpack/3
MOVE R9 R6
LOADN R10 10
LOADN R11 6
FASTCALL 53 L85
MOVE R8 R1
CALL R8 3 -1
L85: SETLIST R7 R8 -1 [1]
MOVE R3 R7
REMARK builtin assert/1
  132: assert(next(x) == nil)   -- no elements
GETIMPORT R9 80 [next]
MOVE R10 R3
CALL R9 1 1
JUMPXEQKNIL R9 L86
LOADB R8 0 +1
L86: LOADB R8 1
L87: FASTCALL1 1 R8 L88
GETIMPORT R7 7 [assert]
CALL R7 1 0
REMARK allocation: table array 1
  133: x = {unpack(a, 11, 10)}
L88: NEWTABLE R7 0 1
REMARK builtin table.unpack/3
MOVE R9 R6
LOADN R10 11
LOADN R11 10
FASTCALL 53 L89
MOVE R8 R1
CALL R8 3 -1
L89: SETLIST R7 R8 -1 [1]
MOVE R3 R7
REMARK builtin assert/1
  134: assert(next(x) == nil)   -- no elements
GETIMPORT R9 80 [next]
MOVE R10 R3
CALL R9 1 1
JUMPXEQKNIL R9 L90
LOADB R8 0 +1
L90: LOADB R8 1
L91: FASTCALL1 1 R8 L92
GETIMPORT R7 7 [assert]
CALL R7 1 0
REMARK builtin table.unpack/3
  135: x,y = unpack(a, 10, 10)
L92: MOVE R8 R6
LOADN R9 10
LOADN R10 10
FASTCALL 53 L93
MOVE R7 R1
CALL R7 3 2
L93: MOVE R3 R7
MOVE R4 R8
REMARK builtin assert/1
  136: assert(x == 10 and y == nil)
LOADB R8 0
JUMPXEQKN R3 K30 L95 NOT [10]
JUMPXEQKNIL R4 L94
LOADB R8 0 +1
L94: LOADB R8 1
L95: FASTCALL1 1 R8 L96
GETIMPORT R7 7 [assert]
CALL R7 1 0
REMARK builtin table.unpack/3
  137: x,y,z = unpack(a, 10, 11)
L96: MOVE R8 R6
LOADN R9 10
LOADN R10 11
FASTCALL 53 L97
MOVE R7 R1
CALL R7 3 3
L97: MOVE R3 R7
MOVE R4 R8
MOVE R5 R9
REMARK builtin assert/1
  138: assert(x == 10 and y == 11 and z == nil)
LOADB R8 0
JUMPXEQKN R3 K30 L99 NOT [10]
LOADB R8 0
JUMPXEQKN R4 K81 L99 NOT [11]
JUMPXEQKNIL R5 L98
LOADB R8 0 +1
L98: LOADB R8 1
L99: FASTCALL1 1 R8 L100
GETIMPORT R7 7 [assert]
CALL R7 1 0
REMARK builtin table.unpack/1
REMARK allocation: table array 1
  139: a,x = unpack{1}
L100: NEWTABLE R8 0 1
LOADN R9 1
SETLIST R8 R9 1 [1]
FASTCALL1 53 R8 L101
MOVE R7 R1
CALL R7 1 2
L101: MOVE R6 R7
MOVE R3 R8
REMARK builtin assert/1
  140: assert(a==1 and x==nil)
LOADB R8 0
JUMPXEQKN R6 K52 L103 NOT [1]
JUMPXEQKNIL R3 L102
LOADB R8 0 +1
L102: LOADB R8 1
L103: FASTCALL1 1 R8 L104
GETIMPORT R7 7 [assert]
CALL R7 1 0
REMARK builtin table.unpack/3
REMARK allocation: table array 2
  141: a,x = unpack({1,2}, 1, 1)
L104: NEWTABLE R8 0 2
LOADN R9 1
LOADN R10 2
SETLIST R8 R9 2 [1]
LOADN R9 1
LOADN R10 1
FASTCALL 53 L105
MOVE R7 R1
CALL R7 3 2
L105: MOVE R6 R7
MOVE R3 R8
REMARK builtin assert/1
  142: assert(a==1 and x==nil)
LOADB R8 0
JUMPXEQKN R6 K52 L107 NOT [1]
JUMPXEQKNIL R3 L106
LOADB R8 0 +1
L106: LOADB R8 1
L107: FASTCALL1 1 R8 L108
GETIMPORT R7 7 [assert]
CALL R7 1 0
  148: Y = function (le)
L108: DUPCLOSURE R7 K82 []
SETGLOBAL R7 K83 ['Y']
  158: F = function (f)
DUPCLOSURE R7 K84 []
SETGLOBAL R7 K85 ['F']
  165: fat = Y(F)
GETGLOBAL R7 K83 ['Y']
GETGLOBAL R8 K85 ['F']
CALL R7 1 1
SETGLOBAL R7 K56 ['fat']
REMARK builtin assert/1
  167: assert(fat(0) == 1 and fat(4) == 24 and Y(F)(5)==5*Y(F)(4))
LOADB R8 0
GETGLOBAL R9 K56 ['fat']
LOADN R10 0
CALL R9 1 1
JUMPXEQKN R9 K52 L110 NOT [1]
LOADB R8 0
GETGLOBAL R9 K56 ['fat']
LOADN R10 4
CALL R9 1 1
JUMPXEQKN R9 K86 L110 NOT [24]
GETGLOBAL R9 K83 ['Y']
GETGLOBAL R10 K85 ['F']
CALL R9 1 1
LOADN R10 5
CALL R9 1 1
LOADN R11 5
GETGLOBAL R12 K83 ['Y']
GETGLOBAL R13 K85 ['F']
CALL R12 1 1
LOADN R13 4
CALL R12 1 1
MUL R10 R11 R12
JUMPIFEQ R9 R10 L109
LOADB R8 0 +1
L109: LOADB R8 1
L110: FASTCALL1 1 R8 L111
GETIMPORT R7 7 [assert]
CALL R7 1 0
  169: local function g (z)
L111: DUPCLOSURE R7 K87 ['g']
  176: f = g(10)
MOVE R8 R7
LOADN R9 10
CALL R8 1 1
SETGLOBAL R8 K14 ['f']
REMARK builtin assert/1
  177: assert(f(9, 16) == 10+11+12+13+10+9+16+10)
GETGLOBAL R10 K14 ['f']
LOADN R11 9
LOADN R12 16
CALL R10 2 1
JUMPXEQKN R10 K88 L112 [91]
LOADB R9 0 +1
L112: LOADB R9 1
L113: FASTCALL1 1 R9 L114
GETIMPORT R8 7 [assert]
CALL R8 1 0
  179: Y, F, f = nil
L114: LOADNIL R8
LOADNIL R9
LOADNIL R10
SETGLOBAL R8 K83 ['Y']
SETGLOBAL R9 K85 ['F']
SETGLOBAL R10 K14 ['f']
  180: print('+')
GETIMPORT R8 1 [print]
LOADK R9 K50 ['+']
CALL R8 1 0
  184: function unlpack (t, i)
DUPCLOSURE R8 K89 ['unlpack']
SETGLOBAL R8 K90 ['unlpack']
  191: function equaltab (t1, t2)
DUPCLOSURE R8 K91 ['equaltab']
SETGLOBAL R8 K92 ['equaltab']
  198: function f() return 1,2,30,4 end
DUPCLOSURE R8 K93 ['f']
SETGLOBAL R8 K14 ['f']
  199: function ret2 (a,b) return a,b end
DUPCLOSURE R8 K94 ['ret2']
SETGLOBAL R8 K95 ['ret2']
  201: local a,b,c,d = unlpack{1,2,3}
GETGLOBAL R8 K90 ['unlpack']
REMARK allocation: table array 3
NEWTABLE R9 0 3
LOADN R12 1
LOADN R13 2
LOADN R14 3
SETLIST R9 R12 3 [1]
CALL R8 1 4
REMARK builtin assert/1
  202: assert(a==1 and b==2 and c==3 and d==nil)
LOADB R13 0
JUMPXEQKN R8 K52 L116 NOT [1]
LOADB R13 0
JUMPXEQKN R9 K53 L116 NOT [2]
LOADB R13 0
JUMPXEQKN R10 K54 L116 NOT [3]
JUMPXEQKNIL R11 L115
LOADB R13 0 +1
L115: LOADB R13 1
L116: FASTCALL1 1 R13 L117
GETIMPORT R12 7 [assert]
CALL R12 1 0
REMARK allocation: table array 9
  203: a = {1,2,3,4,false,10,'alo',false,assert}
L117: NEWTABLE R12 0 9
LOADN R13 1
LOADN R14 2
LOADN R15 3
LOADN R16 4
LOADB R17 0
LOADN R18 10
LOADK R19 K96 ['alo']
LOADB R20 0
GETIMPORT R21 7 [assert]
SETLIST R12 R13 9 [1]
MOVE R8 R12
  204: equaltab(pack(unlpack(a)), a)
GETGLOBAL R12 K92 ['equaltab']
MOVE R13 R0
GETGLOBAL R14 K90 ['unlpack']
MOVE R15 R8
CALL R14 1 -1
CALL R13 -1 1
MOVE R14 R8
CALL R12 2 0
  205: equaltab(pack(unlpack(a), -1), {1,-1})
GETGLOBAL R12 K92 ['equaltab']
MOVE R13 R0
GETGLOBAL R14 K90 ['unlpack']
MOVE R15 R8
CALL R14 1 1
LOADN R15 -1
CALL R13 2 1
REMARK allocation: table array 2
NEWTABLE R14 0 2
LOADN R15 1
LOADN R16 -1
SETLIST R14 R15 2 [1]
CALL R12 2 0
  206: a,b,c,d = ret2(f()), ret2(f())
GETGLOBAL R12 K95 ['ret2']
GETGLOBAL R13 K14 ['f']
CALL R13 0 -1
CALL R12 -1 1
MOVE R8 R12
GETGLOBAL R12 K95 ['ret2']
GETGLOBAL R13 K14 ['f']
CALL R13 0 -1
CALL R12 -1 3
MOVE R9 R12
MOVE R10 R13
MOVE R11 R14
REMARK builtin assert/1
  207: assert(a==1 and b==1 and c==2 and d==nil)
LOADB R13 0
JUMPXEQKN R8 K52 L119 NOT [1]
LOADB R13 0
JUMPXEQKN R9 K52 L119 NOT [1]
LOADB R13 0
JUMPXEQKN R10 K53 L119 NOT [2]
JUMPXEQKNIL R11 L118
LOADB R13 0 +1
L118: LOADB R13 1
L119: FASTCALL1 1 R13 L120
GETIMPORT R12 7 [assert]
CALL R12 1 0
  208: a,b,c,d = unlpack(pack(ret2(f()), ret2(f())))
L120: GETGLOBAL R12 K90 ['unlpack']
MOVE R13 R0
GETGLOBAL R14 K95 ['ret2']
GETGLOBAL R15 K14 ['f']
CALL R15 0 -1
CALL R14 -1 1
GETGLOBAL R15 K95 ['ret2']
GETGLOBAL R16 K14 ['f']
CALL R16 0 -1
CALL R15 -1 -1
CALL R13 -1 -1
CALL R12 -1 4
MOVE R8 R12
MOVE R9 R13
MOVE R10 R14
MOVE R11 R15
REMARK builtin assert/1
  209: assert(a==1 and b==1 and c==2 and d==nil)
LOADB R13 0
JUMPXEQKN R8 K52 L122 NOT [1]
LOADB R13 0
JUMPXEQKN R9 K52 L122 NOT [1]
LOADB R13 0
JUMPXEQKN R10 K53 L122 NOT [2]
JUMPXEQKNIL R11 L121
LOADB R13 0 +1
L121: LOADB R13 1
L122: FASTCALL1 1 R13 L123
GETIMPORT R12 7 [assert]
CALL R12 1 0
  210: a,b,c,d = unlpack(pack(ret2(f()), (ret2(f()))))
L123: GETGLOBAL R12 K90 ['unlpack']
MOVE R13 R0
GETGLOBAL R14 K95 ['ret2']
GETGLOBAL R15 K14 ['f']
CALL R15 0 -1
CALL R14 -1 1
GETGLOBAL R15 K95 ['ret2']
GETGLOBAL R16 K14 ['f']
CALL R16 0 -1
CALL R15 -1 1
CALL R13 2 -1
CALL R12 -1 4
MOVE R8 R12
MOVE R9 R13
MOVE R10 R14
MOVE R11 R15
REMARK builtin assert/1
  211: assert(a==1 and b==1 and c==nil and d==nil)
LOADB R13 0
JUMPXEQKN R8 K52 L125 NOT [1]
LOADB R13 0
JUMPXEQKN R9 K52 L125 NOT [1]
LOADB R13 0
JUMPXEQKNIL R10 L125 NOT
JUMPXEQKNIL R11 L124
LOADB R13 0 +1
L124: LOADB R13 1
L125: FASTCALL1 1 R13 L126
GETIMPORT R12 7 [assert]
CALL R12 1 0
  213: a = ret2{ unlpack{1,2,3}, unlpack{3,2,1}, unlpack{"a", "b"}}
L126: GETGLOBAL R12 K95 ['ret2']
REMARK allocation: table array 3
NEWTABLE R13 0 3
GETGLOBAL R14 K90 ['unlpack']
REMARK allocation: table array 3
NEWTABLE R15 0 3
LOADN R16 1
LOADN R17 2
LOADN R18 3
SETLIST R15 R16 3 [1]
CALL R14 1 1
GETGLOBAL R15 K90 ['unlpack']
REMARK allocation: table array 3
NEWTABLE R16 0 3
LOADN R17 3
LOADN R18 2
LOADN R19 1
SETLIST R16 R17 3 [1]
CALL R15 1 1
GETGLOBAL R16 K90 ['unlpack']
REMARK allocation: table array 2
NEWTABLE R17 0 2
LOADK R18 K25 ['a']
LOADK R19 K39 ['b']
SETLIST R17 R18 2 [1]
CALL R16 1 -1
SETLIST R13 R14 -1 [1]
CALL R12 1 1
MOVE R8 R12
REMARK builtin assert/1
  214: assert(a[1] == 1 and a[2] == 3 and a[3] == "a" and a[4] == "b")
LOADB R13 0
GETTABLEN R14 R8 1
JUMPXEQKN R14 K52 L128 NOT [1]
LOADB R13 0
GETTABLEN R14 R8 2
JUMPXEQKN R14 K54 L128 NOT [3]
LOADB R13 0
GETTABLEN R14 R8 3
JUMPXEQKS R14 K25 L128 NOT ['a']
GETTABLEN R14 R8 4
JUMPXEQKS R14 K39 L127 ['b']
LOADB R13 0 +1
L127: LOADB R13 1
L128: FASTCALL1 1 R13 L129
GETIMPORT R12 7 [assert]
CALL R12 1 0
REMARK builtin rawget/3
REMARK allocation: table hash 0
  218: rawget({}, "x", 1)
L129: NEWTABLE R13 0 0
LOADK R14 K10 ['x']
LOADN R15 1
FASTCALL 50 L130
GETIMPORT R12 98 [rawget]
CALL R12 3 0
REMARK builtin rawset/4
REMARK allocation: table hash 0
  219: rawset({}, "x", 1, 2)
L130: NEWTABLE R13 0 0
LOADK R14 K10 ['x']
LOADN R15 1
LOADN R16 2
FASTCALL 49 L131
GETIMPORT R12 100 [rawset]
CALL R12 4 0
REMARK builtin assert/1
REMARK builtin math.sin/2
  220: assert(math.sin(1,2) == math.sin(1))
L131: LOADN R15 1
FASTCALL2K 24 R15 K53 L132 [2]
LOADK R16 K53 [2]
GETIMPORT R14 103 [math.sin]
CALL R14 2 1
REMARK builtin math.sin/1
L132: LOADN R16 1
FASTCALL1 24 R16 L133
GETIMPORT R15 103 [math.sin]
CALL R15 1 1
L133: JUMPIFEQ R14 R15 L134
LOADB R13 0 +1
L134: LOADB R13 1
L135: FASTCALL1 1 R13 L136
GETIMPORT R12 7 [assert]
CALL R12 1 0
  221: table.sort({10,9,8,4,19,23,0,0}, function (a,b) return a<b end, "extra arg")
L136: GETIMPORT R12 105 [table.sort]
REMARK allocation: table array 8
NEWTABLE R13 0 8
LOADN R14 10
LOADN R15 9
LOADN R16 8
LOADN R17 4
LOADN R18 19
LOADN R19 23
LOADN R20 0
LOADN R21 0
SETLIST R13 R14 8 [1]
DUPCLOSURE R14 K106 []
LOADK R15 K107 ['extra arg']
CALL R12 3 0
REMARK builtin assert/1
  225: assert((function () return nil end)(4) == nil)
DUPCLOSURE R14 K108 []
LOADN R15 4
CALL R14 1 1
JUMPXEQKNIL R14 L137
LOADB R13 0 +1
L137: LOADB R13 1
L138: FASTCALL1 1 R13 L139
GETIMPORT R12 7 [assert]
CALL R12 1 0
REMARK builtin assert/1
  226: assert((function () local a; return a end)(4) == nil)
L139: DUPCLOSURE R14 K109 []
LOADN R15 4
CALL R14 1 1
JUMPXEQKNIL R14 L140
LOADB R13 0 +1
L140: LOADB R13 1
L141: FASTCALL1 1 R13 L142
GETIMPORT R12 7 [assert]
CALL R12 1 0
REMARK builtin assert/1
  227: assert((function (a) return a end)() == nil)
L142: DUPCLOSURE R14 K110 []
CALL R14 0 1
JUMPXEQKNIL R14 L143
LOADB R13 0 +1
L143: LOADB R13 1
L144: FASTCALL1 1 R13 L145
GETIMPORT R12 7 [assert]
CALL R12 1 0
  229: print('OK')
L145: GETIMPORT R12 1 [print]
LOADK R13 K111 ['OK']
CALL R12 1 0
  230: 
CLOSEUPVALS R2
RETURN R0 0

]]
end