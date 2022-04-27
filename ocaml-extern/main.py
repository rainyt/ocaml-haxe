import sys

import math as python_lib_Math
import math as Math
import builtins as python_lib_Builtins
import re as python_lib_Re
from io import StringIO as python_lib_io_StringIO


class _hx_AnonObject:
    _hx_disable_getattr = False
    def __init__(self, fields):
        self.__dict__ = fields
    def __repr__(self):
        return repr(self.__dict__)
    def __contains__(self, item):
        return item in self.__dict__
    def __getitem__(self, item):
        return self.__dict__[item]
    def __getattr__(self, name):
        if (self._hx_disable_getattr):
            raise AttributeError('field does not exist')
        else:
            return None
    def _hx_hasattr(self,field):
        self._hx_disable_getattr = True
        try:
            getattr(self, field)
            self._hx_disable_getattr = False
            return True
        except AttributeError:
            self._hx_disable_getattr = False
            return False



class Enum:
    _hx_class_name = "Enum"
    __slots__ = ("tag", "index", "params")
    _hx_fields = ["tag", "index", "params"]
    _hx_methods = ["__str__"]

    def __init__(self,tag,index,params):
        self.tag = tag
        self.index = index
        self.params = params

    def __str__(self):
        if (self.params is None):
            return self.tag
        else:
            return self.tag + '(' + (', '.join(str(v) for v in self.params)) + ')'



class EReg:
    _hx_class_name = "EReg"
    __slots__ = ("pattern", "matchObj", "_hx_global")
    _hx_fields = ["pattern", "matchObj", "global"]
    _hx_methods = ["replace", "map"]

    def __init__(self,r,opt):
        self.matchObj = None
        self._hx_global = False
        options = 0
        _g = 0
        _g1 = len(opt)
        while (_g < _g1):
            i = _g
            _g = (_g + 1)
            c = (-1 if ((i >= len(opt))) else ord(opt[i]))
            if (c == 109):
                options = (options | python_lib_Re.M)
            if (c == 105):
                options = (options | python_lib_Re.I)
            if (c == 115):
                options = (options | python_lib_Re.S)
            if (c == 117):
                options = (options | python_lib_Re.U)
            if (c == 103):
                self._hx_global = True
        self.pattern = python_lib_Re.compile(r,options)

    def replace(self,s,by):
        _this = by.split("$$")
        by = "_hx_#repl#__".join([python_Boot.toString1(x1,'') for x1 in _this])
        def _hx_local_0(x):
            res = by
            g = x.groups()
            _g = 0
            _g1 = len(g)
            while (_g < _g1):
                i = _g
                _g = (_g + 1)
                gs = g[i]
                if (gs is None):
                    continue
                delimiter = ("$" + HxOverrides.stringOrNull(str((i + 1))))
                _this = (list(res) if ((delimiter == "")) else res.split(delimiter))
                res = gs.join([python_Boot.toString1(x1,'') for x1 in _this])
            _this = res.split("_hx_#repl#__")
            res = "$".join([python_Boot.toString1(x1,'') for x1 in _this])
            return res
        replace = _hx_local_0
        return python_lib_Re.sub(self.pattern,replace,s,(0 if (self._hx_global) else 1))

    def map(self,s,f):
        buf_b = python_lib_io_StringIO()
        pos = 0
        right = s
        cur = self
        while (pos < len(s)):
            if (self.matchObj is None):
                self.matchObj = python_lib_Re.search(self.pattern,s)
            else:
                self.matchObj = self.matchObj.re.search(s,pos)
            if (self.matchObj is None):
                break
            pos1 = self.matchObj.end()
            curPos_pos = cur.matchObj.start()
            curPos_len = (cur.matchObj.end() - cur.matchObj.start())
            buf_b.write(Std.string(HxString.substr(HxString.substr(cur.matchObj.string,0,cur.matchObj.start()),pos,None)))
            buf_b.write(Std.string(f(cur)))
            right = HxString.substr(cur.matchObj.string,cur.matchObj.end(),None)
            if (not self._hx_global):
                buf_b.write(Std.string(right))
                return buf_b.getvalue()
            if (curPos_len == 0):
                buf_b.write(Std.string(("" if (((pos1 < 0) or ((pos1 >= len(s))))) else s[pos1])))
                right = HxString.substr(right,1,None)
                pos = (pos1 + 1)
            else:
                pos = pos1
        buf_b.write(Std.string(right))
        return buf_b.getvalue()



