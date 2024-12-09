̫
��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

$
DisableCopyOnRead
resource�
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
�
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.12.02v2.12.0-rc1-12-g0db597d0d758��
�
random_rotation/StateVarVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*)
shared_namerandom_rotation/StateVar
�
,random_rotation/StateVar/Read/ReadVariableOpReadVariableOprandom_rotation/StateVar*
_output_shapes
:*
dtype0	
�
random_flip/StateVarVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*%
shared_namerandom_flip/StateVar
y
(random_flip/StateVar/Read/ReadVariableOpReadVariableOprandom_flip/StateVar*
_output_shapes
:*
dtype0	
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
�
Adam/v/dense_17/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/v/dense_17/bias
y
(Adam/v/dense_17/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_17/bias*
_output_shapes
:*
dtype0
�
Adam/m/dense_17/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/m/dense_17/bias
y
(Adam/m/dense_17/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_17/bias*
_output_shapes
:*
dtype0
�
Adam/v/dense_17/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*'
shared_nameAdam/v/dense_17/kernel
�
*Adam/v/dense_17/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_17/kernel* 
_output_shapes
:
��*
dtype0
�
Adam/m/dense_17/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*'
shared_nameAdam/m/dense_17/kernel
�
*Adam/m/dense_17/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_17/kernel* 
_output_shapes
:
��*
dtype0
�
Adam/v/conv2d_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_nameAdam/v/conv2d_14/bias
{
)Adam/v/conv2d_14/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_14/bias*
_output_shapes
:
*
dtype0
�
Adam/m/conv2d_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_nameAdam/m/conv2d_14/bias
{
)Adam/m/conv2d_14/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_14/bias*
_output_shapes
:
*
dtype0
�
Adam/v/conv2d_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:

*(
shared_nameAdam/v/conv2d_14/kernel
�
+Adam/v/conv2d_14/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_14/kernel*&
_output_shapes
:

*
dtype0
�
Adam/m/conv2d_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:

*(
shared_nameAdam/m/conv2d_14/kernel
�
+Adam/m/conv2d_14/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_14/kernel*&
_output_shapes
:

*
dtype0
�
Adam/v/conv2d_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_nameAdam/v/conv2d_13/bias
{
)Adam/v/conv2d_13/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_13/bias*
_output_shapes
:
*
dtype0
�
Adam/m/conv2d_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_nameAdam/m/conv2d_13/bias
{
)Adam/m/conv2d_13/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_13/bias*
_output_shapes
:
*
dtype0
�
Adam/v/conv2d_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:

*(
shared_nameAdam/v/conv2d_13/kernel
�
+Adam/v/conv2d_13/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_13/kernel*&
_output_shapes
:

*
dtype0
�
Adam/m/conv2d_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:

*(
shared_nameAdam/m/conv2d_13/kernel
�
+Adam/m/conv2d_13/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_13/kernel*&
_output_shapes
:

*
dtype0
�
Adam/v/conv2d_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_nameAdam/v/conv2d_12/bias
{
)Adam/v/conv2d_12/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_12/bias*
_output_shapes
:
*
dtype0
�
Adam/m/conv2d_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_nameAdam/m/conv2d_12/bias
{
)Adam/m/conv2d_12/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_12/bias*
_output_shapes
:
*
dtype0
�
Adam/v/conv2d_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*(
shared_nameAdam/v/conv2d_12/kernel
�
+Adam/v/conv2d_12/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_12/kernel*&
_output_shapes
:
*
dtype0
�
Adam/m/conv2d_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*(
shared_nameAdam/m/conv2d_12/kernel
�
+Adam/m/conv2d_12/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_12/kernel*&
_output_shapes
:
*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
r
dense_17/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_17/bias
k
!dense_17/bias/Read/ReadVariableOpReadVariableOpdense_17/bias*
_output_shapes
:*
dtype0
|
dense_17/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��* 
shared_namedense_17/kernel
u
#dense_17/kernel/Read/ReadVariableOpReadVariableOpdense_17/kernel* 
_output_shapes
:
��*
dtype0
t
conv2d_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_nameconv2d_14/bias
m
"conv2d_14/bias/Read/ReadVariableOpReadVariableOpconv2d_14/bias*
_output_shapes
:
*
dtype0
�
conv2d_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:

*!
shared_nameconv2d_14/kernel
}
$conv2d_14/kernel/Read/ReadVariableOpReadVariableOpconv2d_14/kernel*&
_output_shapes
:

*
dtype0
t
conv2d_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_nameconv2d_13/bias
m
"conv2d_13/bias/Read/ReadVariableOpReadVariableOpconv2d_13/bias*
_output_shapes
:
*
dtype0
�
conv2d_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:

*!
shared_nameconv2d_13/kernel
}
$conv2d_13/kernel/Read/ReadVariableOpReadVariableOpconv2d_13/kernel*&
_output_shapes
:

*
dtype0
t
conv2d_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_nameconv2d_12/bias
m
"conv2d_12/bias/Read/ReadVariableOpReadVariableOpconv2d_12/bias*
_output_shapes
:
*
dtype0
�
conv2d_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*!
shared_nameconv2d_12/kernel
}
$conv2d_12/kernel/Read/ReadVariableOpReadVariableOpconv2d_12/kernel*&
_output_shapes
:
*
dtype0
�
"serving_default_sequential_7_inputPlaceholder*1
_output_shapes
:�����������*
dtype0*&
shape:�����������
�
StatefulPartitionedCallStatefulPartitionedCall"serving_default_sequential_7_inputconv2d_12/kernelconv2d_12/biasconv2d_13/kernelconv2d_13/biasconv2d_14/kernelconv2d_14/biasdense_17/kerneldense_17/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference_signature_wrapper_22704

NoOpNoOp
�S
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�S
value�SB�S B�S
�
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
		variables

trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
�
layer-0
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

 kernel
!bias
 "_jit_compiled_convolution_op*
�
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses* 
�
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses

/kernel
0bias
 1_jit_compiled_convolution_op*
�
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses* 
�
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses

>kernel
?bias
 @_jit_compiled_convolution_op*
�
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses* 
�
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses

Mkernel
Nbias*
<
 0
!1
/2
03
>4
?5
M6
N7*
<
 0
!1
/2
03
>4
?5
M6
N7*
* 
�
Onon_trainable_variables

Players
Qmetrics
Rlayer_regularization_losses
Slayer_metrics
		variables

trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Ttrace_0
Utrace_1
Vtrace_2
Wtrace_3* 
6
Xtrace_0
Ytrace_1
Ztrace_2
[trace_3* 
* 
�
\
_variables
]_iterations
^_learning_rate
__index_dict
`
_momentums
a_velocities
b_update_step_xla*

cserving_default* 
�
d	variables
etrainable_variables
fregularization_losses
g	keras_api
h__call__
*i&call_and_return_all_conditional_losses
j_random_generator*
�
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses
q_random_generator*
* 
* 
* 
�
rnon_trainable_variables

slayers
tmetrics
ulayer_regularization_losses
vlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
wtrace_0
xtrace_1
ytrace_2
ztrace_3* 
6
{trace_0
|trace_1
}trace_2
~trace_3* 

 0
!1*

 0
!1*
* 
�
non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_12/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_12/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

/0
01*

/0
01*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_13/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_13/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

>0
?1*

>0
?1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_14/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_14/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

M0
N1*

M0
N1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdense_17/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_17/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
<
0
1
2
3
4
5
6
7*

�0
�1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
�
]0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
D
�0
�1
�2
�3
�4
�5
�6
�7*
D
�0
�1
�2
�3
�4
�5
�6
�7*
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
d	variables
etrainable_variables
fregularization_losses
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 

�
_generator*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 

�
_generator*
* 

0
1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
b\
VARIABLE_VALUEAdam/m/conv2d_12/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_12/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_12/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_12/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_13/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_13/kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_13/bias1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_13/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_14/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_14/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_14/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_14/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/dense_17/kernel2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_17/kernel2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_17/bias2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_17/bias2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 

�
_state_var*
* 
* 
* 
* 
* 
* 
* 
* 
* 

�
_state_var*

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
�z
VARIABLE_VALUErandom_flip/StateVarRlayer-0/layer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUErandom_rotation/StateVarRlayer-0/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameconv2d_12/kernelconv2d_12/biasconv2d_13/kernelconv2d_13/biasconv2d_14/kernelconv2d_14/biasdense_17/kerneldense_17/bias	iterationlearning_rateAdam/m/conv2d_12/kernelAdam/v/conv2d_12/kernelAdam/m/conv2d_12/biasAdam/v/conv2d_12/biasAdam/m/conv2d_13/kernelAdam/v/conv2d_13/kernelAdam/m/conv2d_13/biasAdam/v/conv2d_13/biasAdam/m/conv2d_14/kernelAdam/v/conv2d_14/kernelAdam/m/conv2d_14/biasAdam/v/conv2d_14/biasAdam/m/dense_17/kernelAdam/v/dense_17/kernelAdam/m/dense_17/biasAdam/v/dense_17/biastotal_1count_1totalcountrandom_flip/StateVarrandom_rotation/StateVarConst*-
Tin&
$2"*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference__traced_save_23883
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_12/kernelconv2d_12/biasconv2d_13/kernelconv2d_13/biasconv2d_14/kernelconv2d_14/biasdense_17/kerneldense_17/bias	iterationlearning_rateAdam/m/conv2d_12/kernelAdam/v/conv2d_12/kernelAdam/m/conv2d_12/biasAdam/v/conv2d_12/biasAdam/m/conv2d_13/kernelAdam/v/conv2d_13/kernelAdam/m/conv2d_13/biasAdam/v/conv2d_13/biasAdam/m/conv2d_14/kernelAdam/v/conv2d_14/kernelAdam/m/conv2d_14/biasAdam/v/conv2d_14/biasAdam/m/dense_17/kernelAdam/v/dense_17/kernelAdam/m/dense_17/biasAdam/v/dense_17/biastotal_1count_1totalcountrandom_flip/StateVarrandom_rotation/StateVar*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__traced_restore_23989��
�
�
D__inference_conv2d_12_layer_call_and_return_conditional_losses_23306

inputs8
conv2d_readvariableop_resource:
-
biasadd_readvariableop_resource:

identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:
*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������
*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������
Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������
k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������
w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
S
,__inference_sequential_7_layer_call_fn_22300
random_flip_input
identity�
PartitionedCallPartitionedCallrandom_flip_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_7_layer_call_and_return_conditional_losses_22297j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:d `
1
_output_shapes
:�����������
+
_user_specified_namerandom_flip_input
�5
�
 __inference__wrapped_model_22013
sequential_7_inputO
5sequential_9_conv2d_12_conv2d_readvariableop_resource:
D
6sequential_9_conv2d_12_biasadd_readvariableop_resource:
O
5sequential_9_conv2d_13_conv2d_readvariableop_resource:

D
6sequential_9_conv2d_13_biasadd_readvariableop_resource:
O
5sequential_9_conv2d_14_conv2d_readvariableop_resource:

D
6sequential_9_conv2d_14_biasadd_readvariableop_resource:
H
4sequential_9_dense_17_matmul_readvariableop_resource:
��C
5sequential_9_dense_17_biasadd_readvariableop_resource:
identity��-sequential_9/conv2d_12/BiasAdd/ReadVariableOp�,sequential_9/conv2d_12/Conv2D/ReadVariableOp�-sequential_9/conv2d_13/BiasAdd/ReadVariableOp�,sequential_9/conv2d_13/Conv2D/ReadVariableOp�-sequential_9/conv2d_14/BiasAdd/ReadVariableOp�,sequential_9/conv2d_14/Conv2D/ReadVariableOp�,sequential_9/dense_17/BiasAdd/ReadVariableOp�+sequential_9/dense_17/MatMul/ReadVariableOp�
,sequential_9/conv2d_12/Conv2D/ReadVariableOpReadVariableOp5sequential_9_conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
:
*
dtype0�
sequential_9/conv2d_12/Conv2DConv2Dsequential_7_input4sequential_9/conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������
*
paddingVALID*
strides
�
-sequential_9/conv2d_12/BiasAdd/ReadVariableOpReadVariableOp6sequential_9_conv2d_12_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
sequential_9/conv2d_12/BiasAddBiasAdd&sequential_9/conv2d_12/Conv2D:output:05sequential_9/conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������
�
sequential_9/conv2d_12/ReluRelu'sequential_9/conv2d_12/BiasAdd:output:0*
T0*1
_output_shapes
:�����������
�
$sequential_9/max_pooling2d_4/MaxPoolMaxPool)sequential_9/conv2d_12/Relu:activations:0*/
_output_shapes
:���������
*
ksize
*
paddingVALID*
strides
�
,sequential_9/conv2d_13/Conv2D/ReadVariableOpReadVariableOp5sequential_9_conv2d_13_conv2d_readvariableop_resource*&
_output_shapes
:

*
dtype0�
sequential_9/conv2d_13/Conv2DConv2D-sequential_9/max_pooling2d_4/MaxPool:output:04sequential_9/conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������}}
*
paddingVALID*
strides
�
-sequential_9/conv2d_13/BiasAdd/ReadVariableOpReadVariableOp6sequential_9_conv2d_13_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
sequential_9/conv2d_13/BiasAddBiasAdd&sequential_9/conv2d_13/Conv2D:output:05sequential_9/conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������}}
�
sequential_9/conv2d_13/ReluRelu'sequential_9/conv2d_13/BiasAdd:output:0*
T0*/
_output_shapes
:���������}}
�
$sequential_9/max_pooling2d_5/MaxPoolMaxPool)sequential_9/conv2d_13/Relu:activations:0*/
_output_shapes
:���������>>
*
ksize
*
paddingVALID*
strides
�
,sequential_9/conv2d_14/Conv2D/ReadVariableOpReadVariableOp5sequential_9_conv2d_14_conv2d_readvariableop_resource*&
_output_shapes
:

*
dtype0�
sequential_9/conv2d_14/Conv2DConv2D-sequential_9/max_pooling2d_5/MaxPool:output:04sequential_9/conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<<
*
paddingVALID*
strides
�
-sequential_9/conv2d_14/BiasAdd/ReadVariableOpReadVariableOp6sequential_9_conv2d_14_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
sequential_9/conv2d_14/BiasAddBiasAdd&sequential_9/conv2d_14/Conv2D:output:05sequential_9/conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<<
�
sequential_9/conv2d_14/ReluRelu'sequential_9/conv2d_14/BiasAdd:output:0*
T0*/
_output_shapes
:���������<<
m
sequential_9/flatten_8/ConstConst*
_output_shapes
:*
dtype0*
valueB"������  �
sequential_9/flatten_8/ReshapeReshape)sequential_9/conv2d_14/Relu:activations:0%sequential_9/flatten_8/Const:output:0*
T0*)
_output_shapes
:������������
+sequential_9/dense_17/MatMul/ReadVariableOpReadVariableOp4sequential_9_dense_17_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
sequential_9/dense_17/MatMulMatMul'sequential_9/flatten_8/Reshape:output:03sequential_9/dense_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
,sequential_9/dense_17/BiasAdd/ReadVariableOpReadVariableOp5sequential_9_dense_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_9/dense_17/BiasAddBiasAdd&sequential_9/dense_17/MatMul:product:04sequential_9/dense_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
sequential_9/dense_17/SigmoidSigmoid&sequential_9/dense_17/BiasAdd:output:0*
T0*'
_output_shapes
:���������p
IdentityIdentity!sequential_9/dense_17/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp.^sequential_9/conv2d_12/BiasAdd/ReadVariableOp-^sequential_9/conv2d_12/Conv2D/ReadVariableOp.^sequential_9/conv2d_13/BiasAdd/ReadVariableOp-^sequential_9/conv2d_13/Conv2D/ReadVariableOp.^sequential_9/conv2d_14/BiasAdd/ReadVariableOp-^sequential_9/conv2d_14/Conv2D/ReadVariableOp-^sequential_9/dense_17/BiasAdd/ReadVariableOp,^sequential_9/dense_17/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:�����������: : : : : : : : 2^
-sequential_9/conv2d_12/BiasAdd/ReadVariableOp-sequential_9/conv2d_12/BiasAdd/ReadVariableOp2\
,sequential_9/conv2d_12/Conv2D/ReadVariableOp,sequential_9/conv2d_12/Conv2D/ReadVariableOp2^
-sequential_9/conv2d_13/BiasAdd/ReadVariableOp-sequential_9/conv2d_13/BiasAdd/ReadVariableOp2\
,sequential_9/conv2d_13/Conv2D/ReadVariableOp,sequential_9/conv2d_13/Conv2D/ReadVariableOp2^
-sequential_9/conv2d_14/BiasAdd/ReadVariableOp-sequential_9/conv2d_14/BiasAdd/ReadVariableOp2\
,sequential_9/conv2d_14/Conv2D/ReadVariableOp,sequential_9/conv2d_14/Conv2D/ReadVariableOp2\
,sequential_9/dense_17/BiasAdd/ReadVariableOp,sequential_9/dense_17/BiasAdd/ReadVariableOp2Z
+sequential_9/dense_17/MatMul/ReadVariableOp+sequential_9/dense_17/MatMul/ReadVariableOp:e a
1
_output_shapes
:�����������
,
_user_specified_namesequential_7_input
�
b
F__inference_random_flip_layer_call_and_return_conditional_losses_23524

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�

�
C__inference_dense_17_layer_call_and_return_conditional_losses_23397

