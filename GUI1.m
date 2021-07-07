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


% --- ���ʽ��
function edit1_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- ��������
function edit2_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in pushbutton1.����7
function pushbutton1_Callback(hObject, eventdata, handles)
    textString = get(handles.edit1,'String');
    textString = strcat(textString,'7');
    set(handles.edit1,'String',textString);
    guidata(hObject, handles);

% --- Executes on button press in pushbutton2.����8
function pushbutton2_Callback(hObject, eventdata, handles)
    textString = get(handles.edit1,'String');
    textString = strcat(textString,'8');
    set(handles.edit1,'String',textString);
    guidata(hObject, handles);

% --- Executes on button press in pushbutton3.����9
function pushbutton3_Callback(hObject, eventdata, handles)
    textString = get(handles.edit1,'String');
    textString = strcat(textString,'9');
    set(handles.edit1,'String',textString);
    guidata(hObject, handles);

% --- Executes on button press in pushbutton4.����0
function pushbutton4_Callback(hObject, eventdata, handles)
    textString = get(handles.edit1,'String');
    textString = strcat(textString,'0');
    set(handles.edit1,'String',textString);
    guidata(hObject, handles);

% --- Executes on button press in pushbutton5.����AE
function pushbutton5_Callback(hObject, eventdata, handles)
    textString = get(handles.edit1,'String');
    textString = get(handles.edit2,'String');
    set(handles.edit1,'String','');
    set(handles.edit2,'String','');
    guidata(hObject, handles);

% --- Executes on button press in pushbutton6.����4
function pushbutton6_Callback(hObject, eventdata, handles)
    textString = get(handles.edit1,'String');
    textString = strcat(textString,'4');
    set(handles.edit1,'String',textString);
    guidata(hObject, handles);

% --- Executes on button press in pushbutton7.����5
function pushbutton7_Callback(hObject, eventdata, handles)
    textString = get(handles.edit1,'String');
    textString = strcat(textString,'5');
    set(handles.edit1,'String',textString);
    guidata(hObject, handles);

% --- Executes on button press in pushbutton9.����6
function pushbutton9_Callback(hObject, eventdata, handles)
    textString = get(handles.edit1,'String');
    textString = strcat(textString,'6');
    set(handles.edit1,'String',textString);
    guidata(hObject, handles);

% --- Executes on button press in pushbutton11.����1
function pushbutton11_Callback(hObject, eventdata, handles)
    textString = get(handles.edit1,'String');
    textString = strcat(textString,'1');
    set(handles.edit1,'String',textString);
    guidata(hObject, handles);


% --- Executes on button press in pushbutton12.����2
function pushbutton12_Callback(hObject, eventdata, handles)
    textString = get(handles.edit1,'String');
    textString = strcat(textString,'2');
    set(handles.edit1,'String',textString);
    guidata(hObject, handles);

% --- Executes on button press in pushbutton13.����3
function pushbutton13_Callback(hObject, eventdata, handles)
    textString = get(handles.edit1,'String');
    textString = strcat(textString,'3');
    set(handles.edit1,'String',textString);
    guidata(hObject, handles);

% --- Executes on button press in pushbutton14.������
function pushbutton14_Callback(hObject, eventdata, handles)
    textString = get(handles.edit1,'String');
    textString = strcat(textString,'(');
    set(handles.edit1,'String',textString);
    guidata(hObject, handles);

% --- Executes on button press in pushbutton15.������
function pushbutton15_Callback(hObject, eventdata, handles)
    textString = get(handles.edit1,'String');
    textString = strcat(textString,')');
    set(handles.edit1,'String',textString);
    guidata(hObject, handles);

% --- Executes on button press in pushbutton16.�����˳�
function pushbutton16_Callback(hObject, eventdata, handles)
    close(gcf);

% --- Executes on button press in pushbutton17.����back
function pushbutton17_Callback(hObject, eventdata, handles)
    textString=get(handles.edit1,'String');
    as=char(textString);
    n=length(textString);
    textString=as(1:n-1);
    set(handles.edit1,'String',textString)
    guidata(hObject, handles);


% --- Executes on button press in pushbutton18.����.
function pushbutton18_Callback(hObject, eventdata, handles)
    textString = get(handles.edit1,'String');
    textString = strcat(textString,'.');
    set(handles.edit1,'String',textString);
    guidata(hObject, handles);
% --- Executes on button press in pushbutton22.����-
function pushbutton22_Callback(hObject, eventdata, handles)
    textString = get(handles.edit1,'String');
    textString = strcat(textString,'-');
    set(handles.edit1,'String',textString);
    guidata(hObject, handles);

% --- Executes on button press in pushbutton19.��������
function pushbutton19_Callback(hObject, eventdata, handles)
textString = get(handles.edit1,'String');
result = eval(textString);
set(handles.edit2,'String',result);
guidata(hObject, handles);

    
% --- Executes on button press in pushbutton8.����sin
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

% --- Executes on button press in pushbutton10.����cos
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
    
% --- Executes on button press in pushbutton20.����arcsin
function pushbutton20_Callback(hObject, eventdata, handles)
textString=get(handles.edit1,'String');
num=str2double(textString);
result=arcsin_result(num);
set(handles.edit2,'String',num2str(result));
guidata(hObject,handles);

% --- Executes on button press in pushbutton21.����cot
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
    
% --- Executes on button press in pushbutton23.����tan
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