class ExternHaxe:
    _hx_class_name = "ExternHaxe"
    __slots__ = ("code", "exceptions", "index")
    _hx_fields = ["code", "exceptions", "index"]
    _hx_methods = ["write", "writeHead", "putHead", "toExceptionMate"]

    def __init__(self):
        self.index = 0
        self.exceptions = []
        self.code = ""

    def write(self,code):
        _hx_local_0 = self
        _hx_local_1 = _hx_local_0.code
        _hx_local_0.code = (("null" if _hx_local_1 is None else _hx_local_1) + ("null" if code is None else code))
        _hx_local_0.code

    def writeHead(self,code):
        self.code = (("null" if code is None else code) + HxOverrides.stringOrNull(self.code))
        self.index = len(code)

    def putHead(self,code):
        start = HxString.substr(self.code,0,self.index)
        end = HxString.substr(self.code,self.index,None)
        self.code = ((("null" if start is None else start) + ("null" if code is None else code)) + ("null" if end is None else end))
        _hx_local_0 = self
        _hx_local_1 = _hx_local_0.index
        _hx_local_0.index = (_hx_local_1 + len(code))
        _hx_local_0.index

    def toExceptionMate(self):
        c = ""
        _g_current = 0
        _g_array = self.exceptions
        while (_g_current < len(_g_array)):
            _g1_value = (_g_array[_g_current] if _g_current >= 0 and _g_current < len(_g_array) else None)
            _g1_key = _g_current
            _g_current = (_g_current + 1)
            i = _g1_key
            s = _g1_value
            s = StringTools.replace(s,"\n","")
            s = (("@:exceptions(\"" + ("null" if s is None else s)) + "\")")
            python_internal_ArrayImpl._set(self.exceptions, i, s)
        _this = self.exceptions
        return "\n".join([python_Boot.toString1(x1,'') for x1 in _this])



class Main:
    _hx_class_name = "Main"
    __slots__ = ()
    _hx_statics = ["main"]

    @staticmethod
    def main():
        OCamlExternToolsv2.externMLI("unix.mli")


class OCamlExternToolsv2:
    _hx_class_name = "OCamlExternToolsv2"
    __slots__ = ()
    _hx_statics = ["externMLI"]

    @staticmethod
    def externMLI(ocamlFile):
        haxeCode = ExternHaxe()
        className = StringTools.replace(ocamlFile,".mli","")
        className = (HxOverrides.stringOrNull(("" if ((0 >= len(className))) else className[0]).upper()) + HxOverrides.stringOrNull(HxString.substr(className,1,None)))
        haxeCode.write("@:exceptions\n")
        haxeCode.write((("extern class " + ("null" if className is None else className)) + "{\n"))
        content = sys_io_File.getContent(("ocaml/" + ("null" if ocamlFile is None else ocamlFile)))
        descReq = EReg("\\(\\*(.|\n)*?\\*\\)","g")
        content = descReq.replace(content,"")
        spaces = content.split("\n")
        newcontent = []
        coreReq = EReg("^type [\\w]*|^exception [\\w]*|^val [\\w]*|^module [\\w]*","")
        parser = None
        isModule = False
        _g = 0
        while (_g < len(spaces)):
            s = (spaces[_g] if _g >= 0 and _g < len(spaces) else None)
            _g = (_g + 1)
            if (s != ""):
                if isModule:
                    if (OCamlTools.toParamName(s) == "end"):
                        isModule = False
                    else:
                        continue
                newcontent.append(s)
                coreReq.matchObj = python_lib_Re.search(coreReq.pattern,s)
                if (coreReq.matchObj is not None):
                    if (parser is not None):
                        parser.writeToHaxeCode(haxeCode)
                    parser = OCamlParser()
                    parser.write((("null" if s is None else s) + "\n"))
                    startIndex = None
                    if (-1 != ((s.find("module") if ((startIndex is None)) else HxString.indexOfImpl(s,"module",startIndex)))):
                        print("isModule = true")
                        isModule = True
                elif (parser is not None):
                    parser.write((("null" if s is None else s) + "\n"))
        haxeCode.write("}")
        haxeCode.code = StringTools.replace(haxeCode.code,"@:exceptions",haxeCode.toExceptionMate())
        content = "\n".join([python_Boot.toString1(x1,'') for x1 in newcontent])
        sys_io_File.saveContent("test.ml",content)
        sys_io_File.saveContent((("extern/" + ("null" if className is None else className)) + ".hx"),haxeCode.code)


