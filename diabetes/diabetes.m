function varargout = diabetes(varargin)
% DIABETES MATLAB code for diabetes.fig
%      DIABETES, by itself, creates a new DIABETES or raises the existing
%      singleton*.
%
%      H = DIABETES returns the handle to a new DIABETES or the handle to
%      the existing singleton*.
%
%      DIABETES('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DIABETES.M with the given input arguments.
%
%      DIABETES('Property','Value',...) creates a new DIABETES or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before diabetes_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to diabetes_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help diabetes

% Last Modified by GUIDE v2.5 16-May-2022 09:54:08

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @diabetes_OpeningFcn, ...
                   'gui_OutputFcn',  @diabetes_OutputFcn, ...
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


% --- Executes just before diabetes is made visible.
function diabetes_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to diabetes (see VARARGIN)

% Choose default command line output for diabetes
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes diabetes wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = diabetes_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in showdata.
function showdata_Callback(hObject, eventdata, handles)
% hObject    handle to showdata (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
opts = detectImportOptions('diabetes.csv');
opts.SelectedVariableNames = (1:8);
data = readmatrix('diabetes.csv', opts);
set(handles.uitable1, 'data', data);


% --- Executes on button press in hidedata.
function hidedata_Callback(hObject, eventdata, handles)
% hObject    handle to hidedata (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.uitable1,'data','');


function jk_Callback(hObject, eventdata, handles)
% hObject    handle to jk (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of jk as text
%        str2double(get(hObject,'String')) returns contents of jk as a double


% --- Executes during object creation, after setting all properties.
function jk_CreateFcn(hObject, eventdata, handles)
% hObject    handle to jk (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pg_Callback(hObject, eventdata, handles)
% hObject    handle to pg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pg as text
%        str2double(get(hObject,'String')) returns contents of pg as a double


% --- Executes during object creation, after setting all properties.
function pg_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function td_Callback(hObject, eventdata, handles)
% hObject    handle to td (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of td as text
%        str2double(get(hObject,'String')) returns contents of td as a double


% --- Executes during object creation, after setting all properties.
function td_CreateFcn(hObject, eventdata, handles)
% hObject    handle to td (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tk_Callback(hObject, eventdata, handles)
% hObject    handle to tk (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tk as text
%        str2double(get(hObject,'String')) returns contents of tk as a double


% --- Executes during object creation, after setting all properties.
function tk_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tk (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function insl_Callback(hObject, eventdata, handles)
% hObject    handle to insl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of insl as text
%        str2double(get(hObject,'String')) returns contents of insl as a double


% --- Executes during object creation, after setting all properties.
function insl_CreateFcn(hObject, eventdata, handles)
% hObject    handle to insl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bmi_Callback(hObject, eventdata, handles)
% hObject    handle to bmi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bmi as text
%        str2double(get(hObject,'String')) returns contents of bmi as a double


% --- Executes during object creation, after setting all properties.
function bmi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bmi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ss_Callback(hObject, eventdata, handles)
% hObject    handle to ss (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ss as text
%        str2double(get(hObject,'String')) returns contents of ss as a double


% --- Executes during object creation, after setting all properties.
function ss_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ss (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function umur_Callback(hObject, eventdata, handles)
% hObject    handle to umur (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of umur as text
%        str2double(get(hObject,'String')) returns contents of umur as a double


% --- Executes during object creation, after setting all properties.
function umur_CreateFcn(hObject, eventdata, handles)
% hObject    handle to umur (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function hasil_Callback(hObject, eventdata, handles)
% hObject    handle to hasil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hasil as text
%        str2double(get(hObject,'String')) returns contents of hasil as a double


% --- Executes during object creation, after setting all properties.
function hasil_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hasil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in reset.
function reset_Callback(hObject, eventdata, handles)
% hObject    handle to reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.jk,'str','');
set(handles.pg,'str','');
set(handles.td,'str','');
set(handles.tk,'str','');
set(handles.insl,'str','');
set(handles.bmi,'str','');
set(handles.ss,'str','');
set(handles.umur,'str','');
set(handles.hasil,'str','');

% --- Executes on button press in deteksi.
function deteksi_Callback(hObject, eventdata, handles)
% hObject    handle to deteksi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

jk = get(handles.jk,'String');
pg = get(handles.pg,'String');
td = get(handles.td,'String');
tk = get(handles.tk,'String');
insl = get(handles.insl,'String');
bmi = get(handles.bmi,'String');
ss = get(handles.ss,'String');
umur = get(handles.umur,'String');

kosong = 0;
huruf = 0;

if isempty(jk) || isempty(pg) || isempty(td) || isempty(tk) || isempty(insl) || isempty(bmi) || isempty(ss) || isempty(umur)
    f = msgbox('Terdapat kolom yang kosong', 'Error','error');
    set(handles.hasil, 'String', '');
    kosong = 1;
end

if kosong == 0
    jk = str2double(jk);
    pg = str2double(pg);
    td = str2double(td);
    tk = str2double(tk);
    insl = str2double(insl);
    bmi = str2double(bmi);
    ss = str2double(ss);
    umur = str2double(umur);
    
    if isnan(jk) || isnan(pg) || isnan(td) || isnan(tk) || isnan(insl) || isnan(bmi) || isnan(ss) || isnan(umur)
        f = msgbox('Terdapat kolom yang berisi selain angka', 'Error','error');
        set(handles.hasil, 'String', '');
    else
        sample = [jk pg td tk insl bmi ss umur];

        opts = detectImportOptions('diabetes.csv');
        opts.SelectedVariableNames = (1:8);
        training = readmatrix('diabetes.csv', opts);

        opts = detectImportOptions('diabetes.csv');
        opts.SelectedVariableNames = (9);
        group = readmatrix('diabetes.csv', opts);

        class = fitcknn(training, group, 'NumNeighbors', 3);
        klasifikasi = predict(class, sample);

        if klasifikasi==1
            result= "Diabetes";
        end
        if klasifikasi==0
            result= "Non Diabetes";
        end
        
        set(handles.hasil, 'String', result);
    end
end

