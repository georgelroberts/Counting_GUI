%%George L. Roberts 2017
% glr28@cam.ac.uk
% GUI for Cora's microscope counting

function varargout = CoraMic(varargin)
% CORAMIC MATLAB code for CoraMic.fig
%      CORAMIC, by itself, creates a new CORAMIC or raises the existing
%      singleton*.
%
%      H = CORAMIC returns the handle to a new CORAMIC or the handle to
%      the existing singleton*.
%
%      CORAMIC('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CORAMIC.M with the given input arguments.
%
%      CORAMIC('Property','Value',...) creates a new CORAMIC or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before CoraMic_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to CoraMic_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help CoraMic

% Last Modified by GUIDE v2.5 10-Aug-2017 11:31:17

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @CoraMic_OpeningFcn, ...
                   'gui_OutputFcn',  @CoraMic_OutputFcn, ...
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


% --- Executes just before CoraMic is made visible.
function CoraMic_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to CoraMic (see VARARGIN)

handles.numberArray=[];

h=handles.uitable5;
set(h,'Data',handles.numberArray)

set(handles.uitable5, 'Data', handles.numberArray);
set(handles.uitable5, 'Data', handles.numberArray);

% Choose default command line output for CoraMic
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes CoraMic wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = CoraMic_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

handles.numberArray=[handles.numberArray,1];
guidata(hObject,handles);
if length(handles.numberArray)<3
    set(handles.uitable5, 'Data', fliplr(handles.numberArray));
else
    set(handles.uitable5, 'Data', fliplr(handles.numberArray(end-2:end)));
end

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

handles.numberArray=[handles.numberArray,2];
guidata(hObject,handles);
if length(handles.numberArray)<3
    set(handles.uitable5, 'Data', fliplr(handles.numberArray));
else
    set(handles.uitable5, 'Data', fliplr(handles.numberArray(end-2:end)));
end

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

handles.numberArray=[handles.numberArray,3];
guidata(hObject,handles);
if length(handles.numberArray)<3
    set(handles.uitable5, 'Data', fliplr(handles.numberArray));
else
    set(handles.uitable5, 'Data', fliplr(handles.numberArray(end-2:end)));
end

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

handles.numberArray=[handles.numberArray,4];
guidata(hObject,handles);
if length(handles.numberArray)<3
    set(handles.uitable5, 'Data', fliplr(handles.numberArray));
else
    set(handles.uitable5, 'Data', fliplr(handles.numberArray(end-2:end)));
end

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

handles.numberArray=[handles.numberArray,5];
guidata(hObject,handles);
if length(handles.numberArray)<3
    set(handles.uitable5, 'Data', fliplr(handles.numberArray));
else
    set(handles.uitable5, 'Data', fliplr(handles.numberArray(end-2:end)));
end

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

handles.numberArray=[handles.numberArray,6];
guidata(hObject,handles);
if length(handles.numberArray)<3
    set(handles.uitable5, 'Data', fliplr(handles.numberArray));
else
    set(handles.uitable5, 'Data', fliplr(handles.numberArray(end-2:end)));
end

% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

handles.numberArray=[handles.numberArray,7];
guidata(hObject,handles);
if length(handles.numberArray)<3
    set(handles.uitable5, 'Data', fliplr(handles.numberArray));
else
    set(handles.uitable5, 'Data', fliplr(handles.numberArray(end-2:end)));
end

% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

handles.numberArray=[handles.numberArray,8];
guidata(hObject,handles);
if length(handles.numberArray)<3
    set(handles.uitable5, 'Data', fliplr(handles.numberArray));
else
    set(handles.uitable5, 'Data', fliplr(handles.numberArray(end-2:end)));
end


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%hist(handles.numberArray)
set(handles.uitable6, 'Data', histcounts(handles.numberArray,8,'BinLimits',[1,8])');


% --- Executes on key press with focus on figure1 or any of its controls.
function figure1_WindowKeyPressFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.FIGURE)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)
pressed=eventdata.Key;
if strcmp(pressed,'numpad1') || strcmp(pressed,'1')
    pushbutton1_Callback(hObject, eventdata, handles);
elseif strcmp(pressed,'numpad2') || strcmp(pressed,'2')
    pushbutton2_Callback(hObject, eventdata, handles);
elseif strcmp(pressed,'numpad3') || strcmp(pressed,'3')
    pushbutton3_Callback(hObject, eventdata, handles);
elseif strcmp(pressed,'numpad4') || strcmp(pressed,'4')
    pushbutton4_Callback(hObject, eventdata, handles);
elseif strcmp(pressed,'numpad5') || strcmp(pressed,'5')
    pushbutton5_Callback(hObject, eventdata, handles);
elseif strcmp(pressed,'numpad6') || strcmp(pressed,'6')
    pushbutton6_Callback(hObject, eventdata, handles);
elseif strcmp(pressed,'numpad7') || strcmp(pressed,'7')
    pushbutton7_Callback(hObject, eventdata, handles);
elseif strcmp(pressed,'numpad8') || strcmp(pressed,'8')
    pushbutton8_Callback(hObject, eventdata, handles); 
end