class OCamlParser:
    _hx_class_name = "OCamlParser"
    __slots__ = ("req", "enumsReq", "paramReq", "code")
    _hx_fields = ["req", "enumsReq", "paramReq", "code"]
    _hx_methods = ["write", "writeToHaxeCode", "toFunction", "toParams", "toEnums", "toClassName"]

    def __init__(self):
        self.code = ""
        self.paramReq = EReg("[a-zA-Z0-9_]{1,}( *: *)[a-zA-Z0-9_]{1,}","g")
        self.enumsReq = EReg("[A-Z0-9_]{1,}{1,}","g")
        self.req = EReg("[a-zA-Z0-9_]{1,}","")

    def write(self,code):
        _hx_local_0 = self
        _hx_local_1 = _hx_local_0.code
        _hx_local_0.code = (("null" if _hx_local_1 is None else _hx_local_1) + ("null" if code is None else code))
        _hx_local_0.code

    def writeToHaxeCode(self,haxeCode):
        if (self.toClassName() == "Interval_timer_status"):
            print(str(self.code))
        _this = self.code
        startIndex = None
        _hx_type = HxString.substr(self.code,0,(_this.find(" ") if ((startIndex is None)) else HxString.indexOfImpl(_this," ",startIndex)))
        haxeCode.write((("// Parser " + ("null" if _hx_type is None else _hx_type)) + "\n"))
        type1 = _hx_type
        _hx_local_0 = len(type1)
        if (_hx_local_0 == 9):
            if (type1 == "exception"):
                _this = haxeCode.exceptions
                x = self.code
                _this.append(x)
            else:
                haxeCode.write((HxOverrides.stringOrNull(self.code) + "\n"))
        elif (_hx_local_0 == 4):
            if (type1 == "type"):
                _this = self.code
                startIndex = None
                if (((_this.find("=") if ((startIndex is None)) else HxString.indexOfImpl(_this,"=",startIndex))) == -1):
                    haxeCode.writeHead((("extern class " + HxOverrides.stringOrNull(self.toClassName())) + "{}\n"))
                else:
                    _this = self.code
                    startIndex = None
                    if (((_this.find(":") if ((startIndex is None)) else HxString.indexOfImpl(_this,":",startIndex))) == -1):
                        haxeCode.writeHead((("enum " + HxOverrides.stringOrNull(self.toClassName())) + " {\n"))
                        es = self.toEnums()
                        haxeCode.putHead((HxOverrides.stringOrNull("\n".join([python_Boot.toString1(x1,'') for x1 in es])) + "\n"))
                        haxeCode.putHead("}\n")
                    else:
                        _this = self.code
                        startIndex = None
                        if (((_this.find(":") if ((startIndex is None)) else HxString.indexOfImpl(_this,":",startIndex))) != -1):
                            haxeCode.putHead((("extern class " + HxOverrides.stringOrNull(self.toClassName())) + "{\n"))
                            array = self.toParams()
                            _g = 0
                            while (_g < len(array)):
                                item = (array[_g] if _g >= 0 and _g < len(array) else None)
                                _g = (_g + 1)
                                haxeCode.putHead((((("public var " + HxOverrides.stringOrNull(item.name)) + ":") + HxOverrides.stringOrNull(OCamlTools.toUpClassName(item.type))) + ";\n"))
                            haxeCode.putHead("}\n")
                        else:
                            haxeCode.writeHead("/*\n")
                            haxeCode.putHead((HxOverrides.stringOrNull(self.code) + "\n"))
                            haxeCode.putHead("*/\n")
            else:
                haxeCode.write((HxOverrides.stringOrNull(self.code) + "\n"))
        elif (_hx_local_0 == 3):
            if (type1 == "val"):
                haxeCode.write((HxOverrides.stringOrNull(self.toFunction()) + "\n"))
            else:
                haxeCode.write((HxOverrides.stringOrNull(self.code) + "\n"))
        elif (_hx_local_0 == 6):
            if (type1 == "module"):
                pass
            else:
                haxeCode.write((HxOverrides.stringOrNull(self.code) + "\n"))
        else:
            haxeCode.write((HxOverrides.stringOrNull(self.code) + "\n"))

    def toFunction(self):
        c = self.code
        c = StringTools.replace(c,"val","public static function")
        args = c.split(":")
        c = (args[0] if 0 < len(args) else None)
        _this = (args[1] if 1 < len(args) else None)
        prams = _this.split("->")
        if (OCamlTools.toUpClassName((prams[0] if 0 < len(prams) else None)) == "Void"):
            c = StringTools.replace(c,"function","var")
            c = (("null" if c is None else c) + HxOverrides.stringOrNull(((":" + HxOverrides.stringOrNull(OCamlTools.toUpClassName((prams[1] if 1 < len(prams) else None)))))))
        else:
            c = (("null" if c is None else c) + "(")
            plist = []
            retType = "Void"
            _g_current = 0
            _g_array = prams
            while (_g_current < len(_g_array)):
                _g1_value = (_g_array[_g_current] if _g_current >= 0 and _g_current < len(_g_array) else None)
                _g1_key = _g_current
                _g_current = (_g_current + 1)
                index = _g1_key
                p = _g1_value
                if (index != ((len(prams) - 1))):
                    x = ((("a" + Std.string(index)) + ":") + HxOverrides.stringOrNull(OCamlTools.toUpClassName(p)))
                    plist.append(x)
                else:
                    retType = OCamlTools.toUpClassName(p)
            c = (("null" if c is None else c) + HxOverrides.stringOrNull(",".join([python_Boot.toString1(x1,'') for x1 in plist])))
            c = (("null" if c is None else c) + HxOverrides.stringOrNull((("):" + ("null" if retType is None else retType)))))
        return (("null" if c is None else c) + ";")

    def toParams(self):
        array = []
        _this = self.code
        startIndex = None
        newCode = HxString.substr(self.code,(((_this.find("=") if ((startIndex is None)) else HxString.indexOfImpl(_this,"=",startIndex))) + 1),None)
        def _hx_local_0(data):
            value = data.matchObj.group(0)
            arr = value.split(":")
            x = _hx_AnonObject({'name': OCamlTools.toParamName((arr[0] if 0 < len(arr) else None)), 'type': OCamlTools.toUpClassName((arr[1] if 1 < len(arr) else None))})
            array.append(x)
            return value
        self.paramReq.map(newCode,_hx_local_0)
        return array

    def toEnums(self):
        _this = self.code
        startIndex = None
        newCode = HxString.substr(self.code,(((_this.find("=") if ((startIndex is None)) else HxString.indexOfImpl(_this,"=",startIndex))) + 1),None)
        startIndex = None
        if (((newCode.find("of") if ((startIndex is None)) else HxString.indexOfImpl(newCode,"of",startIndex))) != -1):
            startIndex = None
            _hx_len = None
            if (startIndex is None):
                _hx_len = newCode.rfind("of", 0, len(newCode))
            else:
                i = newCode.rfind("of", 0, (startIndex + 1))
                startLeft = (max(0,((startIndex + 1) - len("of"))) if ((i == -1)) else (i + 1))
                check = newCode.find("of", startLeft, len(newCode))
                _hx_len = (check if (((check > i) and ((check <= startIndex)))) else i)
            newCode = HxString.substr(newCode,0,_hx_len)
        array = []
        def _hx_local_0(data):
            value = data.matchObj.group(0)
            array.append((("null" if value is None else value) + ";"))
            return value
        self.enumsReq.map(newCode,_hx_local_0)
        return array

    def toClassName(self):
        _this = self.code
        startIndex = None
        cName = HxString.substr(self.code,(((_this.find(" ") if ((startIndex is None)) else HxString.indexOfImpl(_this," ",startIndex))) + 1),None)
        _this = self.req
        _this.matchObj = python_lib_Re.search(_this.pattern,cName)
        if (_this.matchObj is not None):
            return OCamlTools.toUpClassName(self.req.matchObj.group(0))
        return cName



