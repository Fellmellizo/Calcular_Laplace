function varargout = calcularlaplace(varargin)
% CALCULARLAPLACE MATLAB code for calcularlaplace.fig
%      CALCULARLAPLACE, by itself, creates a new CALCULARLAPLACE or raises the existing
%      singleton*.
%
%      H = CALCULARLAPLACE returns the handle to a new CALCULARLAPLACE or the handle to
%      the existing singleton*.
%
%      CALCULARLAPLACE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CALCULARLAPLACE.M with the given input arguments.
%
%      CALCULARLAPLACE('Property','Value',...) creates a new CALCULARLAPLACE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before calcularlaplace_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to calcularlaplace_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help calcularlaplace

% Last Modified by GUIDE v2.5 09-Oct-2016 22:23:10

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @calcularlaplace_OpeningFcn, ...
                   'gui_OutputFcn',  @calcularlaplace_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before calcularlaplace is made visible.
function calcularlaplace_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to calcularlaplace (see VARARGIN)

% Choose default command line output for calcularlaplace
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes calcularlaplace wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = calcularlaplace_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function Funcion_introducida_Callback(hObject, eventdata, handles)
% hObject    handle to Funcion_introducida (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Funcion_introducida as text
%        str2double(get(hObject,'String')) returns contents of Funcion_introducida as a double


% --- Executes during object creation, after setting all properties.
function Funcion_introducida_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Funcion_introducida (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Resultado_Callback(hObject, eventdata, handles)
% hObject    handle to Resultado (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Resultado as text
%        str2double(get(hObject,'String')) returns contents of Resultado as a double


% --- Executes during object creation, after setting all properties.
function Resultado_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Resultado (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Calcular.
function Calcular_Callback(hObject, eventdata, handles)
% hObject    handle to Calcular (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

funcion=get(handles.Funcion_introducida, 'String')
syms x s;

laplace_resultado=laplace(funcion, s);

set(handles.Resultado, 'String', char(laplace_resultado))




% --- Executes on button press in Borrar.
function Borrar_Callback(hObject, eventdata, handles)
% hObject    handle to Borrar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.Funcion_introducida, 'String', char())
set(handles.Resultado, 'String', char())