inputs2
matmul_readvariableop_resource:
��-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
G__inference_sequential_7_layer_call_and_return_conditional_losses_22255
random_flip_input
random_flip_22129:	#
random_rotation_22251:	
identity��#random_flip/StatefulPartitionedCall�'random_rotation/StatefulPartitionedCall�
#random_flip/StatefulPartitionedCallStatefulPartitionedCallrandom_flip_inputrandom_flip_22129*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_random_flip_layer_call_and_return_conditional_losses_22128�
'random_rotation/StatefulPartitionedCallStatefulPartitionedCall,random_flip/StatefulPartitionedCall:output:0random_rotation_22251*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_random_rotation_layer_call_and_return_conditional_losses_22250�
IdentityIdentity0random_rotation/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp$^random_flip/StatefulPartitionedCall(^random_rotation/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 2J
#random_flip/StatefulPartitionedCall#random_flip/StatefulPartitionedCall2R
'random_rotation/StatefulPartitionedCall'random_rotation/StatefulPartitionedCall:d `
1
_output_shapes
:�����������
+
_user_specified_namerandom_flip_input
��
�
__inference__traced_save_23883
file_prefixA
'read_disablecopyonread_conv2d_12_kernel:
5
'read_1_disablecopyonread_conv2d_12_bias:
C
)read_2_disablecopyonread_conv2d_13_kernel:

5
'read_3_disablecopyonread_conv2d_13_bias:
C
)read_4_disablecopyonread_conv2d_14_kernel:

5
'read_5_disablecopyonread_conv2d_14_bias:
<
(read_6_disablecopyonread_dense_17_kernel:
��4
&read_7_disablecopyonread_dense_17_bias:,
"read_8_disablecopyonread_iteration:	 0
&read_9_disablecopyonread_learning_rate: K
1read_10_disablecopyonread_adam_m_conv2d_12_kernel:
K
1read_11_disablecopyonread_adam_v_conv2d_12_kernel:
=
/read_12_disablecopyonread_adam_m_conv2d_12_bias:
=
/read_13_disablecopyonread_adam_v_conv2d_12_bias:
K
1read_14_disablecopyonread_adam_m_conv2d_13_kernel:

K
1read_15_disablecopyonread_adam_v_conv2d_13_kernel:

=
/read_16_disablecopyonread_adam_m_conv2d_13_bias:
=
/read_17_disablecopyonread_adam_v_conv2d_13_bias:
K
1read_18_disablecopyonread_adam_m_conv2d_14_kernel:

K
1read_19_disablecopyonread_adam_v_conv2d_14_kernel:

=
/read_20_disablecopyonread_adam_m_conv2d_14_bias:
=
/read_21_disablecopyonread_adam_v_conv2d_14_bias:
D
0read_22_disablecopyonread_adam_m_dense_17_kernel:
��D
0read_23_disablecopyonread_adam_v_dense_17_kernel:
��<
.read_24_disablecopyonread_adam_m_dense_17_bias:<
.read_25_disablecopyonread_adam_v_dense_17_bias:+
!read_26_disablecopyonread_total_1: +
!read_27_disablecopyonread_count_1: )
read_28_disablecopyonread_total: )
read_29_disablecopyonread_count: <
.read_30_disablecopyonread_random_flip_statevar:	@
2read_31_disablecopyonread_random_rotation_statevar:	
savev2_const
identity_65��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_26/DisableCopyOnRead�Read_26/ReadVariableOp�Read_27/DisableCopyOnRead�Read_27/ReadVariableOp�Read_28/DisableCopyOnRead�Read_28/ReadVariableOp�Read_29/DisableCopyOnRead�Read_29/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_30/DisableCopyOnRead�Read_30/ReadVariableOp�Read_31/DisableCopyOnRead�Read_31/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: y
Read/DisableCopyOnReadDisableCopyOnRead'read_disablecopyonread_conv2d_12_kernel"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp'read_disablecopyonread_conv2d_12_kernel^Read/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:
*
dtype0q
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:
i

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*&
_output_shapes
:
{
Read_1/DisableCopyOnReadDisableCopyOnRead'read_1_disablecopyonread_conv2d_12_bias"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp'read_1_disablecopyonread_conv2d_12_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:
*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:
_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:
}
Read_2/DisableCopyOnReadDisableCopyOnRead)read_2_disablecopyonread_conv2d_13_kernel"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp)read_2_disablecopyonread_conv2d_13_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:

*
dtype0u

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:

k

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*&
_output_shapes
:

{
Read_3/DisableCopyOnReadDisableCopyOnRead'read_3_disablecopyonread_conv2d_13_bias"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp'read_3_disablecopyonread_conv2d_13_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:
*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:
_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:
}
Read_4/DisableCopyOnReadDisableCopyOnRead)read_4_disablecopyonread_conv2d_14_kernel"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp)read_4_disablecopyonread_conv2d_14_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:

*
dtype0u

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:

k

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*&
_output_shapes
:

{
Read_5/DisableCopyOnReadDisableCopyOnRead'read_5_disablecopyonread_conv2d_14_bias"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp'read_5_disablecopyonread_conv2d_14_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:
*
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:
a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:
|
Read_6/DisableCopyOnReadDisableCopyOnRead(read_6_disablecopyonread_dense_17_kernel"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp(read_6_disablecopyonread_dense_17_kernel^Read_6/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0p
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��g
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��z
Read_7/DisableCopyOnReadDisableCopyOnRead&read_7_disablecopyonread_dense_17_bias"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp&read_7_disablecopyonread_dense_17_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_8/DisableCopyOnReadDisableCopyOnRead"read_8_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp"read_8_disablecopyonread_iteration^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	f
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0	*
_output_shapes
: z
Read_9/DisableCopyOnReadDisableCopyOnRead&read_9_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp&read_9_disablecopyonread_learning_rate^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_10/DisableCopyOnReadDisableCopyOnRead1read_10_disablecopyonread_adam_m_conv2d_12_kernel"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp1read_10_disablecopyonread_adam_m_conv2d_12_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:
*
dtype0w
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:
m
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*&
_output_shapes
:
�
Read_11/DisableCopyOnReadDisableCopyOnRead1read_11_disablecopyonread_adam_v_conv2d_12_kernel"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp1read_11_disablecopyonread_adam_v_conv2d_12_kernel^Read_11/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:
*
dtype0w
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:
m
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*&
_output_shapes
:
�
Read_12/DisableCopyOnReadDisableCopyOnRead/read_12_disablecopyonread_adam_m_conv2d_12_bias"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp/read_12_disablecopyonread_adam_m_conv2d_12_bias^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:
*
dtype0k
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:
a
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes
:
�
Read_13/DisableCopyOnReadDisableCopyOnRead/read_13_disablecopyonread_adam_v_conv2d_12_bias"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp/read_13_disablecopyonread_adam_v_conv2d_12_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:
*
dtype0k
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:
a
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:
�
Read_14/DisableCopyOnReadDisableCopyOnRead1read_14_disablecopyonread_adam_m_conv2d_13_kernel"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp1read_14_disablecopyonread_adam_m_conv2d_13_kernel^Read_14/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:

*
dtype0w
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:

m
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*&
_output_shapes
:

�
Read_15/DisableCopyOnReadDisableCopyOnRead1read_15_disablecopyonread_adam_v_conv2d_13_kernel"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp1read_15_disablecopyonread_adam_v_conv2d_13_kernel^Read_15/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:

*
dtype0w
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:

m
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*&
_output_shapes
:

�
Read_16/DisableCopyOnReadDisableCopyOnRead/read_16_disablecopyonread_adam_m_conv2d_13_bias"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp/read_16_disablecopyonread_adam_m_conv2d_13_bias^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:
*
dtype0k
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:
a
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
:
�
Read_17/DisableCopyOnReadDisableCopyOnRead/read_17_disablecopyonread_adam_v_conv2d_13_bias"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp/read_17_disablecopyonread_adam_v_conv2d_13_bias^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:
*
dtype0k
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:
a
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
:
�
Read_18/DisableCopyOnReadDisableCopyOnRead1read_18_disablecopyonread_adam_m_conv2d_14_kernel"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp1read_18_disablecopyonread_adam_m_conv2d_14_kernel^Read_18/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:

*
dtype0w
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:

m
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*&
_output_shapes
:

�
Read_19/DisableCopyOnReadDisableCopyOnRead1read_19_disablecopyonread_adam_v_conv2d_14_kernel"/device:CPU:0*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp1read_19_disablecopyonread_adam_v_conv2d_14_kernel^Read_19/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:

*
dtype0w
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:

m
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*&
_output_shapes
:

�
Read_20/DisableCopyOnReadDisableCopyOnRead/read_20_disablecopyonread_adam_m_conv2d_14_bias"/device:CPU:0*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp/read_20_disablecopyonread_adam_m_conv2d_14_bias^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:
*
dtype0k
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:
a
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes
:
�
Read_21/DisableCopyOnReadDisableCopyOnRead/read_21_disablecopyonread_adam_v_conv2d_14_bias"/device:CPU:0*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp/read_21_disablecopyonread_adam_v_conv2d_14_bias^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:
*
dtype0k
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:
a
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
:
�
Read_22/DisableCopyOnReadDisableCopyOnRead0read_22_disablecopyonread_adam_m_dense_17_kernel"/device:CPU:0*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp0read_22_disablecopyonread_adam_m_dense_17_kernel^Read_22/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0q
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��g
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_23/DisableCopyOnReadDisableCopyOnRead0read_23_disablecopyonread_adam_v_dense_17_kernel"/device:CPU:0*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOp0read_23_disablecopyonread_adam_v_dense_17_kernel^Read_23/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0q
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��g
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_24/DisableCopyOnReadDisableCopyOnRead.read_24_disablecopyonread_adam_m_dense_17_bias"/device:CPU:0*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp.read_24_disablecopyonread_adam_m_dense_17_bias^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_25/DisableCopyOnReadDisableCopyOnRead.read_25_disablecopyonread_adam_v_dense_17_bias"/device:CPU:0*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOp.read_25_disablecopyonread_adam_v_dense_17_bias^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_26/DisableCopyOnReadDisableCopyOnRead!read_26_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOp!read_26_disablecopyonread_total_1^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_27/DisableCopyOnReadDisableCopyOnRead!read_27_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 �
Read_27/ReadVariableOpReadVariableOp!read_27_disablecopyonread_count_1^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_28/DisableCopyOnReadDisableCopyOnReadread_28_disablecopyonread_total"/device:CPU:0*
_output_shapes
 �
Read_28/ReadVariableOpReadVariableOpread_28_disablecopyonread_total^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_29/DisableCopyOnReadDisableCopyOnReadread_29_disablecopyonread_count"/device:CPU:0*
_output_shapes
 �
Read_29/ReadVariableOpReadVariableOpread_29_disablecopyonread_count^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_30/DisableCopyOnReadDisableCopyOnRead.read_30_disablecopyonread_random_flip_statevar"/device:CPU:0*
_output_shapes
 �
Read_30/ReadVariableOpReadVariableOp.read_30_disablecopyonread_random_flip_statevar^Read_30/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0	k
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
:a
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0	*
_output_shapes
:�
Read_31/DisableCopyOnReadDisableCopyOnRead2read_31_disablecopyonread_random_rotation_statevar"/device:CPU:0*
_output_shapes
 �
Read_31/ReadVariableOpReadVariableOp2read_31_disablecopyonread_random_rotation_statevar^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0	k
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
:a
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0	*
_output_shapes
:�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:!*
dtype0*�
value�B�!B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer-0/layer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer-0/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:!*
dtype0*U
valueLBJ!B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 */
dtypes%
#2!			�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_64Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_65IdentityIdentity_64:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "#
identity_65Identity_65:output:0*W
_input_shapesF
D: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:!

_output_shapes
: 
�
�
,__inference_sequential_7_layer_call_fn_22289
random_flip_input
unknown:	
	unknown_0:	
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallrandom_flip_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_7_layer_call_and_return_conditional_losses_22282y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:d `
1
_output_shapes
:�����������
+
_user_specified_namerandom_flip_input
�

�
C__inference_dense_17_layer_call_and_return_conditional_losses_22445

inputs2
matmul_readvariableop_resource:
��-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:�����������
 
_user_specified_nameinputs
�
c
G__inference_sequential_7_layer_call_and_return_conditional_losses_22297

inputs
identity�
random_flip/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_random_flip_layer_call_and_return_conditional_losses_22261�
random_rotation/PartitionedCallPartitionedCall$random_flip/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_random_rotation_layer_call_and_return_conditional_losses_22266z
IdentityIdentity(random_rotation/PartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�%
�
G__inference_sequential_9_layer_call_and_return_conditional_losses_22515

inputs 
sequential_7_22486:	 
sequential_7_22488:	)
conv2d_12_22491:

conv2d_12_22493:
)
conv2d_13_22497:


conv2d_13_22499:
)
conv2d_14_22503:


conv2d_14_22505:
"
dense_17_22509:
��
dense_17_22511:
identity��!conv2d_12/StatefulPartitionedCall�!conv2d_13/StatefulPartitionedCall�!conv2d_14/StatefulPartitionedCall� dense_17/StatefulPartitionedCall�$sequential_7/StatefulPartitionedCall�
$sequential_7/StatefulPartitionedCallStatefulPartitionedCallinputssequential_7_22486sequential_7_22488*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_7_layer_call_and_return_conditional_losses_22282�
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCall-sequential_7/StatefulPartitionedCall:output:0conv2d_12_22491conv2d_12_22493*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_12_layer_call_and_return_conditional_losses_22384�
max_pooling2d_4/PartitionedCallPartitionedCall*conv2d_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_22346�
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0conv2d_13_22497conv2d_13_22499*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������}}
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_13_layer_call_and_return_conditional_losses_22402�
max_pooling2d_5/PartitionedCallPartitionedCall*conv2d_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������>>
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_22358�
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_5/PartitionedCall:output:0conv2d_14_22503conv2d_14_22505*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<<
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_14_layer_call_and_return_conditional_losses_22420�
flatten_8/PartitionedCallPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_flatten_8_layer_call_and_return_conditional_losses_22432�
 dense_17/StatefulPartitionedCallStatefulPartitionedCall"flatten_8/PartitionedCall:output:0dense_17_22509dense_17_22511*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_17_layer_call_and_return_conditional_losses_22445x
IdentityIdentity)dense_17/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^conv2d_12/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall%^sequential_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:�����������: : : : : : : : : : 2F
!conv2d_12/StatefulPartitionedCall!conv2d_12/StatefulPartitionedCall2F
!conv2d_13/StatefulPartitionedCall!conv2d_13/StatefulPartitionedCall2F
!conv2d_14/StatefulPartitionedCall!conv2d_14/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2L
$sequential_7/StatefulPartitionedCall$sequential_7/StatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�	
�
,__inference_sequential_9_layer_call_fn_22750

inputs!
unknown:

	unknown_0:
#
	unknown_1:


	unknown_2:
#
	unknown_3:


	unknown_4:

	unknown_5:
��
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_9_layer_call_and_return_conditional_losses_22568o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:�����������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�%
�
G__inference_sequential_9_layer_call_and_return_conditional_losses_22452
sequential_7_input 
sequential_7_22368:	 
sequential_7_22370:	)
conv2d_12_22385:

conv2d_12_22387:
)
conv2d_13_22403:


conv2d_13_22405:
)
conv2d_14_22421:


conv2d_14_22423:
"
dense_17_22446:
��
dense_17_22448:
identity��!conv2d_12/StatefulPartitionedCall�!conv2d_13/StatefulPartitionedCall�!conv2d_14/StatefulPartitionedCall� dense_17/StatefulPartitionedCall�$sequential_7/StatefulPartitionedCall�
$sequential_7/StatefulPartitionedCallStatefulPartitionedCallsequential_7_inputsequential_7_22368sequential_7_22370*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_7_layer_call_and_return_conditional_losses_22282�
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCall-sequential_7/StatefulPartitionedCall:output:0conv2d_12_22385conv2d_12_22387*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_12_layer_call_and_return_conditional_losses_22384�
max_pooling2d_4/PartitionedCallPartitionedCall*conv2d_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_22346�
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0conv2d_13_22403conv2d_13_22405*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������}}
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_13_layer_call_and_return_conditional_losses_22402�
max_pooling2d_5/PartitionedCallPartitionedCall*conv2d_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������>>
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_22358�
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_5/PartitionedCall:output:0conv2d_14_22421conv2d_14_22423*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<<
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_14_layer_call_and_return_conditional_losses_22420�
flatten_8/PartitionedCallPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_flatten_8_layer_call_and_return_conditional_losses_22432�
 dense_17/StatefulPartitionedCallStatefulPartitionedCall"flatten_8/PartitionedCall:output:0dense_17_22446dense_17_22448*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_17_layer_call_and_return_conditional_losses_22445x
IdentityIdentity)dense_17/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^conv2d_12/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall%^sequential_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:�����������: : : : : : : : : : 2F
!conv2d_12/StatefulPartitionedCall!conv2d_12/StatefulPartitionedCall2F
!conv2d_13/StatefulPartitionedCall!conv2d_13/StatefulPartitionedCall2F
!conv2d_14/StatefulPartitionedCall!conv2d_14/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2L
$sequential_7/StatefulPartitionedCall$sequential_7/StatefulPartitionedCall:e a
1
_output_shapes
:�����������
,
_user_specified_namesequential_7_input
�
�
)__inference_conv2d_12_layer_call_fn_23295

inputs!
unknown:

	unknown_0:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_12_layer_call_and_return_conditional_losses_22384y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
K
/__inference_max_pooling2d_4_layer_call_fn_23311

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_22346�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
D__inference_conv2d_14_layer_call_and_return_conditional_losses_22420

inputs8
conv2d_readvariableop_resource:

-
biasadd_readvariableop_resource:

identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:

*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<<
*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<<
X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������<<
i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������<<
w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������>>
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������>>

 
_user_specified_nameinputs
�
�
!__inference__traced_restore_23989
file_prefix;
!assignvariableop_conv2d_12_kernel:
/
!assignvariableop_1_conv2d_12_bias:
=
#assignvariableop_2_conv2d_13_kernel:

/
!assignvariableop_3_conv2d_13_bias:
=
#assignvariableop_4_conv2d_14_kernel:

/
!assignvariableop_5_conv2d_14_bias:
6
"assignvariableop_6_dense_17_kernel:
��.
 assignvariableop_7_dense_17_bias:&
assignvariableop_8_iteration:	 *
 assignvariableop_9_learning_rate: E
+assignvariableop_10_adam_m_conv2d_12_kernel:
E
+assignvariableop_11_adam_v_conv2d_12_kernel:
7
)assignvariableop_12_adam_m_conv2d_12_bias:
7
)assignvariableop_13_adam_v_conv2d_12_bias:
E
+assignvariableop_14_adam_m_conv2d_13_kernel:

E
+assignvariableop_15_adam_v_conv2d_13_kernel:

7
)assignvariableop_16_adam_m_conv2d_13_bias:
7
)assignvariableop_17_adam_v_conv2d_13_bias:
E
+assignvariableop_18_adam_m_conv2d_14_kernel:

E
+assignvariableop_19_adam_v_conv2d_14_kernel:

7
)assignvariableop_20_adam_m_conv2d_14_bias:
7
)assignvariableop_21_adam_v_conv2d_14_bias:
>
*assignvariableop_22_adam_m_dense_17_kernel:
��>
*assignvariableop_23_adam_v_dense_17_kernel:
��6
(assignvariableop_24_adam_m_dense_17_bias:6
(assignvariableop_25_adam_v_dense_17_bias:%
assignvariableop_26_total_1: %
assignvariableop_27_count_1: #
assignvariableop_28_total: #
assignvariableop_29_count: 6
(assignvariableop_30_random_flip_statevar:	:
,assignvariableop_31_random_rotation_statevar:	
identity_33��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:!*
dtype0*�
value�B�!B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer-0/layer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer-0/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:!*
dtype0*U
valueLBJ!B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::*/
dtypes%
#2!			[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_12_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_12_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_13_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_13_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_14_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_14_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_17_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_17_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_iterationIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp assignvariableop_9_learning_rateIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp+assignvariableop_10_adam_m_conv2d_12_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp+assignvariableop_11_adam_v_conv2d_12_kernelIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp)assignvariableop_12_adam_m_conv2d_12_biasIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp)assignvariableop_13_adam_v_conv2d_12_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp+assignvariableop_14_adam_m_conv2d_13_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp+assignvariableop_15_adam_v_conv2d_13_kernelIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp)assignvariableop_16_adam_m_conv2d_13_biasIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp)assignvariableop_17_adam_v_conv2d_13_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_m_conv2d_14_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp+assignvariableop_19_adam_v_conv2d_14_kernelIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp)assignvariableop_20_adam_m_conv2d_14_biasIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp)assignvariableop_21_adam_v_conv2d_14_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_m_dense_17_kernelIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_v_dense_17_kernelIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_m_dense_17_biasIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp(assignvariableop_25_adam_v_dense_17_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOpassignvariableop_26_total_1Identity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOpassignvariableop_27_count_1Identity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOpassignvariableop_28_totalIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOpassignvariableop_29_countIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp(assignvariableop_30_random_flip_statevarIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp,assignvariableop_31_random_rotation_statevarIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_32Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_33IdentityIdentity_32:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_33Identity_33:output:0*U
_input_shapesD
B: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
D__inference_conv2d_13_layer_call_and_return_conditional_losses_22402

inputs8
conv2d_readvariableop_resource:

-
biasadd_readvariableop_resource:

identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:

*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������}}
*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������}}
X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������}}
i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������}}
w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������

 
_user_specified_nameinputs
�

�
,__inference_sequential_9_layer_call_fn_22538
sequential_7_input
unknown:	
	unknown_0:	#
	unknown_1:

	unknown_2:
#
	unknown_3:


	unknown_4:
#
	unknown_5:


	unknown_6:

	unknown_7:
��
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallsequential_7_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_9_layer_call_and_return_conditional_losses_22515o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:�����������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
1
_output_shapes
:�����������
,
_user_specified_namesequential_7_input
�	
�
#__inference_signature_wrapper_22704
sequential_7_input!
unknown:

	unknown_0:
#
	unknown_1:


	unknown_2:
#
	unknown_3:


	unknown_4:

	unknown_5:
��
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallsequential_7_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *)
f$R"
 __inference__wrapped_model_22013o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:�����������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
1
_output_shapes
:�����������
,
_user_specified_namesequential_7_input
��
�
J__inference_random_rotation_layer_call_and_return_conditional_losses_22250

inputs6
(stateful_uniform_rngreadandskip_resource:	
identity��stateful_uniform/RngReadAndSkipI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: d
stateful_uniform/shapePackstrided_slice:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|٠�Y
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|٠?`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:���������z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: �
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*#
_output_shapes
:����������
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*#
_output_shapes
:���������Z
rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?g
rotation_matrix/subSub
Cast_1:y:0rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: ^
rotation_matrix/CosCosstateful_uniform:z:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?k
rotation_matrix/sub_1Sub
Cast_1:y:0 rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: |
rotation_matrix/mulMulrotation_matrix/Cos:y:0rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:���������^
rotation_matrix/SinSinstateful_uniform:z:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?i
rotation_matrix/sub_2SubCast:y:0 rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: ~
rotation_matrix/mul_1Mulrotation_matrix/Sin:y:0rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:���������~
rotation_matrix/sub_3Subrotation_matrix/mul:z:0rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:���������~
rotation_matrix/sub_4Subrotation_matrix/sub:z:0rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:���������^
rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
rotation_matrix/truedivRealDivrotation_matrix/sub_4:z:0"rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?i
rotation_matrix/sub_5SubCast:y:0 rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: `
rotation_matrix/Sin_1Sinstateful_uniform:z:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?k
rotation_matrix/sub_6Sub
Cast_1:y:0 rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: �
rotation_matrix/mul_2Mulrotation_matrix/Sin_1:y:0rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:���������`
rotation_matrix/Cos_1Cosstateful_uniform:z:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?i
rotation_matrix/sub_7SubCast:y:0 rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: �
rotation_matrix/mul_3Mulrotation_matrix/Cos_1:y:0rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:����������
rotation_matrix/addAddV2rotation_matrix/mul_2:z:0rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:���������~
rotation_matrix/sub_8Subrotation_matrix/sub_5:z:0rotation_matrix/add:z:0*
T0*#
_output_shapes
:���������`
rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
rotation_matrix/truediv_1RealDivrotation_matrix/sub_8:z:0$rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:���������g
rotation_matrix/ShapeShapestateful_uniform:z:0*
T0*
_output_shapes
::��m
#rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
rotation_matrix/strided_sliceStridedSlicerotation_matrix/Shape:output:0,rotation_matrix/strided_slice/stack:output:0.rotation_matrix/strided_slice/stack_1:output:0.rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
rotation_matrix/Cos_2Cosstateful_uniform:z:0*
T0*#
_output_shapes
:���������v
%rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_1StridedSlicerotation_matrix/Cos_2:y:0.rotation_matrix/strided_slice_1/stack:output:00rotation_matrix/strided_slice_1/stack_1:output:00rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_2Sinstateful_uniform:z:0*
T0*#
_output_shapes
:���������v
%rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_2StridedSlicerotation_matrix/Sin_2:y:0.rotation_matrix/strided_slice_2/stack:output:00rotation_matrix/strided_slice_2/stack_1:output:00rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_maskv
rotation_matrix/NegNeg(rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:���������v
%rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_3StridedSlicerotation_matrix/truediv:z:0.rotation_matrix/strided_slice_3/stack:output:00rotation_matrix/strided_slice_3/stack_1:output:00rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_3Sinstateful_uniform:z:0*
T0*#
_output_shapes
:���������v
%rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_4StridedSlicerotation_matrix/Sin_3:y:0.rotation_matrix/strided_slice_4/stack:output:00rotation_matrix/strided_slice_4/stack_1:output:00rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Cos_3Cosstateful_uniform:z:0*
T0*#
_output_shapes
:���������v
%rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_5StridedSlicerotation_matrix/Cos_3:y:0.rotation_matrix/strided_slice_5/stack:output:00rotation_matrix/strided_slice_5/stack_1:output:00rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_maskv
%rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_6StridedSlicerotation_matrix/truediv_1:z:0.rotation_matrix/strided_slice_6/stack:output:00rotation_matrix/strided_slice_6/stack_1:output:00rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
rotation_matrix/zeros/packedPack&rotation_matrix/strided_slice:output:0'rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
rotation_matrix/zerosFill%rotation_matrix/zeros/packed:output:0$rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:���������]
rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
rotation_matrix/concatConcatV2(rotation_matrix/strided_slice_1:output:0rotation_matrix/Neg:y:0(rotation_matrix/strided_slice_3:output:0(rotation_matrix/strided_slice_4:output:0(rotation_matrix/strided_slice_5:output:0(rotation_matrix/strided_slice_6:output:0rotation_matrix/zeros:output:0$rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������S
transform/ShapeShapeinputs*
T0*
_output_shapes
::��g
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    �
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputsrotation_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:�����������*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR�
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:�����������h
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:�����������: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
f
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_22346

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
{
+__inference_random_flip_layer_call_fn_23404

inputs
unknown:	
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_random_flip_layer_call_and_return_conditional_losses_22128y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:�����������: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
E
)__inference_flatten_8_layer_call_fn_23371

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_flatten_8_layer_call_and_return_conditional_losses_22432b
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������<<
:W S
/
_output_shapes
:���������<<

 
_user_specified_nameinputs
�
H
,__inference_sequential_7_layer_call_fn_23057

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_7_layer_call_and_return_conditional_losses_22297j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
D__inference_conv2d_13_layer_call_and_return_conditional_losses_23336

inputs8
conv2d_readvariableop_resource:

-
biasadd_readvariableop_resource:

identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:

*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������}}
*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������}}
X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������}}
i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������}}
w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������

 
_user_specified_nameinputs
�
�
G__inference_sequential_7_layer_call_and_return_conditional_losses_22282

inputs
random_flip_22275:	#
random_rotation_22278:	
identity��#random_flip/StatefulPartitionedCall�'random_rotation/StatefulPartitionedCall�
#random_flip/StatefulPartitionedCallStatefulPartitionedCallinputsrandom_flip_22275*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_random_flip_layer_call_and_return_conditional_losses_22128�
'random_rotation/StatefulPartitionedCallStatefulPartitionedCall,random_flip/StatefulPartitionedCall:output:0random_rotation_22278*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_random_rotation_layer_call_and_return_conditional_losses_22250�
IdentityIdentity0random_rotation/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp$^random_flip/StatefulPartitionedCall(^random_rotation/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 2J
#random_flip/StatefulPartitionedCall#random_flip/StatefulPartitionedCall2R
'random_rotation/StatefulPartitionedCall'random_rotation/StatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
,__inference_sequential_7_layer_call_fn_23052

inputs
unknown:	
	unknown_0:	
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_7_layer_call_and_return_conditional_losses_22282y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�

�
,__inference_sequential_9_layer_call_fn_22587
sequential_7_input!
unknown:

	unknown_0:
#
	unknown_1:


	unknown_2:
#
	unknown_3:


	unknown_4:

	unknown_5:
��
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallsequential_7_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_9_layer_call_and_return_conditional_losses_22568o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:�����������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
1
_output_shapes
:�����������
,
_user_specified_namesequential_7_input
�
G
+__inference_random_flip_layer_call_fn_23409

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_random_flip_layer_call_and_return_conditional_losses_22261j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�"
�
G__inference_sequential_9_layer_call_and_return_conditional_losses_22568

inputs)
conv2d_12_22544:

conv2d_12_22546:
)
conv2d_13_22550:


conv2d_13_22552:
)
conv2d_14_22556:


conv2d_14_22558:
"
dense_17_22562:
��
dense_17_22564:
identity��!conv2d_12/StatefulPartitionedCall�!conv2d_13/StatefulPartitionedCall�!conv2d_14/StatefulPartitionedCall� dense_17/StatefulPartitionedCall�
sequential_7/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_7_layer_call_and_return_conditional_losses_22297�
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCall%sequential_7/PartitionedCall:output:0conv2d_12_22544conv2d_12_22546*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_12_layer_call_and_return_conditional_losses_22384�
max_pooling2d_4/PartitionedCallPartitionedCall*conv2d_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_22346�
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0conv2d_13_22550conv2d_13_22552*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������}}
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_13_layer_call_and_return_conditional_losses_22402�
max_pooling2d_5/PartitionedCallPartitionedCall*conv2d_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������>>
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_22358�
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_5/PartitionedCall:output:0conv2d_14_22556conv2d_14_22558*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<<
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_14_layer_call_and_return_conditional_losses_22420�
flatten_8/PartitionedCallPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_flatten_8_layer_call_and_return_conditional_losses_22432�
 dense_17/StatefulPartitionedCallStatefulPartitionedCall"flatten_8/PartitionedCall:output:0dense_17_22562dense_17_22564*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_17_layer_call_and_return_conditional_losses_22445x
IdentityIdentity)dense_17/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^conv2d_12/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:�����������: : : : : : : : 2F
!conv2d_12/StatefulPartitionedCall!conv2d_12/StatefulPartitionedCall2F
!conv2d_13/StatefulPartitionedCall!conv2d_13/StatefulPartitionedCall2F
!conv2d_14/StatefulPartitionedCall!conv2d_14/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
��
�	
G__inference_sequential_9_layer_call_and_return_conditional_losses_23007

inputsX
Jsequential_7_random_flip_stateful_uniform_full_int_rngreadandskip_resource:	S
Esequential_7_random_rotation_stateful_uniform_rngreadandskip_resource:	B
(conv2d_12_conv2d_readvariableop_resource:
7
)conv2d_12_biasadd_readvariableop_resource:
B
(conv2d_13_conv2d_readvariableop_resource:

7
)conv2d_13_biasadd_readvariableop_resource:
B
(conv2d_14_conv2d_readvariableop_resource:

7
)conv2d_14_biasadd_readvariableop_resource:
;
'dense_17_matmul_readvariableop_resource:
��6
(dense_17_biasadd_readvariableop_resource:
identity�� conv2d_12/BiasAdd/ReadVariableOp�conv2d_12/Conv2D/ReadVariableOp� conv2d_13/BiasAdd/ReadVariableOp�conv2d_13/Conv2D/ReadVariableOp� conv2d_14/BiasAdd/ReadVariableOp�conv2d_14/Conv2D/ReadVariableOp�dense_17/BiasAdd/ReadVariableOp�dense_17/MatMul/ReadVariableOp�Asequential_7/random_flip/stateful_uniform_full_int/RngReadAndSkip�Csequential_7/random_flip/stateful_uniform_full_int_1/RngReadAndSkip�<sequential_7/random_rotation/stateful_uniform/RngReadAndSkip�
8sequential_7/random_flip/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:�
8sequential_7/random_flip/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
7sequential_7/random_flip/stateful_uniform_full_int/ProdProdAsequential_7/random_flip/stateful_uniform_full_int/shape:output:0Asequential_7/random_flip/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: {
9sequential_7/random_flip/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
9sequential_7/random_flip/stateful_uniform_full_int/Cast_1Cast@sequential_7/random_flip/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
Asequential_7/random_flip/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkipJsequential_7_random_flip_stateful_uniform_full_int_rngreadandskip_resourceBsequential_7/random_flip/stateful_uniform_full_int/Cast/x:output:0=sequential_7/random_flip/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:�
Fsequential_7/random_flip/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Hsequential_7/random_flip/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Hsequential_7/random_flip/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
@sequential_7/random_flip/stateful_uniform_full_int/strided_sliceStridedSliceIsequential_7/random_flip/stateful_uniform_full_int/RngReadAndSkip:value:0Osequential_7/random_flip/stateful_uniform_full_int/strided_slice/stack:output:0Qsequential_7/random_flip/stateful_uniform_full_int/strided_slice/stack_1:output:0Qsequential_7/random_flip/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
:sequential_7/random_flip/stateful_uniform_full_int/BitcastBitcastIsequential_7/random_flip/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0�
Hsequential_7/random_flip/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
Jsequential_7/random_flip/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Jsequential_7/random_flip/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Bsequential_7/random_flip/stateful_uniform_full_int/strided_slice_1StridedSliceIsequential_7/random_flip/stateful_uniform_full_int/RngReadAndSkip:value:0Qsequential_7/random_flip/stateful_uniform_full_int/strided_slice_1/stack:output:0Ssequential_7/random_flip/stateful_uniform_full_int/strided_slice_1/stack_1:output:0Ssequential_7/random_flip/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
<sequential_7/random_flip/stateful_uniform_full_int/Bitcast_1BitcastKsequential_7/random_flip/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0x
6sequential_7/random_flip/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :�
2sequential_7/random_flip/stateful_uniform_full_intStatelessRandomUniformFullIntV2Asequential_7/random_flip/stateful_uniform_full_int/shape:output:0Esequential_7/random_flip/stateful_uniform_full_int/Bitcast_1:output:0Csequential_7/random_flip/stateful_uniform_full_int/Bitcast:output:0?sequential_7/random_flip/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	m
#sequential_7/random_flip/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R �
sequential_7/random_flip/stackPack;sequential_7/random_flip/stateful_uniform_full_int:output:0,sequential_7/random_flip/zeros_like:output:0*
N*
T0	*
_output_shapes

:}
,sequential_7/random_flip/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
.sequential_7/random_flip/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
.sequential_7/random_flip/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
&sequential_7/random_flip/strided_sliceStridedSlice'sequential_7/random_flip/stack:output:05sequential_7/random_flip/strided_slice/stack:output:07sequential_7/random_flip/strided_slice/stack_1:output:07sequential_7/random_flip/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
Lsequential_7/random_flip/stateless_random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*1
_output_shapes
:������������
?sequential_7/random_flip/stateless_random_flip_left_right/ShapeShapeUsequential_7/random_flip/stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
::���
Msequential_7/random_flip/stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Osequential_7/random_flip/stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Osequential_7/random_flip/stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Gsequential_7/random_flip/stateless_random_flip_left_right/strided_sliceStridedSliceHsequential_7/random_flip/stateless_random_flip_left_right/Shape:output:0Vsequential_7/random_flip/stateless_random_flip_left_right/strided_slice/stack:output:0Xsequential_7/random_flip/stateless_random_flip_left_right/strided_slice/stack_1:output:0Xsequential_7/random_flip/stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Xsequential_7/random_flip/stateless_random_flip_left_right/stateless_random_uniform/shapePackPsequential_7/random_flip/stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:�
Vsequential_7/random_flip/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    �
Vsequential_7/random_flip/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
osequential_7/random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter/sequential_7/random_flip/strided_slice:output:0* 
_output_shapes
::�
osequential_7/random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
ksequential_7/random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2asequential_7/random_flip/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0usequential_7/random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0ysequential_7/random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0xsequential_7/random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:����������
Vsequential_7/random_flip/stateless_random_flip_left_right/stateless_random_uniform/subSub_sequential_7/random_flip/stateless_random_flip_left_right/stateless_random_uniform/max:output:0_sequential_7/random_flip/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
Vsequential_7/random_flip/stateless_random_flip_left_right/stateless_random_uniform/mulMultsequential_7/random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Zsequential_7/random_flip/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:����������
Rsequential_7/random_flip/stateless_random_flip_left_right/stateless_random_uniformAddV2Zsequential_7/random_flip/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0_sequential_7/random_flip/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:����������
Isequential_7/random_flip/stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
Isequential_7/random_flip/stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
Isequential_7/random_flip/stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
Gsequential_7/random_flip/stateless_random_flip_left_right/Reshape/shapePackPsequential_7/random_flip/stateless_random_flip_left_right/strided_slice:output:0Rsequential_7/random_flip/stateless_random_flip_left_right/Reshape/shape/1:output:0Rsequential_7/random_flip/stateless_random_flip_left_right/Reshape/shape/2:output:0Rsequential_7/random_flip/stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
Asequential_7/random_flip/stateless_random_flip_left_right/ReshapeReshapeVsequential_7/random_flip/stateless_random_flip_left_right/stateless_random_uniform:z:0Psequential_7/random_flip/stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:����������
?sequential_7/random_flip/stateless_random_flip_left_right/RoundRoundJsequential_7/random_flip/stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:����������
Hsequential_7/random_flip/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:�
Csequential_7/random_flip/stateless_random_flip_left_right/ReverseV2	ReverseV2Usequential_7/random_flip/stateless_random_flip_left_right/control_dependency:output:0Qsequential_7/random_flip/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:������������
=sequential_7/random_flip/stateless_random_flip_left_right/mulMulCsequential_7/random_flip/stateless_random_flip_left_right/Round:y:0Lsequential_7/random_flip/stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:������������
?sequential_7/random_flip/stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
=sequential_7/random_flip/stateless_random_flip_left_right/subSubHsequential_7/random_flip/stateless_random_flip_left_right/sub/x:output:0Csequential_7/random_flip/stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:����������
?sequential_7/random_flip/stateless_random_flip_left_right/mul_1MulAsequential_7/random_flip/stateless_random_flip_left_right/sub:z:0Usequential_7/random_flip/stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:������������
=sequential_7/random_flip/stateless_random_flip_left_right/addAddV2Asequential_7/random_flip/stateless_random_flip_left_right/mul:z:0Csequential_7/random_flip/stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:������������
:sequential_7/random_flip/stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:�
:sequential_7/random_flip/stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
9sequential_7/random_flip/stateful_uniform_full_int_1/ProdProdCsequential_7/random_flip/stateful_uniform_full_int_1/shape:output:0Csequential_7/random_flip/stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: }
;sequential_7/random_flip/stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
;sequential_7/random_flip/stateful_uniform_full_int_1/Cast_1CastBsequential_7/random_flip/stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
Csequential_7/random_flip/stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkipJsequential_7_random_flip_stateful_uniform_full_int_rngreadandskip_resourceDsequential_7/random_flip/stateful_uniform_full_int_1/Cast/x:output:0?sequential_7/random_flip/stateful_uniform_full_int_1/Cast_1:y:0B^sequential_7/random_flip/stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:�
Hsequential_7/random_flip/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Jsequential_7/random_flip/stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Jsequential_7/random_flip/stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Bsequential_7/random_flip/stateful_uniform_full_int_1/strided_sliceStridedSliceKsequential_7/random_flip/stateful_uniform_full_int_1/RngReadAndSkip:value:0Qsequential_7/random_flip/stateful_uniform_full_int_1/strided_slice/stack:output:0Ssequential_7/random_flip/stateful_uniform_full_int_1/strided_slice/stack_1:output:0Ssequential_7/random_flip/stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
<sequential_7/random_flip/stateful_uniform_full_int_1/BitcastBitcastKsequential_7/random_flip/stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0�
Jsequential_7/random_flip/stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
Lsequential_7/random_flip/stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Lsequential_7/random_flip/stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Dsequential_7/random_flip/stateful_uniform_full_int_1/strided_slice_1StridedSliceKsequential_7/random_flip/stateful_uniform_full_int_1/RngReadAndSkip:value:0Ssequential_7/random_flip/stateful_uniform_full_int_1/strided_slice_1/stack:output:0Usequential_7/random_flip/stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0Usequential_7/random_flip/stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
>sequential_7/random_flip/stateful_uniform_full_int_1/Bitcast_1BitcastMsequential_7/random_flip/stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0z
8sequential_7/random_flip/stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :�
4sequential_7/random_flip/stateful_uniform_full_int_1StatelessRandomUniformFullIntV2Csequential_7/random_flip/stateful_uniform_full_int_1/shape:output:0Gsequential_7/random_flip/stateful_uniform_full_int_1/Bitcast_1:output:0Esequential_7/random_flip/stateful_uniform_full_int_1/Bitcast:output:0Asequential_7/random_flip/stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	o
%sequential_7/random_flip/zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R �
 sequential_7/random_flip/stack_1Pack=sequential_7/random_flip/stateful_uniform_full_int_1:output:0.sequential_7/random_flip/zeros_like_1:output:0*