class OCamlTools:
    _hx_class_name = "OCamlTools"
    __slots__ = ()
    _hx_statics = ["toParamName", "toUpClassName"]

    @staticmethod
    def toParamName(code):
        code = StringTools.replace(code,"\n","")
        return StringTools.replace(code," ","")

    @staticmethod
    def toUpClassName(code):
        code = OCamlTools.toParamName(code)
        code = (HxOverrides.stringOrNull(("" if ((0 >= len(code))) else code[0]).upper()) + HxOverrides.stringOrNull(HxString.substr(code,1,None)))
        tmp = None
        tmp1 = None
        startIndex = None
        if (((code.find("?") if ((startIndex is None)) else HxString.indexOfImpl(code,"?",startIndex))) == -1):
            startIndex = None
            tmp1 = (((code.find("(") if ((startIndex is None)) else HxString.indexOfImpl(code,"(",startIndex))) != -1)
        else:
            tmp1 = True
        if (not tmp1):
            startIndex = None
            tmp = (((code.find(")") if ((startIndex is None)) else HxString.indexOfImpl(code,")",startIndex))) != -1)
        else:
            tmp = True
        if tmp:
            return "Dynamic"
        else:
            startIndex = None
            if (((code.find("*") if ((startIndex is None)) else HxString.indexOfImpl(code,"*",startIndex))) != -1):
                return "Dynamic"
            else:
                startIndex = None
                if (((code.find("'") if ((startIndex is None)) else HxString.indexOfImpl(code,"'",startIndex))) != -1):
                    return "Dynamic"
        if (code == "Unit"):
            return "Void"
        startIndex = None
        if (((code.find("list") if ((startIndex is None)) else HxString.indexOfImpl(code,"list",startIndex))) != -1):
            return (("Array<" + HxOverrides.stringOrNull(StringTools.replace(code,"list",""))) + ">")
        startIndex = None
        if (((code.find("array") if ((startIndex is None)) else HxString.indexOfImpl(code,"array",startIndex))) != -1):
            return (("OCamlArray<" + HxOverrides.stringOrNull(StringTools.replace(code,"array",""))) + ">")
        return code


