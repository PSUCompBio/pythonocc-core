/*
Copyright 2008-2017 Thomas Paviot (tpaviot@gmail.com)


This file is part of pythonOCC.
pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

*/
%define APPSTDLDOCSTRING
""
%enddef
%module (package="OCC.Core", docstring=APPSTDLDOCSTRING) AppStdL

#pragma SWIG nowarn=504,325,503

%{
#ifdef WNT
#pragma warning(disable : 4716)
#endif
%}

%include ../common/CommonIncludes.i
%include ../common/ExceptionCatcher.i
%include ../common/FunctionTransformers.i
%include ../common/Operators.i
%include ../common/OccHandle.i


%include AppStdL_headers.i

/* typedefs */
/* end typedefs declaration */

/* public enums */
/* end public enums declaration */

%wrap_handle(AppStdL_Application)

%nodefaultctor AppStdL_Application;
class AppStdL_Application : public TDocStd_Application {
	public:
		%feature("compactdefaultargs") AppStdL_Application;
		%feature("autodoc", "	:rtype: None
") AppStdL_Application;
		 AppStdL_Application ();
		%feature("compactdefaultargs") MessageDriver;
		%feature("autodoc", "	:rtype: Handle_CDM_MessageDriver
") MessageDriver;
		virtual Handle_CDM_MessageDriver MessageDriver ();
		%feature("compactdefaultargs") Formats;
		%feature("autodoc", "	* returns supported format for application documents.

	:param theFormats:
	:type theFormats: TColStd_SequenceOfExtendedString &
	:rtype: void
") Formats;
		virtual void Formats (TColStd_SequenceOfExtendedString & theFormats);
		%feature("compactdefaultargs") ResourcesName;
		%feature("autodoc", "	* returns the file name which contains application resources

	:rtype: char *
") ResourcesName;
		const char * ResourcesName ();
};


%make_alias(AppStdL_Application)

%extend AppStdL_Application {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