N*
T0	*
_output_shapes

:
.sequential_7/random_flip/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
0sequential_7/random_flip/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
0sequential_7/random_flip/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
(sequential_7/random_flip/strided_slice_1StridedSlice)sequential_7/random_flip/stack_1:output:07sequential_7/random_flip/strided_slice_1/stack:output:09sequential_7/random_flip/strided_slice_1/stack_1:output:09sequential_7/random_flip/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
Isequential_7/random_flip/stateless_random_flip_up_down/control_dependencyIdentityAsequential_7/random_flip/stateless_random_flip_left_right/add:z:0*
T0*P
_classF
DBloc:@sequential_7/random_flip/stateless_random_flip_left_right/add*1
_output_shapes
:������������
<sequential_7/random_flip/stateless_random_flip_up_down/ShapeShapeRsequential_7/random_flip/stateless_random_flip_up_down/control_dependency:output:0*
T0*
_output_shapes
::���
Jsequential_7/random_flip/stateless_random_flip_up_down/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Lsequential_7/random_flip/stateless_random_flip_up_down/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Lsequential_7/random_flip/stateless_random_flip_up_down/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Dsequential_7/random_flip/stateless_random_flip_up_down/strided_sliceStridedSliceEsequential_7/random_flip/stateless_random_flip_up_down/Shape:output:0Ssequential_7/random_flip/stateless_random_flip_up_down/strided_slice/stack:output:0Usequential_7/random_flip/stateless_random_flip_up_down/strided_slice/stack_1:output:0Usequential_7/random_flip/stateless_random_flip_up_down/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Usequential_7/random_flip/stateless_random_flip_up_down/stateless_random_uniform/shapePackMsequential_7/random_flip/stateless_random_flip_up_down/strided_slice:output:0*
N*
T0*
_output_shapes
:�
Ssequential_7/random_flip/stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    �
Ssequential_7/random_flip/stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
lsequential_7/random_flip/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter1sequential_7/random_flip/strided_slice_1:output:0* 
_output_shapes
::�
lsequential_7/random_flip/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
hsequential_7/random_flip/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2^sequential_7/random_flip/stateless_random_flip_up_down/stateless_random_uniform/shape:output:0rsequential_7/random_flip/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0vsequential_7/random_flip/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0usequential_7/random_flip/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:����������
Ssequential_7/random_flip/stateless_random_flip_up_down/stateless_random_uniform/subSub\sequential_7/random_flip/stateless_random_flip_up_down/stateless_random_uniform/max:output:0\sequential_7/random_flip/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
Ssequential_7/random_flip/stateless_random_flip_up_down/stateless_random_uniform/mulMulqsequential_7/random_flip/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0Wsequential_7/random_flip/stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:����������
Osequential_7/random_flip/stateless_random_flip_up_down/stateless_random_uniformAddV2Wsequential_7/random_flip/stateless_random_flip_up_down/stateless_random_uniform/mul:z:0\sequential_7/random_flip/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:����������
Fsequential_7/random_flip/stateless_random_flip_up_down/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
Fsequential_7/random_flip/stateless_random_flip_up_down/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
Fsequential_7/random_flip/stateless_random_flip_up_down/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
Dsequential_7/random_flip/stateless_random_flip_up_down/Reshape/shapePackMsequential_7/random_flip/stateless_random_flip_up_down/strided_slice:output:0Osequential_7/random_flip/stateless_random_flip_up_down/Reshape/shape/1:output:0Osequential_7/random_flip/stateless_random_flip_up_down/Reshape/shape/2:output:0Osequential_7/random_flip/stateless_random_flip_up_down/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
>sequential_7/random_flip/stateless_random_flip_up_down/ReshapeReshapeSsequential_7/random_flip/stateless_random_flip_up_down/stateless_random_uniform:z:0Msequential_7/random_flip/stateless_random_flip_up_down/Reshape/shape:output:0*
T0*/
_output_shapes
:����������
<sequential_7/random_flip/stateless_random_flip_up_down/RoundRoundGsequential_7/random_flip/stateless_random_flip_up_down/Reshape:output:0*
T0*/
_output_shapes
:����������
Esequential_7/random_flip/stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:�
@sequential_7/random_flip/stateless_random_flip_up_down/ReverseV2	ReverseV2Rsequential_7/random_flip/stateless_random_flip_up_down/control_dependency:output:0Nsequential_7/random_flip/stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*1
_output_shapes
:������������
:sequential_7/random_flip/stateless_random_flip_up_down/mulMul@sequential_7/random_flip/stateless_random_flip_up_down/Round:y:0Isequential_7/random_flip/stateless_random_flip_up_down/ReverseV2:output:0*
T0*1
_output_shapes
:������������
<sequential_7/random_flip/stateless_random_flip_up_down/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
:sequential_7/random_flip/stateless_random_flip_up_down/subSubEsequential_7/random_flip/stateless_random_flip_up_down/sub/x:output:0@sequential_7/random_flip/stateless_random_flip_up_down/Round:y:0*
T0*/
_output_shapes
:����������
<sequential_7/random_flip/stateless_random_flip_up_down/mul_1Mul>sequential_7/random_flip/stateless_random_flip_up_down/sub:z:0Rsequential_7/random_flip/stateless_random_flip_up_down/control_dependency:output:0*
T0*1
_output_shapes
:������������
:sequential_7/random_flip/stateless_random_flip_up_down/addAddV2>sequential_7/random_flip/stateless_random_flip_up_down/mul:z:0@sequential_7/random_flip/stateless_random_flip_up_down/mul_1:z:0*
T0*1
_output_shapes
:������������
"sequential_7/random_rotation/ShapeShape>sequential_7/random_flip/stateless_random_flip_up_down/add:z:0*
T0*
_output_shapes
::��z
0sequential_7/random_rotation/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2sequential_7/random_rotation/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2sequential_7/random_rotation/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
*sequential_7/random_rotation/strided_sliceStridedSlice+sequential_7/random_rotation/Shape:output:09sequential_7/random_rotation/strided_slice/stack:output:0;sequential_7/random_rotation/strided_slice/stack_1:output:0;sequential_7/random_rotation/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
2sequential_7/random_rotation/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
����������
4sequential_7/random_rotation/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������~
4sequential_7/random_rotation/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
,sequential_7/random_rotation/strided_slice_1StridedSlice+sequential_7/random_rotation/Shape:output:0;sequential_7/random_rotation/strided_slice_1/stack:output:0=sequential_7/random_rotation/strided_slice_1/stack_1:output:0=sequential_7/random_rotation/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
!sequential_7/random_rotation/CastCast5sequential_7/random_rotation/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: �
2sequential_7/random_rotation/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
����������
4sequential_7/random_rotation/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������~
4sequential_7/random_rotation/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
,sequential_7/random_rotation/strided_slice_2StridedSlice+sequential_7/random_rotation/Shape:output:0;sequential_7/random_rotation/strided_slice_2/stack:output:0=sequential_7/random_rotation/strided_slice_2/stack_1:output:0=sequential_7/random_rotation/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
#sequential_7/random_rotation/Cast_1Cast5sequential_7/random_rotation/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: �
3sequential_7/random_rotation/stateful_uniform/shapePack3sequential_7/random_rotation/strided_slice:output:0*
N*
T0*
_output_shapes
:v
1sequential_7/random_rotation/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|٠�v
1sequential_7/random_rotation/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|٠?}
3sequential_7/random_rotation/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
2sequential_7/random_rotation/stateful_uniform/ProdProd<sequential_7/random_rotation/stateful_uniform/shape:output:0<sequential_7/random_rotation/stateful_uniform/Const:output:0*
T0*
_output_shapes
: v
4sequential_7/random_rotation/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
4sequential_7/random_rotation/stateful_uniform/Cast_1Cast;sequential_7/random_rotation/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
<sequential_7/random_rotation/stateful_uniform/RngReadAndSkipRngReadAndSkipEsequential_7_random_rotation_stateful_uniform_rngreadandskip_resource=sequential_7/random_rotation/stateful_uniform/Cast/x:output:08sequential_7/random_rotation/stateful_uniform/Cast_1:y:0*
_output_shapes
:�
Asequential_7/random_rotation/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Csequential_7/random_rotation/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Csequential_7/random_rotation/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
;sequential_7/random_rotation/stateful_uniform/strided_sliceStridedSliceDsequential_7/random_rotation/stateful_uniform/RngReadAndSkip:value:0Jsequential_7/random_rotation/stateful_uniform/strided_slice/stack:output:0Lsequential_7/random_rotation/stateful_uniform/strided_slice/stack_1:output:0Lsequential_7/random_rotation/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
5sequential_7/random_rotation/stateful_uniform/BitcastBitcastDsequential_7/random_rotation/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0�
Csequential_7/random_rotation/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
Esequential_7/random_rotation/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Esequential_7/random_rotation/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
=sequential_7/random_rotation/stateful_uniform/strided_slice_1StridedSliceDsequential_7/random_rotation/stateful_uniform/RngReadAndSkip:value:0Lsequential_7/random_rotation/stateful_uniform/strided_slice_1/stack:output:0Nsequential_7/random_rotation/stateful_uniform/strided_slice_1/stack_1:output:0Nsequential_7/random_rotation/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
7sequential_7/random_rotation/stateful_uniform/Bitcast_1BitcastFsequential_7/random_rotation/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0�
Jsequential_7/random_rotation/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
Fsequential_7/random_rotation/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2<sequential_7/random_rotation/stateful_uniform/shape:output:0@sequential_7/random_rotation/stateful_uniform/Bitcast_1:output:0>sequential_7/random_rotation/stateful_uniform/Bitcast:output:0Ssequential_7/random_rotation/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:����������
1sequential_7/random_rotation/stateful_uniform/subSub:sequential_7/random_rotation/stateful_uniform/max:output:0:sequential_7/random_rotation/stateful_uniform/min:output:0*
T0*
_output_shapes
: �
1sequential_7/random_rotation/stateful_uniform/mulMulOsequential_7/random_rotation/stateful_uniform/StatelessRandomUniformV2:output:05sequential_7/random_rotation/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:����������
-sequential_7/random_rotation/stateful_uniformAddV25sequential_7/random_rotation/stateful_uniform/mul:z:0:sequential_7/random_rotation/stateful_uniform/min:output:0*
T0*#
_output_shapes
:���������w
2sequential_7/random_rotation/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
0sequential_7/random_rotation/rotation_matrix/subSub'sequential_7/random_rotation/Cast_1:y:0;sequential_7/random_rotation/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: �
0sequential_7/random_rotation/rotation_matrix/CosCos1sequential_7/random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:���������y
4sequential_7/random_rotation/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
2sequential_7/random_rotation/rotation_matrix/sub_1Sub'sequential_7/random_rotation/Cast_1:y:0=sequential_7/random_rotation/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: �
0sequential_7/random_rotation/rotation_matrix/mulMul4sequential_7/random_rotation/rotation_matrix/Cos:y:06sequential_7/random_rotation/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:����������
0sequential_7/random_rotation/rotation_matrix/SinSin1sequential_7/random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:���������y
4sequential_7/random_rotation/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
2sequential_7/random_rotation/rotation_matrix/sub_2Sub%sequential_7/random_rotation/Cast:y:0=sequential_7/random_rotation/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: �
2sequential_7/random_rotation/rotation_matrix/mul_1Mul4sequential_7/random_rotation/rotation_matrix/Sin:y:06sequential_7/random_rotation/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:����������
2sequential_7/random_rotation/rotation_matrix/sub_3Sub4sequential_7/random_rotation/rotation_matrix/mul:z:06sequential_7/random_rotation/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:����������
2sequential_7/random_rotation/rotation_matrix/sub_4Sub4sequential_7/random_rotation/rotation_matrix/sub:z:06sequential_7/random_rotation/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:���������{
6sequential_7/random_rotation/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
4sequential_7/random_rotation/rotation_matrix/truedivRealDiv6sequential_7/random_rotation/rotation_matrix/sub_4:z:0?sequential_7/random_rotation/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:���������y
4sequential_7/random_rotation/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
2sequential_7/random_rotation/rotation_matrix/sub_5Sub%sequential_7/random_rotation/Cast:y:0=sequential_7/random_rotation/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: �
2sequential_7/random_rotation/rotation_matrix/Sin_1Sin1sequential_7/random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:���������y
4sequential_7/random_rotation/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
2sequential_7/random_rotation/rotation_matrix/sub_6Sub'sequential_7/random_rotation/Cast_1:y:0=sequential_7/random_rotation/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: �
2sequential_7/random_rotation/rotation_matrix/mul_2Mul6sequential_7/random_rotation/rotation_matrix/Sin_1:y:06sequential_7/random_rotation/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:����������
2sequential_7/random_rotation/rotation_matrix/Cos_1Cos1sequential_7/random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:���������y
4sequential_7/random_rotation/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
2sequential_7/random_rotation/rotation_matrix/sub_7Sub%sequential_7/random_rotation/Cast:y:0=sequential_7/random_rotation/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: �
2sequential_7/random_rotation/rotation_matrix/mul_3Mul6sequential_7/random_rotation/rotation_matrix/Cos_1:y:06sequential_7/random_rotation/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:����������
0sequential_7/random_rotation/rotation_matrix/addAddV26sequential_7/random_rotation/rotation_matrix/mul_2:z:06sequential_7/random_rotation/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:����������
2sequential_7/random_rotation/rotation_matrix/sub_8Sub6sequential_7/random_rotation/rotation_matrix/sub_5:z:04sequential_7/random_rotation/rotation_matrix/add:z:0*
T0*#
_output_shapes
:���������}
8sequential_7/random_rotation/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
6sequential_7/random_rotation/rotation_matrix/truediv_1RealDiv6sequential_7/random_rotation/rotation_matrix/sub_8:z:0Asequential_7/random_rotation/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:����������
2sequential_7/random_rotation/rotation_matrix/ShapeShape1sequential_7/random_rotation/stateful_uniform:z:0*
T0*
_output_shapes
::���
@sequential_7/random_rotation/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Bsequential_7/random_rotation/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Bsequential_7/random_rotation/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
:sequential_7/random_rotation/rotation_matrix/strided_sliceStridedSlice;sequential_7/random_rotation/rotation_matrix/Shape:output:0Isequential_7/random_rotation/rotation_matrix/strided_slice/stack:output:0Ksequential_7/random_rotation/rotation_matrix/strided_slice/stack_1:output:0Ksequential_7/random_rotation/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
2sequential_7/random_rotation/rotation_matrix/Cos_2Cos1sequential_7/random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:����������
Bsequential_7/random_rotation/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
Dsequential_7/random_rotation/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
Dsequential_7/random_rotation/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
<sequential_7/random_rotation/rotation_matrix/strided_slice_1StridedSlice6sequential_7/random_rotation/rotation_matrix/Cos_2:y:0Ksequential_7/random_rotation/rotation_matrix/strided_slice_1/stack:output:0Msequential_7/random_rotation/rotation_matrix/strided_slice_1/stack_1:output:0Msequential_7/random_rotation/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask�
2sequential_7/random_rotation/rotation_matrix/Sin_2Sin1sequential_7/random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:����������
Bsequential_7/random_rotation/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
Dsequential_7/random_rotation/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
Dsequential_7/random_rotation/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
<sequential_7/random_rotation/rotation_matrix/strided_slice_2StridedSlice6sequential_7/random_rotation/rotation_matrix/Sin_2:y:0Ksequential_7/random_rotation/rotation_matrix/strided_slice_2/stack:output:0Msequential_7/random_rotation/rotation_matrix/strided_slice_2/stack_1:output:0Msequential_7/random_rotation/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask�
0sequential_7/random_rotation/rotation_matrix/NegNegEsequential_7/random_rotation/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:����������
Bsequential_7/random_rotation/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
Dsequential_7/random_rotation/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
Dsequential_7/random_rotation/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
<sequential_7/random_rotation/rotation_matrix/strided_slice_3StridedSlice8sequential_7/random_rotation/rotation_matrix/truediv:z:0Ksequential_7/random_rotation/rotation_matrix/strided_slice_3/stack:output:0Msequential_7/random_rotation/rotation_matrix/strided_slice_3/stack_1:output:0Msequential_7/random_rotation/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask�
2sequential_7/random_rotation/rotation_matrix/Sin_3Sin1sequential_7/random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:����������
Bsequential_7/random_rotation/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
Dsequential_7/random_rotation/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
Dsequential_7/random_rotation/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
<sequential_7/random_rotation/rotation_matrix/strided_slice_4StridedSlice6sequential_7/random_rotation/rotation_matrix/Sin_3:y:0Ksequential_7/random_rotation/rotation_matrix/strided_slice_4/stack:output:0Msequential_7/random_rotation/rotation_matrix/strided_slice_4/stack_1:output:0Msequential_7/random_rotation/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask�
2sequential_7/random_rotation/rotation_matrix/Cos_3Cos1sequential_7/random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:����������
Bsequential_7/random_rotation/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
Dsequential_7/random_rotation/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
Dsequential_7/random_rotation/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
<sequential_7/random_rotation/rotation_matrix/strided_slice_5StridedSlice6sequential_7/random_rotation/rotation_matrix/Cos_3:y:0Ksequential_7/random_rotation/rotation_matrix/strided_slice_5/stack:output:0Msequential_7/random_rotation/rotation_matrix/strided_slice_5/stack_1:output:0Msequential_7/random_rotation/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask�
Bsequential_7/random_rotation/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
Dsequential_7/random_rotation/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
Dsequential_7/random_rotation/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
<sequential_7/random_rotation/rotation_matrix/strided_slice_6StridedSlice:sequential_7/random_rotation/rotation_matrix/truediv_1:z:0Ksequential_7/random_rotation/rotation_matrix/strided_slice_6/stack:output:0Msequential_7/random_rotation/rotation_matrix/strided_slice_6/stack_1:output:0Msequential_7/random_rotation/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask}
;sequential_7/random_rotation/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
9sequential_7/random_rotation/rotation_matrix/zeros/packedPackCsequential_7/random_rotation/rotation_matrix/strided_slice:output:0Dsequential_7/random_rotation/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:}
8sequential_7/random_rotation/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
2sequential_7/random_rotation/rotation_matrix/zerosFillBsequential_7/random_rotation/rotation_matrix/zeros/packed:output:0Asequential_7/random_rotation/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:���������z
8sequential_7/random_rotation/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
3sequential_7/random_rotation/rotation_matrix/concatConcatV2Esequential_7/random_rotation/rotation_matrix/strided_slice_1:output:04sequential_7/random_rotation/rotation_matrix/Neg:y:0Esequential_7/random_rotation/rotation_matrix/strided_slice_3:output:0Esequential_7/random_rotation/rotation_matrix/strided_slice_4:output:0Esequential_7/random_rotation/rotation_matrix/strided_slice_5:output:0Esequential_7/random_rotation/rotation_matrix/strided_slice_6:output:0;sequential_7/random_rotation/rotation_matrix/zeros:output:0Asequential_7/random_rotation/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:����������
,sequential_7/random_rotation/transform/ShapeShape>sequential_7/random_flip/stateless_random_flip_up_down/add:z:0*
T0*
_output_shapes
::���
:sequential_7/random_rotation/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:�
<sequential_7/random_rotation/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
<sequential_7/random_rotation/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
4sequential_7/random_rotation/transform/strided_sliceStridedSlice5sequential_7/random_rotation/transform/Shape:output:0Csequential_7/random_rotation/transform/strided_slice/stack:output:0Esequential_7/random_rotation/transform/strided_slice/stack_1:output:0Esequential_7/random_rotation/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:v
1sequential_7/random_rotation/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    �
Asequential_7/random_rotation/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3>sequential_7/random_flip/stateless_random_flip_up_down/add:z:0<sequential_7/random_rotation/rotation_matrix/concat:output:0=sequential_7/random_rotation/transform/strided_slice:output:0:sequential_7/random_rotation/transform/fill_value:output:0*1
_output_shapes
:�����������*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR�
conv2d_12/Conv2D/ReadVariableOpReadVariableOp(conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
:
*
dtype0�
conv2d_12/Conv2DConv2DVsequential_7/random_rotation/transform/ImageProjectiveTransformV3:transformed_images:0'conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������
*
paddingVALID*
strides
�
 conv2d_12/BiasAdd/ReadVariableOpReadVariableOp)conv2d_12_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