class Std:
    _hx_class_name = "Std"
    __slots__ = ()
    _hx_statics = ["string"]

    @staticmethod
    def string(s):
        return python_Boot.toString1(s,"")


class StringTools:
    _hx_class_name = "StringTools"
    __slots__ = ()
    _hx_statics = ["replace"]

    @staticmethod
    def replace(s,sub,by):
        _this = (list(s) if ((sub == "")) else s.split(sub))
        return by.join([python_Boot.toString1(x1,'') for x1 in _this])


class haxe_iterators_ArrayIterator:
    _hx_class_name = "haxe.iterators.ArrayIterator"
    __slots__ = ("array", "current")
    _hx_fields = ["array", "current"]
    _hx_methods = ["hasNext", "next"]

    def __init__(self,array):
        self.current = 0
        self.array = array

    def hasNext(self):
        return (self.current < len(self.array))

    def next(self):
        def _hx_local_3():
            def _hx_local_2():
                _hx_local_0 = self
                _hx_local_1 = _hx_local_0.current
                _hx_local_0.current = (_hx_local_1 + 1)
                return _hx_local_1
            return python_internal_ArrayImpl._get(self.array, _hx_local_2())
        return _hx_local_3()



class python_Boot:
    _hx_class_name = "python.Boot"
    __slots__ = ()
    _hx_statics = ["keywords", "toString1", "fields", "simpleField", "getInstanceFields", "getSuperClass", "getClassFields", "prefixLength", "unhandleKeywords"]

    @staticmethod
    def toString1(o,s):
        if (o is None):
            return "null"
        if isinstance(o,str):
            return o
        if (s is None):
            s = ""
        if (len(s) >= 5):
            return "<...>"
        if isinstance(o,bool):
            if o:
                return "true"
            else:
                return "false"
        if (isinstance(o,int) and (not isinstance(o,bool))):
            return str(o)
        if isinstance(o,float):
            try:
                if (o == int(o)):
                    return str(Math.floor((o + 0.5)))
                else:
                    return str(o)
            except BaseException as _g:
                return str(o)
        if isinstance(o,list):
            o1 = o
            l = len(o1)
            st = "["
            s = (("null" if s is None else s) + "\t")
            _g = 0
            _g1 = l
            while (_g < _g1):
                i = _g
                _g = (_g + 1)
                prefix = ""
                if (i > 0):
                    prefix = ","
                st = (("null" if st is None else st) + HxOverrides.stringOrNull(((("null" if prefix is None else prefix) + HxOverrides.stringOrNull(python_Boot.toString1((o1[i] if i >= 0 and i < len(o1) else None),s))))))
            st = (("null" if st is None else st) + "]")
            return st
        try:
            if hasattr(o,"toString"):
                return o.toString()
        except BaseException as _g:
            pass
        if hasattr(o,"__class__"):
            if isinstance(o,_hx_AnonObject):
                toStr = None
                try:
                    fields = python_Boot.fields(o)
                    _g = []
                    _g1 = 0
                    while (_g1 < len(fields)):
                        f = (fields[_g1] if _g1 >= 0 and _g1 < len(fields) else None)
                        _g1 = (_g1 + 1)
                        x = ((("" + ("null" if f is None else f)) + " : ") + HxOverrides.stringOrNull(python_Boot.toString1(python_Boot.simpleField(o,f),(("null" if s is None else s) + "\t"))))
                        _g.append(x)
                    fieldsStr = _g
                    toStr = (("{ " + HxOverrides.stringOrNull(", ".join([x1 for x1 in fieldsStr]))) + " }")
                except BaseException as _g:
                    return "{ ... }"
                if (toStr is None):
                    return "{ ... }"
                else:
                    return toStr
            if isinstance(o,Enum):
                o1 = o
                l = len(o1.params)
                hasParams = (l > 0)
                if hasParams:
                    paramsStr = ""
                    _g = 0
                    _g1 = l
                    while (_g < _g1):
                        i = _g
                        _g = (_g + 1)
                        prefix = ""
                        if (i > 0):
                            prefix = ","
                        paramsStr = (("null" if paramsStr is None else paramsStr) + HxOverrides.stringOrNull(((("null" if prefix is None else prefix) + HxOverrides.stringOrNull(python_Boot.toString1(o1.params[i],s))))))
                    return (((HxOverrides.stringOrNull(o1.tag) + "(") + ("null" if paramsStr is None else paramsStr)) + ")")
                else:
                    return o1.tag
            if hasattr(o,"_hx_class_name"):
                if (o.__class__.__name__ != "type"):
                    fields = python_Boot.getInstanceFields(o)
                    _g = []
                    _g1 = 0
                    while (_g1 < len(fields)):
                        f = (fields[_g1] if _g1 >= 0 and _g1 < len(fields) else None)
                        _g1 = (_g1 + 1)
                        x = ((("" + ("null" if f is None else f)) + " : ") + HxOverrides.stringOrNull(python_Boot.toString1(python_Boot.simpleField(o,f),(("null" if s is None else s) + "\t"))))
                        _g.append(x)
                    fieldsStr = _g
                    toStr = (((HxOverrides.stringOrNull(o._hx_class_name) + "( ") + HxOverrides.stringOrNull(", ".join([x1 for x1 in fieldsStr]))) + " )")
                    return toStr
                else:
                    fields = python_Boot.getClassFields(o)
                    _g = []
                    _g1 = 0
                    while (_g1 < len(fields)):
                        f = (fields[_g1] if _g1 >= 0 and _g1 < len(fields) else None)
                        _g1 = (_g1 + 1)
                        x = ((("" + ("null" if f is None else f)) + " : ") + HxOverrides.stringOrNull(python_Boot.toString1(python_Boot.simpleField(o,f),(("null" if s is None else s) + "\t"))))
                        _g.append(x)
                    fieldsStr = _g
                    toStr = (((("#" + HxOverrides.stringOrNull(o._hx_class_name)) + "( ") + HxOverrides.stringOrNull(", ".join([x1 for x1 in fieldsStr]))) + " )")
                    return toStr
            if ((type(o) == type) and (o == str)):
                return "#String"
            if ((type(o) == type) and (o == list)):
                return "#Array"
            if callable(o):
                return "function"
            try:
                if hasattr(o,"__repr__"):
                    return o.__repr__()
            except BaseException as _g:
                pass
            if hasattr(o,"__str__"):
                return o.__str__([])
            if hasattr(o,"__name__"):
                return o.__name__
            return "???"
        else:
            return str(o)

    @staticmethod
    def fields(o):
        a = []
        if (o is not None):
            if hasattr(o,"_hx_fields"):
                fields = o._hx_fields
                if (fields is not None):
                    return list(fields)
            if isinstance(o,_hx_AnonObject):
                d = o.__dict__
                keys = d.keys()
                handler = python_Boot.unhandleKeywords
                for k in keys:
                    if (k != '_hx_disable_getattr'):
                        a.append(handler(k))
            elif hasattr(o,"__dict__"):
                d = o.__dict__
                keys1 = d.keys()
                for k in keys1:
                    a.append(k)
        return a

    @staticmethod
    def simpleField(o,field):
        if (field is None):
            return None
        field1 = (("_hx_" + field) if ((field in python_Boot.keywords)) else (("_hx_" + field) if (((((len(field) > 2) and ((ord(field[0]) == 95))) and ((ord(field[1]) == 95))) and ((ord(field[(len(field) - 1)]) != 95)))) else field))
        if hasattr(o,field1):
            return getattr(o,field1)
        else:
            return None

    @staticmethod
    def getInstanceFields(c):
        f = (list(c._hx_fields) if (hasattr(c,"_hx_fields")) else [])
        if hasattr(c,"_hx_methods"):
            f = (f + c._hx_methods)
        sc = python_Boot.getSuperClass(c)
        if (sc is None):
            return f
        else:
            scArr = python_Boot.getInstanceFields(sc)
            scMap = set(scArr)
            _g = 0
            while (_g < len(f)):
                f1 = (f[_g] if _g >= 0 and _g < len(f) else None)
                _g = (_g + 1)
                if (not (f1 in scMap)):
                    scArr.append(f1)
            return scArr

    @staticmethod
    def getSuperClass(c):
        if (c is None):
            return None
        try:
            if hasattr(c,"_hx_super"):
                return c._hx_super
            return None
        except BaseException as _g:
            pass
        return None

    @staticmethod
    def getClassFields(c):
        if hasattr(c,"_hx_statics"):
            x = c._hx_statics
            return list(x)
        else:
            return []

    @staticmethod
    def unhandleKeywords(name):
        if (HxString.substr(name,0,python_Boot.prefixLength) == "_hx_"):
            real = HxString.substr(name,python_Boot.prefixLength,None)
            if (real in python_Boot.keywords):
                return real
        return name


