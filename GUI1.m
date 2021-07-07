function varargout = GUI1(varargin)

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI1_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI1_OutputFcn, ...
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


% --- Executes just before zyq is made visible.
function GUI1_OpeningFcn(hObject, eventdata, handles, varargin)

% Choose default command line output for zyq
set(handles.edit1,'string','');
set(handles.edit2,'string','');

handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes zyq wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUI1_OutputFcn(hObject, eventdata, handles) 

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- 表达式框
function edit1_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- 计算结果框
function edit2_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in pushbutton1.按键7
function pushbutton1_Callback(hObject, eventdata, handles)
    textString = get(handles.edit1,'String');
    textString = strcat(textString,'7');
    set(handles.edit1,'String',textString);
    guidata(hObject, handles);

% --- Executes on button press in pushbutton2.按键8
function pushbutton2_Callback(hObject, eventdata, handles)
    textString = get(handles.edit1,'String');
    textString = strcat(textString,'8');
    set(handles.edit1,'String',textString);
    guidata(hObject, handles);

% --- Executes on button press in pushbutton3.按键9
function pushbutton3_Callback(hObject, eventdata, handles)
    textString = get(handles.edit1,'String');
    textString = strcat(textString,'9');
    set(handles.edit1,'String',textString);
    guidata(hObject, handles);

% --- Executes on button press in pushbutton4.按键0
function pushbutton4_Callback(hObject, eventdata, handles)
    textString = get(handles.edit1,'String');
    textString = strcat(textString,'0');
    set(handles.edit1,'String',textString);
    guidata(hObject, handles);

% --- Executes on button press in pushbutton5.按键AE
function pushbutton5_Callback(hObject, eventdata, handles)
    textString = get(handles.edit1,'String');
    textString = get(handles.edit2,'String');
    set(handles.edit1,'String','');
    set(handles.edit2,'String','');
    guidata(hObject, handles);

% --- Executes on button press in pushbutton6.按键4
function pushbutton6_Callback(hObject, eventdata, handles)
    textString = get(handles.edit1,'String');
    textString = strcat(textString,'4');
    set(handles.edit1,'String',textString);
    guidata(hObject, handles);

% --- Executes on button press in pushbutton7.按键5
function pushbutton7_Callback(hObject, eventdata, handles)
    textString = get(handles.edit1,'String');
    textString = strcat(textString,'5');
    set(handles.edit1,'String',textString);
    guidata(hObject, handles);

% --- Executes on button press in pushbutton9.按键6
function pushbutton9_Callback(hObject, eventdata, handles)
    textString = get(handles.edit1,'String');
    textString = strcat(textString,'6');
    set(handles.edit1,'String',textString);
    guidata(hObject, handles);

% --- Executes on button press in pushbutton11.按键1
function pushbutton11_Callback(hObject, eventdata, handles)
    textString = get(handles.edit1,'String');
    textString = strcat(textString,'1');
    set(handles.edit1,'String',textString);
    guidata(hObject, handles);


% --- Executes on button press in pushbutton12.按键2
function pushbutton12_Callback(hObject, eventdata, handles)
    textString = get(handles.edit1,'String');
    textString = strcat(textString,'2');
    set(handles.edit1,'String',textString);
    guidata(hObject, handles);

% --- Executes on button press in pushbutton13.按键3
function pushbutton13_Callback(hObject, eventdata, handles)
    textString = get(handles.edit1,'String');
    textString = strcat(textString,'3');
    set(handles.edit1,'String',textString);
    guidata(hObject, handles);

% --- Executes on button press in pushbutton14.按键（
function pushbutton14_Callback(hObject, eventdata, handles)
    textString = get(handles.edit1,'String');
    textString = strcat(textString,'(');
    set(handles.edit1,'String',textString);
    guidata(hObject, handles);

% --- Executes on button press in pushbutton15.按键）
function pushbutton15_Callback(hObject, eventdata, handles)
    textString = get(handles.edit1,'String');
    textString = strcat(textString,')');
    set(handles.edit1,'String',textString);
    guidata(hObject, handles);

% --- Executes on button press in pushbutton16.按键退出
function pushbutton16_Callback(hObject, eventdata, handles)
    close(gcf);

% --- Executes on button press in pushbutton17.按键back
function pushbutton17_Callback(hObject, eventdata, handles)
    textString=get(handles.edit1,'String');
    as=char(textString);
    n=length(textString);
    textString=as(1:n-1);
    set(handles.edit1,'String',textString)
    guidata(hObject, handles);


% --- Executes on button press in pushbutton18.按键.
function pushbutton18_Callback(hObject, eventdata, handles)
    textString = get(handles.edit1,'String');
    textString = strcat(textString,'.');
    set(handles.edit1,'String',textString);
    guidata(hObject, handles);
% --- Executes on button press in pushbutton22.按键-
function pushbutton22_Callback(hObject, eventdata, handles)
    textString = get(handles.edit1,'String');
    textString = strcat(textString,'-');
    set(handles.edit1,'String',textString);
    guidata(hObject, handles);

% --- Executes on button press in pushbutton19.按键计算
function pushbutton19_Callback(hObject, eventdata, handles)
textString = get(handles.edit1,'String');
result = eval(textString);
set(handles.edit2,'String',result);
guidata(hObject, handles);

    
% --- Executes on button press in pushbutton8.按键sin
function pushbutton8_Callback(hObject, eventdata, handles)
textString=get(handles.edit1,'String');

num=str2double(textString);
if(num>360)
    num=mod(num,360);
end

if(num<-360)
    num=mod(num,-360);
end
num=num*pi/180;
result=sin_result(num);
set(handles.edit2,'String',num2str(result));
guidata(hObject,handles);

% --- Executes on button press in pushbutton10.按键cos
function pushbutton10_Callback(hObject, eventdata, handles)
textString=get(handles.edit1,'String');
textString = eval(textString);
num=str2double(textString);
if(num>360)
    num=mod(num,360);
end

if(num<-360)
    num=mod(num,-360);
end
num=num*pi/180;
result=cos_result(num);
set(handles.edit2,'String',num2str(result));
guidata(hObject,handles);
    
% --- Executes on button press in pushbutton20.按键arcsin
function pushbutton20_Callback(hObject, eventdata, handles)
textString=get(handles.edit1,'String');
num=str2double(textString);
result=arcsin_result(num);
set(handles.edit2,'String',num2str(result));
guidata(hObject,handles);

% --- Executes on button press in pushbutton21.按键cot
function pushbutton21_Callback(hObject, eventdata, handles)
textString=get(handles.edit1,'String');
textString = eval(textString);
num=str2double(textString);
if(num>360)
    num=mod(num,360);
end

if(num<-360)
    num=mod(num,-360);
end
num=num*pi/180;
result=cot_result(num);
set(handles.edit2,'String',num2str(result));
guidata(hObject,handles);
    
% --- Executes on button press in pushbutton23.按键tan
function pushbutton23_Callback(hObject, eventdata, handles)
textString=get(handles.edit1,'String');
textString = eval(textString);
num=str2double(textString);
if(num>360)
    num=mod(num,360);
end

if(num<-360)
    num=mod(num,-360);
end
num=num*pi/180;
result=tan_result(num);
set(handles.edit2,'String',num2str(result));
guidata(hObject,handles);  




% --- Executes during object creation, after setting all properties.
function pushbutton20_CreateFcn(hObject, ~, handles)
% hObject    handle to pushbutton20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