conv2d_12/BiasAddBiasAddconv2d_12/Conv2D:output:0(conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������
n
conv2d_12/ReluReluconv2d_12/BiasAdd:output:0*
T0*1
_output_shapes
:�����������
�
max_pooling2d_4/MaxPoolMaxPoolconv2d_12/Relu:activations:0*/
_output_shapes
:���������
*
ksize
*
paddingVALID*
strides
�
conv2d_13/Conv2D/ReadVariableOpReadVariableOp(conv2d_13_conv2d_readvariableop_resource*&
_output_shapes
:

*
dtype0�
conv2d_13/Conv2DConv2D max_pooling2d_4/MaxPool:output:0'conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������}}
*
paddingVALID*
strides
�
 conv2d_13/BiasAdd/ReadVariableOpReadVariableOp)conv2d_13_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
conv2d_13/BiasAddBiasAddconv2d_13/Conv2D:output:0(conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������}}
l
conv2d_13/ReluReluconv2d_13/BiasAdd:output:0*
T0*/
_output_shapes
:���������}}
�
max_pooling2d_5/MaxPoolMaxPoolconv2d_13/Relu:activations:0*/
_output_shapes
:���������>>
*
ksize
*
paddingVALID*
strides
�
conv2d_14/Conv2D/ReadVariableOpReadVariableOp(conv2d_14_conv2d_readvariableop_resource*&
_output_shapes
:

*
dtype0�
conv2d_14/Conv2DConv2D max_pooling2d_5/MaxPool:output:0'conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<<
*
paddingVALID*
strides
�
 conv2d_14/BiasAdd/ReadVariableOpReadVariableOp)conv2d_14_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