class python_internal_ArrayImpl:
    _hx_class_name = "python.internal.ArrayImpl"
    __slots__ = ()
    _hx_statics = ["_get", "_set"]

    @staticmethod
    def _get(x,idx):
        if ((idx > -1) and ((idx < len(x)))):
            return x[idx]
        else:
            return None

    @staticmethod
    def _set(x,idx,v):
        l = len(x)
        while (l < idx):
            x.append(None)
            l = (l + 1)
        if (l == idx):
            x.append(v)
        else:
            x[idx] = v
        return v


class HxOverrides:
    _hx_class_name = "HxOverrides"
    __slots__ = ()
    _hx_statics = ["eq", "stringOrNull"]

    @staticmethod
    def eq(a,b):
        if (isinstance(a,list) or isinstance(b,list)):
            return a is b
        return (a == b)

    @staticmethod
    def stringOrNull(s):
        if (s is None):
            return "null"
        else:
            return s


class python_internal_MethodClosure:
    _hx_class_name = "python.internal.MethodClosure"
    __slots__ = ("obj", "func")
    _hx_fields = ["obj", "func"]
    _hx_methods = ["__call__"]

    def __init__(self,obj,func):
        self.obj = obj
        self.func = func

    def __call__(self,*args):
        return self.func(self.obj,*args)



class HxString:
    _hx_class_name = "HxString"
    __slots__ = ()
    _hx_statics = ["indexOfImpl", "substr"]

    @staticmethod
    def indexOfImpl(s,_hx_str,startIndex):
        if (_hx_str == ""):
            length = len(s)
            if (startIndex < 0):
                startIndex = (length + startIndex)
                if (startIndex < 0):
                    startIndex = 0
            if (startIndex > length):
                return length
            else:
                return startIndex
        return s.find(_hx_str, startIndex)

    @staticmethod
    def substr(s,startIndex,_hx_len = None):
        if (_hx_len is None):
            return s[startIndex:]
        else:
            if (_hx_len == 0):
                return ""
            if (startIndex < 0):
                startIndex = (len(s) + startIndex)
                if (startIndex < 0):
                    startIndex = 0
            return s[startIndex:(startIndex + _hx_len)]


class sys_io_File:
    _hx_class_name = "sys.io.File"
    __slots__ = ()
    _hx_statics = ["getContent", "saveContent"]

    @staticmethod
    def getContent(path):
        f = python_lib_Builtins.open(path,"r",-1,"utf-8",None,"")
        content = f.read(-1)
        f.close()
        return content

    @staticmethod
    def saveContent(path,content):
        f = python_lib_Builtins.open(path,"w",-1,"utf-8",None,"")
        f.write(content)
        f.close()

Math.NEGATIVE_INFINITY = float("-inf")
Math.POSITIVE_INFINITY = float("inf")
Math.NaN = float("nan")
Math.PI = python_lib_Math.pi

python_Boot.keywords = set(["and", "del", "from", "not", "with", "as", "elif", "global", "or", "yield", "assert", "else", "if", "pass", "None", "break", "except", "import", "raise", "True", "class", "exec", "in", "return", "False", "continue", "finally", "is", "try", "def", "for", "lambda", "while"])
python_Boot.prefixLength = len("_hx_")

Main.main()