conv2d_14/BiasAddBiasAddconv2d_14/Conv2D:output:0(conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<<
l
conv2d_14/ReluReluconv2d_14/BiasAdd:output:0*
T0*/
_output_shapes
:���������<<
`
flatten_8/ConstConst*
_output_shapes
:*
dtype0*
valueB"������  �
flatten_8/ReshapeReshapeconv2d_14/Relu:activations:0flatten_8/Const:output:0*
T0*)
_output_shapes
:������������
dense_17/MatMul/ReadVariableOpReadVariableOp'dense_17_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_17/MatMulMatMulflatten_8/Reshape:output:0&dense_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_17/BiasAdd/ReadVariableOpReadVariableOp(dense_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_17/BiasAddBiasAdddense_17/MatMul:product:0'dense_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h
dense_17/SigmoidSigmoiddense_17/BiasAdd:output:0*
T0*'
_output_shapes
:���������c
IdentityIdentitydense_17/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^conv2d_12/BiasAdd/ReadVariableOp ^conv2d_12/Conv2D/ReadVariableOp!^conv2d_13/BiasAdd/ReadVariableOp ^conv2d_13/Conv2D/ReadVariableOp!^conv2d_14/BiasAdd/ReadVariableOp ^conv2d_14/Conv2D/ReadVariableOp ^dense_17/BiasAdd/ReadVariableOp^dense_17/MatMul/ReadVariableOpB^sequential_7/random_flip/stateful_uniform_full_int/RngReadAndSkipD^sequential_7/random_flip/stateful_uniform_full_int_1/RngReadAndSkip=^sequential_7/random_rotation/stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:�����������: : : : : : : : : : 2D
 conv2d_12/BiasAdd/ReadVariableOp conv2d_12/BiasAdd/ReadVariableOp2B
conv2d_12/Conv2D/ReadVariableOpconv2d_12/Conv2D/ReadVariableOp2D
 conv2d_13/BiasAdd/ReadVariableOp conv2d_13/BiasAdd/ReadVariableOp2B
conv2d_13/Conv2D/ReadVariableOpconv2d_13/Conv2D/ReadVariableOp2D
 conv2d_14/BiasAdd/ReadVariableOp conv2d_14/BiasAdd/ReadVariableOp2B
conv2d_14/Conv2D/ReadVariableOpconv2d_14/Conv2D/ReadVariableOp2B
dense_17/BiasAdd/ReadVariableOpdense_17/BiasAdd/ReadVariableOp2@
dense_17/MatMul/ReadVariableOpdense_17/MatMul/ReadVariableOp2�
Asequential_7/random_flip/stateful_uniform_full_int/RngReadAndSkipAsequential_7/random_flip/stateful_uniform_full_int/RngReadAndSkip2�
Csequential_7/random_flip/stateful_uniform_full_int_1/RngReadAndSkipCsequential_7/random_flip/stateful_uniform_full_int_1/RngReadAndSkip2|
<sequential_7/random_rotation/stateful_uniform/RngReadAndSkip<sequential_7/random_rotation/stateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
f
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_22358

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
b
F__inference_random_flip_layer_call_and_return_conditional_losses_22261

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
f
J__inference_random_rotation_layer_call_and_return_conditional_losses_22266

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
(__inference_dense_17_layer_call_fn_23386

inputs
unknown:
��
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_17_layer_call_and_return_conditional_losses_22445o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:�����������
 
_user_specified_nameinputs
�
f
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_23346

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
��
�
F__inference_random_flip_layer_call_and_return_conditional_losses_22128

inputs?
1stateful_uniform_full_int_rngreadandskip_resource:	
identity��(stateful_uniform_full_int/RngReadAndSkip�*stateful_uniform_full_int_1/RngReadAndSkipi
stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:i
stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
stateful_uniform_full_int/ProdProd(stateful_uniform_full_int/shape:output:0(stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: b
 stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
 stateful_uniform_full_int/Cast_1Cast'stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
(stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip1stateful_uniform_full_int_rngreadandskip_resource)stateful_uniform_full_int/Cast/x:output:0$stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:w
-stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'stateful_uniform_full_int/strided_sliceStridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:06stateful_uniform_full_int/strided_slice/stack:output:08stateful_uniform_full_int/strided_slice/stack_1:output:08stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
!stateful_uniform_full_int/BitcastBitcast0stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0y
/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)stateful_uniform_full_int/strided_slice_1StridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:08stateful_uniform_full_int/strided_slice_1/stack:output:0:stateful_uniform_full_int/strided_slice_1/stack_1:output:0:stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
#stateful_uniform_full_int/Bitcast_1Bitcast2stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0_
stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :�
stateful_uniform_full_intStatelessRandomUniformFullIntV2(stateful_uniform_full_int/shape:output:0,stateful_uniform_full_int/Bitcast_1:output:0*stateful_uniform_full_int/Bitcast:output:0&stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	T

zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R x
stackPack"stateful_uniform_full_int:output:0zeros_like:output:0*
N*
T0	*
_output_shapes

:d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_sliceStridedSlicestack:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
3stateless_random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*1
_output_shapes
:������������
&stateless_random_flip_left_right/ShapeShape<stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
::��~
4stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
6stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
6stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
.stateless_random_flip_left_right/strided_sliceStridedSlice/stateless_random_flip_left_right/Shape:output:0=stateless_random_flip_left_right/strided_slice/stack:output:0?stateless_random_flip_left_right/strided_slice/stack_1:output:0?stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
?stateless_random_flip_left_right/stateless_random_uniform/shapePack7stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:�
=stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    �
=stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice:output:0* 
_output_shapes
::�
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
Rstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Hstateless_random_flip_left_right/stateless_random_uniform/shape:output:0\stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0`stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0_stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:����������
=stateless_random_flip_left_right/stateless_random_uniform/subSubFstateless_random_flip_left_right/stateless_random_uniform/max:output:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
=stateless_random_flip_left_right/stateless_random_uniform/mulMul[stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Astateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:����������
9stateless_random_flip_left_right/stateless_random_uniformAddV2Astateless_random_flip_left_right/stateless_random_uniform/mul:z:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:���������r
0stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :r
0stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :r
0stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
.stateless_random_flip_left_right/Reshape/shapePack7stateless_random_flip_left_right/strided_slice:output:09stateless_random_flip_left_right/Reshape/shape/1:output:09stateless_random_flip_left_right/Reshape/shape/2:output:09stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
(stateless_random_flip_left_right/ReshapeReshape=stateless_random_flip_left_right/stateless_random_uniform:z:07stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:����������
&stateless_random_flip_left_right/RoundRound1stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:���������y
/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:�
*stateless_random_flip_left_right/ReverseV2	ReverseV2<stateless_random_flip_left_right/control_dependency:output:08stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:������������
$stateless_random_flip_left_right/mulMul*stateless_random_flip_left_right/Round:y:03stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:�����������k
&stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
$stateless_random_flip_left_right/subSub/stateless_random_flip_left_right/sub/x:output:0*stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:����������
&stateless_random_flip_left_right/mul_1Mul(stateless_random_flip_left_right/sub:z:0<stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:������������
$stateless_random_flip_left_right/addAddV2(stateless_random_flip_left_right/mul:z:0*stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:�����������k
!stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:k
!stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
 stateful_uniform_full_int_1/ProdProd*stateful_uniform_full_int_1/shape:output:0*stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: d
"stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
"stateful_uniform_full_int_1/Cast_1Cast)stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
*stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkip1stateful_uniform_full_int_rngreadandskip_resource+stateful_uniform_full_int_1/Cast/x:output:0&stateful_uniform_full_int_1/Cast_1:y:0)^stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:y
/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)stateful_uniform_full_int_1/strided_sliceStridedSlice2stateful_uniform_full_int_1/RngReadAndSkip:value:08stateful_uniform_full_int_1/strided_slice/stack:output:0:stateful_uniform_full_int_1/strided_slice/stack_1:output:0:stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
#stateful_uniform_full_int_1/BitcastBitcast2stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0{
1stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:}
3stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
+stateful_uniform_full_int_1/strided_slice_1StridedSlice2stateful_uniform_full_int_1/RngReadAndSkip:value:0:stateful_uniform_full_int_1/strided_slice_1/stack:output:0<stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0<stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
%stateful_uniform_full_int_1/Bitcast_1Bitcast4stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0a
stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :�
stateful_uniform_full_int_1StatelessRandomUniformFullIntV2*stateful_uniform_full_int_1/shape:output:0.stateful_uniform_full_int_1/Bitcast_1:output:0,stateful_uniform_full_int_1/Bitcast:output:0(stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	V
zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R ~
stack_1Pack$stateful_uniform_full_int_1:output:0zeros_like_1:output:0*
N*
T0	*
_output_shapes

:f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSlicestack_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
0stateless_random_flip_up_down/control_dependencyIdentity(stateless_random_flip_left_right/add:z:0*
T0*7
_class-
+)loc:@stateless_random_flip_left_right/add*1
_output_shapes
:������������
#stateless_random_flip_up_down/ShapeShape9stateless_random_flip_up_down/control_dependency:output:0*
T0*
_output_shapes
::��{
1stateless_random_flip_up_down/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3stateless_random_flip_up_down/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3stateless_random_flip_up_down/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
+stateless_random_flip_up_down/strided_sliceStridedSlice,stateless_random_flip_up_down/Shape:output:0:stateless_random_flip_up_down/strided_slice/stack:output:0<stateless_random_flip_up_down/strided_slice/stack_1:output:0<stateless_random_flip_up_down/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
<stateless_random_flip_up_down/stateless_random_uniform/shapePack4stateless_random_flip_up_down/strided_slice:output:0*
N*
T0*
_output_shapes
:
:stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
:stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
Sstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice_1:output:0* 
_output_shapes
::�
Sstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
Ostateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Estateless_random_flip_up_down/stateless_random_uniform/shape:output:0Ystateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0]stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0\stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:����������
:stateless_random_flip_up_down/stateless_random_uniform/subSubCstateless_random_flip_up_down/stateless_random_uniform/max:output:0Cstateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
:stateless_random_flip_up_down/stateless_random_uniform/mulMulXstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0>stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:����������
6stateless_random_flip_up_down/stateless_random_uniformAddV2>stateless_random_flip_up_down/stateless_random_uniform/mul:z:0Cstateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:���������o
-stateless_random_flip_up_down/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :o
-stateless_random_flip_up_down/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :o
-stateless_random_flip_up_down/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
+stateless_random_flip_up_down/Reshape/shapePack4stateless_random_flip_up_down/strided_slice:output:06stateless_random_flip_up_down/Reshape/shape/1:output:06stateless_random_flip_up_down/Reshape/shape/2:output:06stateless_random_flip_up_down/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
%stateless_random_flip_up_down/ReshapeReshape:stateless_random_flip_up_down/stateless_random_uniform:z:04stateless_random_flip_up_down/Reshape/shape:output:0*
T0*/
_output_shapes
:����������
#stateless_random_flip_up_down/RoundRound.stateless_random_flip_up_down/Reshape:output:0*
T0*/
_output_shapes
:���������v
,stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:�
'stateless_random_flip_up_down/ReverseV2	ReverseV29stateless_random_flip_up_down/control_dependency:output:05stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*1
_output_shapes
:������������
!stateless_random_flip_up_down/mulMul'stateless_random_flip_up_down/Round:y:00stateless_random_flip_up_down/ReverseV2:output:0*
T0*1
_output_shapes
:�����������h
#stateless_random_flip_up_down/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
!stateless_random_flip_up_down/subSub,stateless_random_flip_up_down/sub/x:output:0'stateless_random_flip_up_down/Round:y:0*
T0*/
_output_shapes
:����������
#stateless_random_flip_up_down/mul_1Mul%stateless_random_flip_up_down/sub:z:09stateless_random_flip_up_down/control_dependency:output:0*
T0*1
_output_shapes
:������������
!stateless_random_flip_up_down/addAddV2%stateless_random_flip_up_down/mul:z:0'stateless_random_flip_up_down/mul_1:z:0*
T0*1
_output_shapes
:�����������~
IdentityIdentity%stateless_random_flip_up_down/add:z:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp)^stateful_uniform_full_int/RngReadAndSkip+^stateful_uniform_full_int_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:�����������: 2T
(stateful_uniform_full_int/RngReadAndSkip(stateful_uniform_full_int/RngReadAndSkip2X
*stateful_uniform_full_int_1/RngReadAndSkip*stateful_uniform_full_int_1/RngReadAndSkip:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
��
�
F__inference_random_flip_layer_call_and_return_conditional_losses_23520

inputs?
1stateful_uniform_full_int_rngreadandskip_resource:	
identity��(stateful_uniform_full_int/RngReadAndSkip�*stateful_uniform_full_int_1/RngReadAndSkipi
stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:i
stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
stateful_uniform_full_int/ProdProd(stateful_uniform_full_int/shape:output:0(stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: b
 stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
 stateful_uniform_full_int/Cast_1Cast'stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
(stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip1stateful_uniform_full_int_rngreadandskip_resource)stateful_uniform_full_int/Cast/x:output:0$stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:w
-stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'stateful_uniform_full_int/strided_sliceStridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:06stateful_uniform_full_int/strided_slice/stack:output:08stateful_uniform_full_int/strided_slice/stack_1:output:08stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
!stateful_uniform_full_int/BitcastBitcast0stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0y
/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)stateful_uniform_full_int/strided_slice_1StridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:08stateful_uniform_full_int/strided_slice_1/stack:output:0:stateful_uniform_full_int/strided_slice_1/stack_1:output:0:stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
#stateful_uniform_full_int/Bitcast_1Bitcast2stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0_
stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :�
stateful_uniform_full_intStatelessRandomUniformFullIntV2(stateful_uniform_full_int/shape:output:0,stateful_uniform_full_int/Bitcast_1:output:0*stateful_uniform_full_int/Bitcast:output:0&stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	T

zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R x
stackPack"stateful_uniform_full_int:output:0zeros_like:output:0*
N*
T0	*
_output_shapes

:d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_sliceStridedSlicestack:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
3stateless_random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*1
_output_shapes
:������������
&stateless_random_flip_left_right/ShapeShape<stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
::��~
4stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
6stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
6stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
.stateless_random_flip_left_right/strided_sliceStridedSlice/stateless_random_flip_left_right/Shape:output:0=stateless_random_flip_left_right/strided_slice/stack:output:0?stateless_random_flip_left_right/strided_slice/stack_1:output:0?stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
?stateless_random_flip_left_right/stateless_random_uniform/shapePack7stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:�
=stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    �
=stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice:output:0* 
_output_shapes
::�
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
Rstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Hstateless_random_flip_left_right/stateless_random_uniform/shape:output:0\stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0`stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0_stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:����������
=stateless_random_flip_left_right/stateless_random_uniform/subSubFstateless_random_flip_left_right/stateless_random_uniform/max:output:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
=stateless_random_flip_left_right/stateless_random_uniform/mulMul[stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Astateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:����������
9stateless_random_flip_left_right/stateless_random_uniformAddV2Astateless_random_flip_left_right/stateless_random_uniform/mul:z:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:���������r
0stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :r
0stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :r
0stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
.stateless_random_flip_left_right/Reshape/shapePack7stateless_random_flip_left_right/strided_slice:output:09stateless_random_flip_left_right/Reshape/shape/1:output:09stateless_random_flip_left_right/Reshape/shape/2:output:09stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
(stateless_random_flip_left_right/ReshapeReshape=stateless_random_flip_left_right/stateless_random_uniform:z:07stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:����������
&stateless_random_flip_left_right/RoundRound1stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:���������y
/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:�
*stateless_random_flip_left_right/ReverseV2	ReverseV2<stateless_random_flip_left_right/control_dependency:output:08stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:������������
$stateless_random_flip_left_right/mulMul*stateless_random_flip_left_right/Round:y:03stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:�����������k
&stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
$stateless_random_flip_left_right/subSub/stateless_random_flip_left_right/sub/x:output:0*stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:����������
&stateless_random_flip_left_right/mul_1Mul(stateless_random_flip_left_right/sub:z:0<stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:������������
$stateless_random_flip_left_right/addAddV2(stateless_random_flip_left_right/mul:z:0*stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:�����������k
!stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:k
!stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
 stateful_uniform_full_int_1/ProdProd*stateful_uniform_full_int_1/shape:output:0*stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: d
"stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
"stateful_uniform_full_int_1/Cast_1Cast)stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
*stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkip1stateful_uniform_full_int_rngreadandskip_resource+stateful_uniform_full_int_1/Cast/x:output:0&stateful_uniform_full_int_1/Cast_1:y:0)^stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:y
/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)stateful_uniform_full_int_1/strided_sliceStridedSlice2stateful_uniform_full_int_1/RngReadAndSkip:value:08stateful_uniform_full_int_1/strided_slice/stack:output:0:stateful_uniform_full_int_1/strided_slice/stack_1:output:0:stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
#stateful_uniform_full_int_1/BitcastBitcast2stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0{
1stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:}
3stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
+stateful_uniform_full_int_1/strided_slice_1StridedSlice2stateful_uniform_full_int_1/RngReadAndSkip:value:0:stateful_uniform_full_int_1/strided_slice_1/stack:output:0<stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0<stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
%stateful_uniform_full_int_1/Bitcast_1Bitcast4stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0a
stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :�
stateful_uniform_full_int_1StatelessRandomUniformFullIntV2*stateful_uniform_full_int_1/shape:output:0.stateful_uniform_full_int_1/Bitcast_1:output:0,stateful_uniform_full_int_1/Bitcast:output:0(stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	V
zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R ~
stack_1Pack$stateful_uniform_full_int_1:output:0zeros_like_1:output:0*
N*
T0	*
_output_shapes

:f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSlicestack_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
0stateless_random_flip_up_down/control_dependencyIdentity(stateless_random_flip_left_right/add:z:0*
T0*7
_class-
+)loc:@stateless_random_flip_left_right/add*1
_output_shapes
:������������
#stateless_random_flip_up_down/ShapeShape9stateless_random_flip_up_down/control_dependency:output:0*
T0*
_output_shapes
::��{
1stateless_random_flip_up_down/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3stateless_random_flip_up_down/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3stateless_random_flip_up_down/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
+stateless_random_flip_up_down/strided_sliceStridedSlice,stateless_random_flip_up_down/Shape:output:0:stateless_random_flip_up_down/strided_slice/stack:output:0<stateless_random_flip_up_down/strided_slice/stack_1:output:0<stateless_random_flip_up_down/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
<stateless_random_flip_up_down/stateless_random_uniform/shapePack4stateless_random_flip_up_down/strided_slice:output:0*
N*
T0*
_output_shapes
:
:stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
:stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
Sstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice_1:output:0* 
_output_shapes
::�
Sstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
Ostateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Estateless_random_flip_up_down/stateless_random_uniform/shape:output:0Ystateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0]stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0\stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:����������
:stateless_random_flip_up_down/stateless_random_uniform/subSubCstateless_random_flip_up_down/stateless_random_uniform/max:output:0Cstateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
:stateless_random_flip_up_down/stateless_random_uniform/mulMulXstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0>stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:����������
6stateless_random_flip_up_down/stateless_random_uniformAddV2>stateless_random_flip_up_down/stateless_random_uniform/mul:z:0Cstateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:���������o
-stateless_random_flip_up_down/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :o
-stateless_random_flip_up_down/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :o
-stateless_random_flip_up_down/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
+stateless_random_flip_up_down/Reshape/shapePack4stateless_random_flip_up_down/strided_slice:output:06stateless_random_flip_up_down/Reshape/shape/1:output:06stateless_random_flip_up_down/Reshape/shape/2:output:06stateless_random_flip_up_down/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
%stateless_random_flip_up_down/ReshapeReshape:stateless_random_flip_up_down/stateless_random_uniform:z:04stateless_random_flip_up_down/Reshape/shape:output:0*
T0*/
_output_shapes
:����������
#stateless_random_flip_up_down/RoundRound.stateless_random_flip_up_down/Reshape:output:0*
T0*/
_output_shapes
:���������v
,stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:�
'stateless_random_flip_up_down/ReverseV2	ReverseV29stateless_random_flip_up_down/control_dependency:output:05stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*1
_output_shapes
:������������
!stateless_random_flip_up_down/mulMul'stateless_random_flip_up_down/Round:y:00stateless_random_flip_up_down/ReverseV2:output:0*
T0*1
_output_shapes
:�����������h
#stateless_random_flip_up_down/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
!stateless_random_flip_up_down/subSub,stateless_random_flip_up_down/sub/x:output:0'stateless_random_flip_up_down/Round:y:0*
T0*/
_output_shapes
:����������
#stateless_random_flip_up_down/mul_1Mul%stateless_random_flip_up_down/sub:z:09stateless_random_flip_up_down/control_dependency:output:0*
T0*1
_output_shapes
:������������
!stateless_random_flip_up_down/addAddV2%stateless_random_flip_up_down/mul:z:0'stateless_random_flip_up_down/mul_1:z:0*
T0*1
_output_shapes
:�����������~
IdentityIdentity%stateless_random_flip_up_down/add:z:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp)^stateful_uniform_full_int/RngReadAndSkip+^stateful_uniform_full_int_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:�����������: 2T
(stateful_uniform_full_int/RngReadAndSkip(stateful_uniform_full_int/RngReadAndSkip2X
*stateful_uniform_full_int_1/RngReadAndSkip*stateful_uniform_full_int_1/RngReadAndSkip:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�

�
,__inference_sequential_9_layer_call_fn_22729

inputs
unknown:	
	unknown_0:	#
	unknown_1:

	unknown_2:
#
	unknown_3:


	unknown_4:
#
	unknown_5:


	unknown_6:

	unknown_7:
��
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_9_layer_call_and_return_conditional_losses_22515o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:�����������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
c
G__inference_sequential_7_layer_call_and_return_conditional_losses_23286

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
D__inference_conv2d_14_layer_call_and_return_conditional_losses_23366

inputs8
conv2d_readvariableop_resource:

-
biasadd_readvariableop_resource:

identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:

*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<<
*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<<
X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������<<
i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������<<
w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������>>
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������>>

 
_user_specified_nameinputs
�
K
/__inference_max_pooling2d_5_layer_call_fn_23341

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_22358�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�

/__inference_random_rotation_layer_call_fn_23531

inputs
unknown:	
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_random_rotation_layer_call_and_return_conditional_losses_22250y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:�����������: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
K
/__inference_random_rotation_layer_call_fn_23536

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_random_rotation_layer_call_and_return_conditional_losses_22266j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�#
�
G__inference_sequential_9_layer_call_and_return_conditional_losses_22480
sequential_7_input)
conv2d_12_22456:

conv2d_12_22458:
)
conv2d_13_22462:


conv2d_13_22464:
)
conv2d_14_22468:


conv2d_14_22470:
"
dense_17_22474:
��
dense_17_22476:
identity��!conv2d_12/StatefulPartitionedCall�!conv2d_13/StatefulPartitionedCall�!conv2d_14/StatefulPartitionedCall� dense_17/StatefulPartitionedCall�
sequential_7/PartitionedCallPartitionedCallsequential_7_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_7_layer_call_and_return_conditional_losses_22297�
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCall%sequential_7/PartitionedCall:output:0conv2d_12_22456conv2d_12_22458*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_12_layer_call_and_return_conditional_losses_22384�
max_pooling2d_4/PartitionedCallPartitionedCall*conv2d_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_22346�
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0conv2d_13_22462conv2d_13_22464*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������}}
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_13_layer_call_and_return_conditional_losses_22402�
max_pooling2d_5/PartitionedCallPartitionedCall*conv2d_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������>>
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_22358�
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_5/PartitionedCall:output:0conv2d_14_22468conv2d_14_22470*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<<
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_14_layer_call_and_return_conditional_losses_22420�
flatten_8/PartitionedCallPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_flatten_8_layer_call_and_return_conditional_losses_22432�
 dense_17/StatefulPartitionedCallStatefulPartitionedCall"flatten_8/PartitionedCall:output:0dense_17_22474dense_17_22476*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_dense_17_layer_call_and_return_conditional_losses_22445x
IdentityIdentity)dense_17/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp"^conv2d_12/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:�����������: : : : : : : : 2F
!conv2d_12/StatefulPartitionedCall!conv2d_12/StatefulPartitionedCall2F
!conv2d_13/StatefulPartitionedCall!conv2d_13/StatefulPartitionedCall2F
!conv2d_14/StatefulPartitionedCall!conv2d_14/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall:e a
1
_output_shapes
:�����������
,
_user_specified_namesequential_7_input
�
`
D__inference_flatten_8_layer_call_and_return_conditional_losses_22432

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"������  ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:�����������Z
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������<<
:W S
/
_output_shapes
:���������<<

 
_user_specified_nameinputs
�
�
D__inference_conv2d_12_layer_call_and_return_conditional_losses_22384

inputs8
conv2d_readvariableop_resource:
-
biasadd_readvariableop_resource:

identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:
*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������
*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������
Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:�����������
k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:�����������
w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
`
D__inference_flatten_8_layer_call_and_return_conditional_losses_23377

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"������  ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:�����������Z
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������<<
:W S
/
_output_shapes
:���������<<

 
_user_specified_nameinputs
�+
�
G__inference_sequential_9_layer_call_and_return_conditional_losses_23043

inputsB
(conv2d_12_conv2d_readvariableop_resource:
7
)conv2d_12_biasadd_readvariableop_resource:
B
(conv2d_13_conv2d_readvariableop_resource:

7
)conv2d_13_biasadd_readvariableop_resource:
B
(conv2d_14_conv2d_readvariableop_resource:

7
)conv2d_14_biasadd_readvariableop_resource:
;
'dense_17_matmul_readvariableop_resource:
��6
(dense_17_biasadd_readvariableop_resource:
identity�� conv2d_12/BiasAdd/ReadVariableOp�conv2d_12/Conv2D/ReadVariableOp� conv2d_13/BiasAdd/ReadVariableOp�conv2d_13/Conv2D/ReadVariableOp� conv2d_14/BiasAdd/ReadVariableOp�conv2d_14/Conv2D/ReadVariableOp�dense_17/BiasAdd/ReadVariableOp�dense_17/MatMul/ReadVariableOp�
conv2d_12/Conv2D/ReadVariableOpReadVariableOp(conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
:
*
dtype0�
conv2d_12/Conv2DConv2Dinputs'conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������
*
paddingVALID*
strides
�
 conv2d_12/BiasAdd/ReadVariableOpReadVariableOp)conv2d_12_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
conv2d_12/BiasAddBiasAddconv2d_12/Conv2D:output:0(conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������
n
conv2d_12/ReluReluconv2d_12/BiasAdd:output:0*
T0*1
_output_shapes
:�����������
�
max_pooling2d_4/MaxPoolMaxPoolconv2d_12/Relu:activations:0*/
_output_shapes
:���������
*
ksize
*
paddingVALID*
strides
�
conv2d_13/Conv2D/ReadVariableOpReadVariableOp(conv2d_13_conv2d_readvariableop_resource*&
_output_shapes
:

*
dtype0�
conv2d_13/Conv2DConv2D max_pooling2d_4/MaxPool:output:0'conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������}}
*
paddingVALID*
strides
�
 conv2d_13/BiasAdd/ReadVariableOpReadVariableOp)conv2d_13_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
conv2d_13/BiasAddBiasAddconv2d_13/Conv2D:output:0(conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������}}
l
conv2d_13/ReluReluconv2d_13/BiasAdd:output:0*
T0*/
_output_shapes
:���������}}
�
max_pooling2d_5/MaxPoolMaxPoolconv2d_13/Relu:activations:0*/
_output_shapes
:���������>>
*
ksize
*
paddingVALID*
strides
�
conv2d_14/Conv2D/ReadVariableOpReadVariableOp(conv2d_14_conv2d_readvariableop_resource*&
_output_shapes
:

*
dtype0�
conv2d_14/Conv2DConv2D max_pooling2d_5/MaxPool:output:0'conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<<
*
paddingVALID*
strides
�
 conv2d_14/BiasAdd/ReadVariableOpReadVariableOp)conv2d_14_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
conv2d_14/BiasAddBiasAddconv2d_14/Conv2D:output:0(conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<<
l
conv2d_14/ReluReluconv2d_14/BiasAdd:output:0*
T0*/
_output_shapes
:���������<<
`
flatten_8/ConstConst*
_output_shapes
:*
dtype0*
valueB"������  �
flatten_8/ReshapeReshapeconv2d_14/Relu:activations:0flatten_8/Const:output:0*
T0*)
_output_shapes
:������������
dense_17/MatMul/ReadVariableOpReadVariableOp'dense_17_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense_17/MatMulMatMulflatten_8/Reshape:output:0&dense_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_17/BiasAdd/ReadVariableOpReadVariableOp(dense_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_17/BiasAddBiasAdddense_17/MatMul:product:0'dense_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h
dense_17/SigmoidSigmoiddense_17/BiasAdd:output:0*
T0*'
_output_shapes
:���������c
IdentityIdentitydense_17/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp!^conv2d_12/BiasAdd/ReadVariableOp ^conv2d_12/Conv2D/ReadVariableOp!^conv2d_13/BiasAdd/ReadVariableOp ^conv2d_13/Conv2D/ReadVariableOp!^conv2d_14/BiasAdd/ReadVariableOp ^conv2d_14/Conv2D/ReadVariableOp ^dense_17/BiasAdd/ReadVariableOp^dense_17/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:�����������: : : : : : : : 2D
 conv2d_12/BiasAdd/ReadVariableOp conv2d_12/BiasAdd/ReadVariableOp2B
conv2d_12/Conv2D/ReadVariableOpconv2d_12/Conv2D/ReadVariableOp2D
 conv2d_13/BiasAdd/ReadVariableOp conv2d_13/BiasAdd/ReadVariableOp2B
conv2d_13/Conv2D/ReadVariableOpconv2d_13/Conv2D/ReadVariableOp2D
 conv2d_14/BiasAdd/ReadVariableOp conv2d_14/BiasAdd/ReadVariableOp2B
conv2d_14/Conv2D/ReadVariableOpconv2d_14/Conv2D/ReadVariableOp2B
dense_17/BiasAdd/ReadVariableOpdense_17/BiasAdd/ReadVariableOp2@
dense_17/MatMul/ReadVariableOpdense_17/MatMul/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
��
�
G__inference_sequential_7_layer_call_and_return_conditional_losses_23282

inputsK
=random_flip_stateful_uniform_full_int_rngreadandskip_resource:	F
8random_rotation_stateful_uniform_rngreadandskip_resource:	
identity��4random_flip/stateful_uniform_full_int/RngReadAndSkip�6random_flip/stateful_uniform_full_int_1/RngReadAndSkip�/random_rotation/stateful_uniform/RngReadAndSkipu
+random_flip/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:u
+random_flip/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
*random_flip/stateful_uniform_full_int/ProdProd4random_flip/stateful_uniform_full_int/shape:output:04random_flip/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: n
,random_flip/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
,random_flip/stateful_uniform_full_int/Cast_1Cast3random_flip/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
4random_flip/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip=random_flip_stateful_uniform_full_int_rngreadandskip_resource5random_flip/stateful_uniform_full_int/Cast/x:output:00random_flip/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:�
9random_flip/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
;random_flip/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
;random_flip/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
3random_flip/stateful_uniform_full_int/strided_sliceStridedSlice<random_flip/stateful_uniform_full_int/RngReadAndSkip:value:0Brandom_flip/stateful_uniform_full_int/strided_slice/stack:output:0Drandom_flip/stateful_uniform_full_int/strided_slice/stack_1:output:0Drandom_flip/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
-random_flip/stateful_uniform_full_int/BitcastBitcast<random_flip/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0�
;random_flip/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
=random_flip/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
=random_flip/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
5random_flip/stateful_uniform_full_int/strided_slice_1StridedSlice<random_flip/stateful_uniform_full_int/RngReadAndSkip:value:0Drandom_flip/stateful_uniform_full_int/strided_slice_1/stack:output:0Frandom_flip/stateful_uniform_full_int/strided_slice_1/stack_1:output:0Frandom_flip/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
/random_flip/stateful_uniform_full_int/Bitcast_1Bitcast>random_flip/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0k
)random_flip/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :�
%random_flip/stateful_uniform_full_intStatelessRandomUniformFullIntV24random_flip/stateful_uniform_full_int/shape:output:08random_flip/stateful_uniform_full_int/Bitcast_1:output:06random_flip/stateful_uniform_full_int/Bitcast:output:02random_flip/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	`
random_flip/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R �
random_flip/stackPack.random_flip/stateful_uniform_full_int:output:0random_flip/zeros_like:output:0*
N*
T0	*
_output_shapes

:p
random_flip/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!random_flip/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       r
!random_flip/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
random_flip/strided_sliceStridedSlicerandom_flip/stack:output:0(random_flip/strided_slice/stack:output:0*random_flip/strided_slice/stack_1:output:0*random_flip/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
?random_flip/stateless_random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*1
_output_shapes
:������������
2random_flip/stateless_random_flip_left_right/ShapeShapeHrandom_flip/stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
::���
@random_flip/stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Brandom_flip/stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Brandom_flip/stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
:random_flip/stateless_random_flip_left_right/strided_sliceStridedSlice;random_flip/stateless_random_flip_left_right/Shape:output:0Irandom_flip/stateless_random_flip_left_right/strided_slice/stack:output:0Krandom_flip/stateless_random_flip_left_right/strided_slice/stack_1:output:0Krandom_flip/stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Krandom_flip/stateless_random_flip_left_right/stateless_random_uniform/shapePackCrandom_flip/stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:�
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    �
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
brandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter"random_flip/strided_slice:output:0* 
_output_shapes
::�
brandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
^random_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Trandom_flip/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0hrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0lrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0krandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:����������
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/subSubRrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/max:output:0Rrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
Irandom_flip/stateless_random_flip_left_right/stateless_random_uniform/mulMulgrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Mrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:����������
Erandom_flip/stateless_random_flip_left_right/stateless_random_uniformAddV2Mrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0Rrandom_flip/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:���������~
<random_flip/stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :~
<random_flip/stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :~
<random_flip/stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
:random_flip/stateless_random_flip_left_right/Reshape/shapePackCrandom_flip/stateless_random_flip_left_right/strided_slice:output:0Erandom_flip/stateless_random_flip_left_right/Reshape/shape/1:output:0Erandom_flip/stateless_random_flip_left_right/Reshape/shape/2:output:0Erandom_flip/stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
4random_flip/stateless_random_flip_left_right/ReshapeReshapeIrandom_flip/stateless_random_flip_left_right/stateless_random_uniform:z:0Crandom_flip/stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:����������
2random_flip/stateless_random_flip_left_right/RoundRound=random_flip/stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:����������
;random_flip/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:�
6random_flip/stateless_random_flip_left_right/ReverseV2	ReverseV2Hrandom_flip/stateless_random_flip_left_right/control_dependency:output:0Drandom_flip/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:������������
0random_flip/stateless_random_flip_left_right/mulMul6random_flip/stateless_random_flip_left_right/Round:y:0?random_flip/stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:�����������w
2random_flip/stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
0random_flip/stateless_random_flip_left_right/subSub;random_flip/stateless_random_flip_left_right/sub/x:output:06random_flip/stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:����������
2random_flip/stateless_random_flip_left_right/mul_1Mul4random_flip/stateless_random_flip_left_right/sub:z:0Hrandom_flip/stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:������������
0random_flip/stateless_random_flip_left_right/addAddV24random_flip/stateless_random_flip_left_right/mul:z:06random_flip/stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:�����������w
-random_flip/stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:w
-random_flip/stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
,random_flip/stateful_uniform_full_int_1/ProdProd6random_flip/stateful_uniform_full_int_1/shape:output:06random_flip/stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: p
.random_flip/stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
.random_flip/stateful_uniform_full_int_1/Cast_1Cast5random_flip/stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
6random_flip/stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkip=random_flip_stateful_uniform_full_int_rngreadandskip_resource7random_flip/stateful_uniform_full_int_1/Cast/x:output:02random_flip/stateful_uniform_full_int_1/Cast_1:y:05^random_flip/stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:�
;random_flip/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
=random_flip/stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
=random_flip/stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
5random_flip/stateful_uniform_full_int_1/strided_sliceStridedSlice>random_flip/stateful_uniform_full_int_1/RngReadAndSkip:value:0Drandom_flip/stateful_uniform_full_int_1/strided_slice/stack:output:0Frandom_flip/stateful_uniform_full_int_1/strided_slice/stack_1:output:0Frandom_flip/stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
/random_flip/stateful_uniform_full_int_1/BitcastBitcast>random_flip/stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0�
=random_flip/stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
?random_flip/stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
?random_flip/stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
7random_flip/stateful_uniform_full_int_1/strided_slice_1StridedSlice>random_flip/stateful_uniform_full_int_1/RngReadAndSkip:value:0Frandom_flip/stateful_uniform_full_int_1/strided_slice_1/stack:output:0Hrandom_flip/stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0Hrandom_flip/stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
1random_flip/stateful_uniform_full_int_1/Bitcast_1Bitcast@random_flip/stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0m
+random_flip/stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :�
'random_flip/stateful_uniform_full_int_1StatelessRandomUniformFullIntV26random_flip/stateful_uniform_full_int_1/shape:output:0:random_flip/stateful_uniform_full_int_1/Bitcast_1:output:08random_flip/stateful_uniform_full_int_1/Bitcast:output:04random_flip/stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	b
random_flip/zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R �
random_flip/stack_1Pack0random_flip/stateful_uniform_full_int_1:output:0!random_flip/zeros_like_1:output:0*
N*
T0	*
_output_shapes

:r
!random_flip/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        t
#random_flip/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       t
#random_flip/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
random_flip/strided_slice_1StridedSlicerandom_flip/stack_1:output:0*random_flip/strided_slice_1/stack:output:0,random_flip/strided_slice_1/stack_1:output:0,random_flip/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
<random_flip/stateless_random_flip_up_down/control_dependencyIdentity4random_flip/stateless_random_flip_left_right/add:z:0*
T0*C
_class9
75loc:@random_flip/stateless_random_flip_left_right/add*1
_output_shapes
:������������
/random_flip/stateless_random_flip_up_down/ShapeShapeErandom_flip/stateless_random_flip_up_down/control_dependency:output:0*
T0*
_output_shapes
::���
=random_flip/stateless_random_flip_up_down/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
?random_flip/stateless_random_flip_up_down/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
?random_flip/stateless_random_flip_up_down/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
7random_flip/stateless_random_flip_up_down/strided_sliceStridedSlice8random_flip/stateless_random_flip_up_down/Shape:output:0Frandom_flip/stateless_random_flip_up_down/strided_slice/stack:output:0Hrandom_flip/stateless_random_flip_up_down/strided_slice/stack_1:output:0Hrandom_flip/stateless_random_flip_up_down/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Hrandom_flip/stateless_random_flip_up_down/stateless_random_uniform/shapePack@random_flip/stateless_random_flip_up_down/strided_slice:output:0*
N*
T0*
_output_shapes
:�
Frandom_flip/stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    �
Frandom_flip/stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
_random_flip/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter$random_flip/strided_slice_1:output:0* 
_output_shapes
::�
_random_flip/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
[random_flip/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Qrandom_flip/stateless_random_flip_up_down/stateless_random_uniform/shape:output:0erandom_flip/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0irandom_flip/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0hrandom_flip/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:����������
Frandom_flip/stateless_random_flip_up_down/stateless_random_uniform/subSubOrandom_flip/stateless_random_flip_up_down/stateless_random_uniform/max:output:0Orandom_flip/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
Frandom_flip/stateless_random_flip_up_down/stateless_random_uniform/mulMuldrandom_flip/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0Jrandom_flip/stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:����������
Brandom_flip/stateless_random_flip_up_down/stateless_random_uniformAddV2Jrandom_flip/stateless_random_flip_up_down/stateless_random_uniform/mul:z:0Orandom_flip/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:���������{
9random_flip/stateless_random_flip_up_down/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :{
9random_flip/stateless_random_flip_up_down/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :{
9random_flip/stateless_random_flip_up_down/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
7random_flip/stateless_random_flip_up_down/Reshape/shapePack@random_flip/stateless_random_flip_up_down/strided_slice:output:0Brandom_flip/stateless_random_flip_up_down/Reshape/shape/1:output:0Brandom_flip/stateless_random_flip_up_down/Reshape/shape/2:output:0Brandom_flip/stateless_random_flip_up_down/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
1random_flip/stateless_random_flip_up_down/ReshapeReshapeFrandom_flip/stateless_random_flip_up_down/stateless_random_uniform:z:0@random_flip/stateless_random_flip_up_down/Reshape/shape:output:0*
T0*/
_output_shapes
:����������
/random_flip/stateless_random_flip_up_down/RoundRound:random_flip/stateless_random_flip_up_down/Reshape:output:0*
T0*/
_output_shapes
:����������
8random_flip/stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:�
3random_flip/stateless_random_flip_up_down/ReverseV2	ReverseV2Erandom_flip/stateless_random_flip_up_down/control_dependency:output:0Arandom_flip/stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*1
_output_shapes
:������������
-random_flip/stateless_random_flip_up_down/mulMul3random_flip/stateless_random_flip_up_down/Round:y:0<random_flip/stateless_random_flip_up_down/ReverseV2:output:0*
T0*1
_output_shapes
:�����������t
/random_flip/stateless_random_flip_up_down/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
-random_flip/stateless_random_flip_up_down/subSub8random_flip/stateless_random_flip_up_down/sub/x:output:03random_flip/stateless_random_flip_up_down/Round:y:0*
T0*/
_output_shapes
:����������
/random_flip/stateless_random_flip_up_down/mul_1Mul1random_flip/stateless_random_flip_up_down/sub:z:0Erandom_flip/stateless_random_flip_up_down/control_dependency:output:0*
T0*1
_output_shapes
:������������
-random_flip/stateless_random_flip_up_down/addAddV21random_flip/stateless_random_flip_up_down/mul:z:03random_flip/stateless_random_flip_up_down/mul_1:z:0*
T0*1
_output_shapes
:������������
random_rotation/ShapeShape1random_flip/stateless_random_flip_up_down/add:z:0*
T0*
_output_shapes
::��m
#random_rotation/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%random_rotation/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%random_rotation/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
random_rotation/strided_sliceStridedSlicerandom_rotation/Shape:output:0,random_rotation/strided_slice/stack:output:0.random_rotation/strided_slice/stack_1:output:0.random_rotation/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskx
%random_rotation/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������z
'random_rotation/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������q
'random_rotation/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
random_rotation/strided_slice_1StridedSlicerandom_rotation/Shape:output:0.random_rotation/strided_slice_1/stack:output:00random_rotation/strided_slice_1/stack_1:output:00random_rotation/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
random_rotation/CastCast(random_rotation/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: x
%random_rotation/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������z
'random_rotation/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������q
'random_rotation/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
random_rotation/strided_slice_2StridedSlicerandom_rotation/Shape:output:0.random_rotation/strided_slice_2/stack:output:00random_rotation/strided_slice_2/stack_1:output:00random_rotation/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskx
random_rotation/Cast_1Cast(random_rotation/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: �
&random_rotation/stateful_uniform/shapePack&random_rotation/strided_slice:output:0*
N*
T0*
_output_shapes
:i
$random_rotation/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|٠�i
$random_rotation/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|٠?p
&random_rotation/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
%random_rotation/stateful_uniform/ProdProd/random_rotation/stateful_uniform/shape:output:0/random_rotation/stateful_uniform/Const:output:0*
T0*
_output_shapes
: i
'random_rotation/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
'random_rotation/stateful_uniform/Cast_1Cast.random_rotation/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
/random_rotation/stateful_uniform/RngReadAndSkipRngReadAndSkip8random_rotation_stateful_uniform_rngreadandskip_resource0random_rotation/stateful_uniform/Cast/x:output:0+random_rotation/stateful_uniform/Cast_1:y:0*
_output_shapes
:~
4random_rotation/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
6random_rotation/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
6random_rotation/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
.random_rotation/stateful_uniform/strided_sliceStridedSlice7random_rotation/stateful_uniform/RngReadAndSkip:value:0=random_rotation/stateful_uniform/strided_slice/stack:output:0?random_rotation/stateful_uniform/strided_slice/stack_1:output:0?random_rotation/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
(random_rotation/stateful_uniform/BitcastBitcast7random_rotation/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0�
6random_rotation/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
8random_rotation/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
8random_rotation/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
0random_rotation/stateful_uniform/strided_slice_1StridedSlice7random_rotation/stateful_uniform/RngReadAndSkip:value:0?random_rotation/stateful_uniform/strided_slice_1/stack:output:0Arandom_rotation/stateful_uniform/strided_slice_1/stack_1:output:0Arandom_rotation/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
*random_rotation/stateful_uniform/Bitcast_1Bitcast9random_rotation/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0
=random_rotation/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
9random_rotation/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2/random_rotation/stateful_uniform/shape:output:03random_rotation/stateful_uniform/Bitcast_1:output:01random_rotation/stateful_uniform/Bitcast:output:0Frandom_rotation/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:����������
$random_rotation/stateful_uniform/subSub-random_rotation/stateful_uniform/max:output:0-random_rotation/stateful_uniform/min:output:0*
T0*
_output_shapes
: �
$random_rotation/stateful_uniform/mulMulBrandom_rotation/stateful_uniform/StatelessRandomUniformV2:output:0(random_rotation/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:����������
 random_rotation/stateful_uniformAddV2(random_rotation/stateful_uniform/mul:z:0-random_rotation/stateful_uniform/min:output:0*
T0*#
_output_shapes
:���������j
%random_rotation/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
#random_rotation/rotation_matrix/subSubrandom_rotation/Cast_1:y:0.random_rotation/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: ~
#random_rotation/rotation_matrix/CosCos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:���������l
'random_rotation/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
%random_rotation/rotation_matrix/sub_1Subrandom_rotation/Cast_1:y:00random_rotation/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: �
#random_rotation/rotation_matrix/mulMul'random_rotation/rotation_matrix/Cos:y:0)random_rotation/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:���������~
#random_rotation/rotation_matrix/SinSin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:���������l
'random_rotation/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
%random_rotation/rotation_matrix/sub_2Subrandom_rotation/Cast:y:00random_rotation/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: �
%random_rotation/rotation_matrix/mul_1Mul'random_rotation/rotation_matrix/Sin:y:0)random_rotation/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:����������
%random_rotation/rotation_matrix/sub_3Sub'random_rotation/rotation_matrix/mul:z:0)random_rotation/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:����������
%random_rotation/rotation_matrix/sub_4Sub'random_rotation/rotation_matrix/sub:z:0)random_rotation/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:���������n
)random_rotation/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
'random_rotation/rotation_matrix/truedivRealDiv)random_rotation/rotation_matrix/sub_4:z:02random_rotation/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:���������l
'random_rotation/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
%random_rotation/rotation_matrix/sub_5Subrandom_rotation/Cast:y:00random_rotation/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: �
%random_rotation/rotation_matrix/Sin_1Sin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:���������l
'random_rotation/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
%random_rotation/rotation_matrix/sub_6Subrandom_rotation/Cast_1:y:00random_rotation/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: �
%random_rotation/rotation_matrix/mul_2Mul)random_rotation/rotation_matrix/Sin_1:y:0)random_rotation/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:����������
%random_rotation/rotation_matrix/Cos_1Cos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:���������l
'random_rotation/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
%random_rotation/rotation_matrix/sub_7Subrandom_rotation/Cast:y:00random_rotation/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: �
%random_rotation/rotation_matrix/mul_3Mul)random_rotation/rotation_matrix/Cos_1:y:0)random_rotation/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:����������
#random_rotation/rotation_matrix/addAddV2)random_rotation/rotation_matrix/mul_2:z:0)random_rotation/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:����������
%random_rotation/rotation_matrix/sub_8Sub)random_rotation/rotation_matrix/sub_5:z:0'random_rotation/rotation_matrix/add:z:0*
T0*#
_output_shapes
:���������p
+random_rotation/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
)random_rotation/rotation_matrix/truediv_1RealDiv)random_rotation/rotation_matrix/sub_8:z:04random_rotation/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:����������
%random_rotation/rotation_matrix/ShapeShape$random_rotation/stateful_uniform:z:0*
T0*
_output_shapes
::��}
3random_rotation/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5random_rotation/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5random_rotation/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
-random_rotation/rotation_matrix/strided_sliceStridedSlice.random_rotation/rotation_matrix/Shape:output:0<random_rotation/rotation_matrix/strided_slice/stack:output:0>random_rotation/rotation_matrix/strided_slice/stack_1:output:0>random_rotation/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
%random_rotation/rotation_matrix/Cos_2Cos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:����������
5random_rotation/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
7random_rotation/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
7random_rotation/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
/random_rotation/rotation_matrix/strided_slice_1StridedSlice)random_rotation/rotation_matrix/Cos_2:y:0>random_rotation/rotation_matrix/strided_slice_1/stack:output:0@random_rotation/rotation_matrix/strided_slice_1/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask�
%random_rotation/rotation_matrix/Sin_2Sin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:����������
5random_rotation/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
7random_rotation/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
7random_rotation/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
/random_rotation/rotation_matrix/strided_slice_2StridedSlice)random_rotation/rotation_matrix/Sin_2:y:0>random_rotation/rotation_matrix/strided_slice_2/stack:output:0@random_rotation/rotation_matrix/strided_slice_2/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask�
#random_rotation/rotation_matrix/NegNeg8random_rotation/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:����������
5random_rotation/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
7random_rotation/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
7random_rotation/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
/random_rotation/rotation_matrix/strided_slice_3StridedSlice+random_rotation/rotation_matrix/truediv:z:0>random_rotation/rotation_matrix/strided_slice_3/stack:output:0@random_rotation/rotation_matrix/strided_slice_3/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask�
%random_rotation/rotation_matrix/Sin_3Sin$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:����������
5random_rotation/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
7random_rotation/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
7random_rotation/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
/random_rotation/rotation_matrix/strided_slice_4StridedSlice)random_rotation/rotation_matrix/Sin_3:y:0>random_rotation/rotation_matrix/strided_slice_4/stack:output:0@random_rotation/rotation_matrix/strided_slice_4/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask�
%random_rotation/rotation_matrix/Cos_3Cos$random_rotation/stateful_uniform:z:0*
T0*#
_output_shapes
:����������
5random_rotation/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
7random_rotation/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
7random_rotation/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
/random_rotation/rotation_matrix/strided_slice_5StridedSlice)random_rotation/rotation_matrix/Cos_3:y:0>random_rotation/rotation_matrix/strided_slice_5/stack:output:0@random_rotation/rotation_matrix/strided_slice_5/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask�
5random_rotation/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
7random_rotation/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
7random_rotation/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
/random_rotation/rotation_matrix/strided_slice_6StridedSlice-random_rotation/rotation_matrix/truediv_1:z:0>random_rotation/rotation_matrix/strided_slice_6/stack:output:0@random_rotation/rotation_matrix/strided_slice_6/stack_1:output:0@random_rotation/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_maskp
.random_rotation/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
,random_rotation/rotation_matrix/zeros/packedPack6random_rotation/rotation_matrix/strided_slice:output:07random_rotation/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:p
+random_rotation/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
%random_rotation/rotation_matrix/zerosFill5random_rotation/rotation_matrix/zeros/packed:output:04random_rotation/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:���������m
+random_rotation/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
&random_rotation/rotation_matrix/concatConcatV28random_rotation/rotation_matrix/strided_slice_1:output:0'random_rotation/rotation_matrix/Neg:y:08random_rotation/rotation_matrix/strided_slice_3:output:08random_rotation/rotation_matrix/strided_slice_4:output:08random_rotation/rotation_matrix/strided_slice_5:output:08random_rotation/rotation_matrix/strided_slice_6:output:0.random_rotation/rotation_matrix/zeros:output:04random_rotation/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:����������
random_rotation/transform/ShapeShape1random_flip/stateless_random_flip_up_down/add:z:0*
T0*
_output_shapes
::��w
-random_rotation/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:y
/random_rotation/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/random_rotation/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'random_rotation/transform/strided_sliceStridedSlice(random_rotation/transform/Shape:output:06random_rotation/transform/strided_slice/stack:output:08random_rotation/transform/strided_slice/stack_1:output:08random_rotation/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:i
$random_rotation/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    �
4random_rotation/transform/ImageProjectiveTransformV3ImageProjectiveTransformV31random_flip/stateless_random_flip_up_down/add:z:0/random_rotation/rotation_matrix/concat:output:00random_rotation/transform/strided_slice:output:0-random_rotation/transform/fill_value:output:0*1
_output_shapes
:�����������*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR�
IdentityIdentityIrandom_rotation/transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp5^random_flip/stateful_uniform_full_int/RngReadAndSkip7^random_flip/stateful_uniform_full_int_1/RngReadAndSkip0^random_rotation/stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 2l
4random_flip/stateful_uniform_full_int/RngReadAndSkip4random_flip/stateful_uniform_full_int/RngReadAndSkip2p
6random_flip/stateful_uniform_full_int_1/RngReadAndSkip6random_flip/stateful_uniform_full_int_1/RngReadAndSkip2b
/random_rotation/stateful_uniform/RngReadAndSkip/random_rotation/stateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
f
J__inference_random_rotation_layer_call_and_return_conditional_losses_23658

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�	
n
G__inference_sequential_7_layer_call_and_return_conditional_losses_22269
random_flip_input
identity�
random_flip/PartitionedCallPartitionedCallrandom_flip_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_random_flip_layer_call_and_return_conditional_losses_22261�
random_rotation/PartitionedCallPartitionedCall$random_flip/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_random_rotation_layer_call_and_return_conditional_losses_22266z
IdentityIdentity(random_rotation/PartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:d `
1
_output_shapes
:�����������
+
_user_specified_namerandom_flip_input
�
�
)__inference_conv2d_13_layer_call_fn_23325

inputs!
unknown:


	unknown_0:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������}}
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_13_layer_call_and_return_conditional_losses_22402w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������}}
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������
: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������

 
_user_specified_nameinputs
�
f
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_23316

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
)__inference_conv2d_14_layer_call_fn_23355

inputs!
unknown:


	unknown_0:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<<
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_conv2d_14_layer_call_and_return_conditional_losses_22420w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������<<
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������>>
: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������>>

 
_user_specified_nameinputs
��
�
J__inference_random_rotation_layer_call_and_return_conditional_losses_23654

inputs6
(stateful_uniform_rngreadandskip_resource:	
identity��stateful_uniform/RngReadAndSkipI
ShapeShapeinputs*
T0*
_output_shapes
::��]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: d
stateful_uniform/shapePackstrided_slice:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|٠�Y
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|٠?`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:���������z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: �
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*#
_output_shapes
:����������
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*#
_output_shapes
:���������Z
rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?g
rotation_matrix/subSub
Cast_1:y:0rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: ^
rotation_matrix/CosCosstateful_uniform:z:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?k
rotation_matrix/sub_1Sub
Cast_1:y:0 rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: |
rotation_matrix/mulMulrotation_matrix/Cos:y:0rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:���������^
rotation_matrix/SinSinstateful_uniform:z:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?i
rotation_matrix/sub_2SubCast:y:0 rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: ~
rotation_matrix/mul_1Mulrotation_matrix/Sin:y:0rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:���������~
rotation_matrix/sub_3Subrotation_matrix/mul:z:0rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:���������~
rotation_matrix/sub_4Subrotation_matrix/sub:z:0rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:���������^
rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
rotation_matrix/truedivRealDivrotation_matrix/sub_4:z:0"rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?i
rotation_matrix/sub_5SubCast:y:0 rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: `
rotation_matrix/Sin_1Sinstateful_uniform:z:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?k
rotation_matrix/sub_6Sub
Cast_1:y:0 rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: �
rotation_matrix/mul_2Mulrotation_matrix/Sin_1:y:0rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:���������`
rotation_matrix/Cos_1Cosstateful_uniform:z:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?i
rotation_matrix/sub_7SubCast:y:0 rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: �
rotation_matrix/mul_3Mulrotation_matrix/Cos_1:y:0rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:����������
rotation_matrix/addAddV2rotation_matrix/mul_2:z:0rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:���������~
rotation_matrix/sub_8Subrotation_matrix/sub_5:z:0rotation_matrix/add:z:0*
T0*#
_output_shapes
:���������`
rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
rotation_matrix/truediv_1RealDivrotation_matrix/sub_8:z:0$rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:���������g
rotation_matrix/ShapeShapestateful_uniform:z:0*
T0*
_output_shapes
::��m
#rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
rotation_matrix/strided_sliceStridedSlicerotation_matrix/Shape:output:0,rotation_matrix/strided_slice/stack:output:0.rotation_matrix/strided_slice/stack_1:output:0.rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
rotation_matrix/Cos_2Cosstateful_uniform:z:0*
T0*#
_output_shapes
:���������v
%rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_1StridedSlicerotation_matrix/Cos_2:y:0.rotation_matrix/strided_slice_1/stack:output:00rotation_matrix/strided_slice_1/stack_1:output:00rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_2Sinstateful_uniform:z:0*
T0*#
_output_shapes
:���������v
%rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_2StridedSlicerotation_matrix/Sin_2:y:0.rotation_matrix/strided_slice_2/stack:output:00rotation_matrix/strided_slice_2/stack_1:output:00rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_maskv
rotation_matrix/NegNeg(rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:���������v
%rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_3StridedSlicerotation_matrix/truediv:z:0.rotation_matrix/strided_slice_3/stack:output:00rotation_matrix/strided_slice_3/stack_1:output:00rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_3Sinstateful_uniform:z:0*
T0*#
_output_shapes
:���������v
%rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_4StridedSlicerotation_matrix/Sin_3:y:0.rotation_matrix/strided_slice_4/stack:output:00rotation_matrix/strided_slice_4/stack_1:output:00rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Cos_3Cosstateful_uniform:z:0*
T0*#
_output_shapes
:���������v
%rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_5StridedSlicerotation_matrix/Cos_3:y:0.rotation_matrix/strided_slice_5/stack:output:00rotation_matrix/strided_slice_5/stack_1:output:00rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_maskv
%rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_6StridedSlicerotation_matrix/truediv_1:z:0.rotation_matrix/strided_slice_6/stack:output:00rotation_matrix/strided_slice_6/stack_1:output:00rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
rotation_matrix/zeros/packedPack&rotation_matrix/strided_slice:output:0'rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
rotation_matrix/zerosFill%rotation_matrix/zeros/packed:output:0$rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:���������]
rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
rotation_matrix/concatConcatV2(rotation_matrix/strided_slice_1:output:0rotation_matrix/Neg:y:0(rotation_matrix/strided_slice_3:output:0(rotation_matrix/strided_slice_4:output:0(rotation_matrix/strided_slice_5:output:0(rotation_matrix/strided_slice_6:output:0rotation_matrix/zeros:output:0$rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������S
transform/ShapeShapeinputs*
T0*
_output_shapes
::��g
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    �
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputsrotation_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:�����������*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR�
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:�����������h
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:�����������: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs"�
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
[
sequential_7_inputE
$serving_default_sequential_7_input:0�����������<
dense_170
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
		variables

trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
�
layer-0
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_sequential
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

 kernel
!bias
 "_jit_compiled_convolution_op"
_tf_keras_layer
�
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses"
_tf_keras_layer
�
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses

/kernel
0bias
 1_jit_compiled_convolution_op"
_tf_keras_layer
�
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses"
_tf_keras_layer
�
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses

>kernel
?bias
 @_jit_compiled_convolution_op"
_tf_keras_layer
�
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses"
_tf_keras_layer
�
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses

Mkernel
Nbias"
_tf_keras_layer
X
 0
!1
/2
03
>4
?5
M6
N7"
trackable_list_wrapper
X
 0
!1
/2
03
>4
?5
M6
N7"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Onon_trainable_variables

Players
Qmetrics
Rlayer_regularization_losses
Slayer_metrics
		variables

trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
Ttrace_0
Utrace_1
Vtrace_2
Wtrace_32�
,__inference_sequential_9_layer_call_fn_22538
,__inference_sequential_9_layer_call_fn_22587
,__inference_sequential_9_layer_call_fn_22729
,__inference_sequential_9_layer_call_fn_22750�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zTtrace_0zUtrace_1zVtrace_2zWtrace_3
�
Xtrace_0
Ytrace_1
Ztrace_2
[trace_32�
G__inference_sequential_9_layer_call_and_return_conditional_losses_22452
G__inference_sequential_9_layer_call_and_return_conditional_losses_22480
G__inference_sequential_9_layer_call_and_return_conditional_losses_23007
G__inference_sequential_9_layer_call_and_return_conditional_losses_23043�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zXtrace_0zYtrace_1zZtrace_2z[trace_3
�B�
 __inference__wrapped_model_22013sequential_7_input"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
\
_variables
]_iterations
^_learning_rate
__index_dict
`
_momentums
a_velocities
b_update_step_xla"
experimentalOptimizer
,
cserving_default"
signature_map
�
d	variables
etrainable_variables
fregularization_losses
g	keras_api
h__call__
*i&call_and_return_all_conditional_losses
j_random_generator"
_tf_keras_layer
�
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses
q_random_generator"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
rnon_trainable_variables

slayers
tmetrics
ulayer_regularization_losses
vlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
wtrace_0
xtrace_1
ytrace_2
ztrace_32�
,__inference_sequential_7_layer_call_fn_22289
,__inference_sequential_7_layer_call_fn_22300
,__inference_sequential_7_layer_call_fn_23052
,__inference_sequential_7_layer_call_fn_23057�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zwtrace_0zxtrace_1zytrace_2zztrace_3
�
{trace_0
|trace_1
}trace_2
~trace_32�
G__inference_sequential_7_layer_call_and_return_conditional_losses_22255
G__inference_sequential_7_layer_call_and_return_conditional_losses_22269
G__inference_sequential_7_layer_call_and_return_conditional_losses_23282
G__inference_sequential_7_layer_call_and_return_conditional_losses_23286�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z{trace_0z|trace_1z}trace_2z~trace_3
.
 0
!1"
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_conv2d_12_layer_call_fn_23295�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_conv2d_12_layer_call_and_return_conditional_losses_23306�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
*:(
2conv2d_12/kernel
:
2conv2d_12/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
/__inference_max_pooling2d_4_layer_call_fn_23311�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_23316�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
/0
01"
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_conv2d_13_layer_call_fn_23325�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_conv2d_13_layer_call_and_return_conditional_losses_23336�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
*:(

2conv2d_13/kernel
:
2conv2d_13/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
/__inference_max_pooling2d_5_layer_call_fn_23341�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_23346�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
>0
?1"
trackable_list_wrapper
.
>0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_conv2d_14_layer_call_fn_23355�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_conv2d_14_layer_call_and_return_conditional_losses_23366�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
*:(

2conv2d_14/kernel
:
2conv2d_14/bias
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_flatten_8_layer_call_fn_23371�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_flatten_8_layer_call_and_return_conditional_losses_23377�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
M0
N1"
trackable_list_wrapper
.
M0
N1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_dense_17_layer_call_fn_23386�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
C__inference_dense_17_layer_call_and_return_conditional_losses_23397�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
#:!
��2dense_17/kernel
:2dense_17/bias
 "
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
,__inference_sequential_9_layer_call_fn_22538sequential_7_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
,__inference_sequential_9_layer_call_fn_22587sequential_7_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
,__inference_sequential_9_layer_call_fn_22729inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
,__inference_sequential_9_layer_call_fn_22750inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_sequential_9_layer_call_and_return_conditional_losses_22452sequential_7_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_sequential_9_layer_call_and_return_conditional_losses_22480sequential_7_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_sequential_9_layer_call_and_return_conditional_losses_23007inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_sequential_9_layer_call_and_return_conditional_losses_23043inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
]0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
`
�0
�1
�2
�3
�4
�5
�6
�7"
trackable_list_wrapper
`
�0
�1
�2
�3
�4
�5
�6
�7"
trackable_list_wrapper
�2��
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
�B�
#__inference_signature_wrapper_22704sequential_7_input"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
d	variables
etrainable_variables
fregularization_losses
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
+__inference_random_flip_layer_call_fn_23404
+__inference_random_flip_layer_call_fn_23409�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
F__inference_random_flip_layer_call_and_return_conditional_losses_23520
F__inference_random_flip_layer_call_and_return_conditional_losses_23524�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
/
�
_generator"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
/__inference_random_rotation_layer_call_fn_23531
/__inference_random_rotation_layer_call_fn_23536�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
J__inference_random_rotation_layer_call_and_return_conditional_losses_23654
J__inference_random_rotation_layer_call_and_return_conditional_losses_23658�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
/
�
_generator"
_generic_user_object
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
,__inference_sequential_7_layer_call_fn_22289random_flip_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
,__inference_sequential_7_layer_call_fn_22300random_flip_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
,__inference_sequential_7_layer_call_fn_23052inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
,__inference_sequential_7_layer_call_fn_23057inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_sequential_7_layer_call_and_return_conditional_losses_22255random_flip_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_sequential_7_layer_call_and_return_conditional_losses_22269random_flip_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_sequential_7_layer_call_and_return_conditional_losses_23282inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_sequential_7_layer_call_and_return_conditional_losses_23286inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
)__inference_conv2d_12_layer_call_fn_23295inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_conv2d_12_layer_call_and_return_conditional_losses_23306inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
/__inference_max_pooling2d_4_layer_call_fn_23311inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_23316inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
)__inference_conv2d_13_layer_call_fn_23325inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_conv2d_13_layer_call_and_return_conditional_losses_23336inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
/__inference_max_pooling2d_5_layer_call_fn_23341inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_23346inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
)__inference_conv2d_14_layer_call_fn_23355inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_conv2d_14_layer_call_and_return_conditional_losses_23366inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
)__inference_flatten_8_layer_call_fn_23371inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_flatten_8_layer_call_and_return_conditional_losses_23377inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_dense_17_layer_call_fn_23386inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_dense_17_layer_call_and_return_conditional_losses_23397inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
/:-
2Adam/m/conv2d_12/kernel
/:-
2Adam/v/conv2d_12/kernel
!:
2Adam/m/conv2d_12/bias
!:
2Adam/v/conv2d_12/bias
/:-

2Adam/m/conv2d_13/kernel
/:-

2Adam/v/conv2d_13/kernel
!:
2Adam/m/conv2d_13/bias
!:
2Adam/v/conv2d_13/bias
/:-

2Adam/m/conv2d_14/kernel
/:-

2Adam/v/conv2d_14/kernel
!:
2Adam/m/conv2d_14/bias
!:
2Adam/v/conv2d_14/bias
(:&
��2Adam/m/dense_17/kernel
(:&
��2Adam/v/dense_17/kernel
 :2Adam/m/dense_17/bias
 :2Adam/v/dense_17/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
+__inference_random_flip_layer_call_fn_23404inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
+__inference_random_flip_layer_call_fn_23409inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_random_flip_layer_call_and_return_conditional_losses_23520inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_random_flip_layer_call_and_return_conditional_losses_23524inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
/
�
_state_var"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
/__inference_random_rotation_layer_call_fn_23531inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
/__inference_random_rotation_layer_call_fn_23536inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_random_rotation_layer_call_and_return_conditional_losses_23654inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_random_rotation_layer_call_and_return_conditional_losses_23658inputs"�
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
/
�
_state_var"
_generic_user_object
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
 :	2random_flip/StateVar
$:"	2random_rotation/StateVar�
 __inference__wrapped_model_22013� !/0>?MNE�B
;�8
6�3
sequential_7_input�����������
� "3�0
.
dense_17"�
dense_17����������
D__inference_conv2d_12_layer_call_and_return_conditional_losses_23306w !9�6
/�,
*�'
inputs�����������
� "6�3
,�)
tensor_0�����������

� �
)__inference_conv2d_12_layer_call_fn_23295l !9�6
/�,
*�'
inputs�����������
� "+�(
unknown�����������
�
D__inference_conv2d_13_layer_call_and_return_conditional_losses_23336s/07�4
-�*
(�%
inputs���������

� "4�1
*�'
tensor_0���������}}

� �
)__inference_conv2d_13_layer_call_fn_23325h/07�4
-�*
(�%
inputs���������

� ")�&
unknown���������}}
�
D__inference_conv2d_14_layer_call_and_return_conditional_losses_23366s>?7�4
-�*
(�%
inputs���������>>

� "4�1
*�'
tensor_0���������<<

� �
)__inference_conv2d_14_layer_call_fn_23355h>?7�4
-�*
(�%
inputs���������>>

� ")�&
unknown���������<<
�
C__inference_dense_17_layer_call_and_return_conditional_losses_23397eMN1�.
'�$
"�
inputs�����������
� ",�)
"�
tensor_0���������
� �
(__inference_dense_17_layer_call_fn_23386ZMN1�.
'�$
"�
inputs�����������
� "!�
unknown����������
D__inference_flatten_8_layer_call_and_return_conditional_losses_23377i7�4
-�*
(�%
inputs���������<<

� ".�+
$�!
tensor_0�����������
� �
)__inference_flatten_8_layer_call_fn_23371^7�4
-�*
(�%
inputs���������<<

� "#� 
unknown������������
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_23316�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
/__inference_max_pooling2d_4_layer_call_fn_23311�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_23346�R�O
H�E
C�@
inputs4������������������������������������
� "O�L
E�B
tensor_04������������������������������������
� �
/__inference_max_pooling2d_5_layer_call_fn_23341�R�O
H�E
C�@
inputs4������������������������������������
� "D�A
unknown4�������������������������������������
F__inference_random_flip_layer_call_and_return_conditional_losses_23520{�=�:
3�0
*�'
inputs�����������
p
� "6�3
,�)
tensor_0�����������
� �
F__inference_random_flip_layer_call_and_return_conditional_losses_23524w=�:
3�0
*�'
inputs�����������
p 
� "6�3
,�)
tensor_0�����������
� �
+__inference_random_flip_layer_call_fn_23404p�=�:
3�0
*�'
inputs�����������
p
� "+�(
unknown������������
+__inference_random_flip_layer_call_fn_23409l=�:
3�0
*�'
inputs�����������
p 
� "+�(
unknown������������
J__inference_random_rotation_layer_call_and_return_conditional_losses_23654{�=�:
3�0
*�'
inputs�����������
p
� "6�3
,�)
tensor_0�����������
� �
J__inference_random_rotation_layer_call_and_return_conditional_losses_23658w=�:
3�0
*�'
inputs�����������
p 
� "6�3
,�)
tensor_0�����������
� �
/__inference_random_rotation_layer_call_fn_23531p�=�:
3�0
*�'
inputs�����������
p
� "+�(
unknown������������
/__inference_random_rotation_layer_call_fn_23536l=�:
3�0
*�'
inputs�����������
p 
� "+�(
unknown������������
G__inference_sequential_7_layer_call_and_return_conditional_losses_22255���L�I
B�?
5�2
random_flip_input�����������
p

 
� "6�3
,�)
tensor_0�����������
� �
G__inference_sequential_7_layer_call_and_return_conditional_losses_22269�L�I
B�?
5�2
random_flip_input�����������
p 

 
� "6�3
,�)
tensor_0�����������
� �
G__inference_sequential_7_layer_call_and_return_conditional_losses_23282���A�>
7�4
*�'
inputs�����������
p

 
� "6�3
,�)
tensor_0�����������
� �
G__inference_sequential_7_layer_call_and_return_conditional_losses_23286{A�>
7�4
*�'
inputs�����������
p 

 
� "6�3
,�)
tensor_0�����������
� �
,__inference_sequential_7_layer_call_fn_22289���L�I
B�?
5�2
random_flip_input�����������
p

 
� "+�(
unknown������������
,__inference_sequential_7_layer_call_fn_22300{L�I
B�?
5�2
random_flip_input�����������
p 

 
� "+�(
unknown������������
,__inference_sequential_7_layer_call_fn_23052v��A�>
7�4
*�'
inputs�����������
p

 
� "+�(
unknown������������
,__inference_sequential_7_layer_call_fn_23057pA�>
7�4
*�'
inputs�����������
p 

 
� "+�(
unknown������������
G__inference_sequential_9_layer_call_and_return_conditional_losses_22452��� !/0>?MNM�J
C�@
6�3
sequential_7_input�����������
p

 
� ",�)
"�
tensor_0���������
� �
G__inference_sequential_9_layer_call_and_return_conditional_losses_22480� !/0>?MNM�J
C�@
6�3
sequential_7_input�����������
p 

 
� ",�)
"�
tensor_0���������
� �
G__inference_sequential_9_layer_call_and_return_conditional_losses_23007�� !/0>?MNA�>
7�4
*�'
inputs�����������
p

 
� ",�)
"�
tensor_0���������
� �
G__inference_sequential_9_layer_call_and_return_conditional_losses_23043{ !/0>?MNA�>
7�4
*�'
inputs�����������
p 

 
� ",�)
"�
tensor_0���������
� �
,__inference_sequential_9_layer_call_fn_22538��� !/0>?MNM�J
C�@
6�3
sequential_7_input�����������
p

 
� "!�
unknown����������
,__inference_sequential_9_layer_call_fn_22587| !/0>?MNM�J
C�@
6�3
sequential_7_input�����������
p 

 
� "!�
unknown����������
,__inference_sequential_9_layer_call_fn_22729t�� !/0>?MNA�>
7�4
*�'
inputs�����������
p

 
� "!�
unknown����������
,__inference_sequential_9_layer_call_fn_22750p !/0>?MNA�>
7�4
*�'
inputs�����������
p 

 
� "!�
unknown����������
#__inference_signature_wrapper_22704� !/0>?MN[�X
� 
Q�N
L
sequential_7_input6�3
sequential_7_input�����������"3�0
.
dense_17"�
dense_17���������