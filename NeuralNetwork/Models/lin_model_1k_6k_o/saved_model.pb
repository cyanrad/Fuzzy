ΆΠ
ΐ
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
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
dtypetype
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
-
Sqrt
x"T
y"T"
Ttype:

2
Α
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
executor_typestring ¨
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
<
Sub
x"T
y"T
z"T"
Ttype:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68
\
meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namemean
U
mean/Read/ReadVariableOpReadVariableOpmean*
_output_shapes
: *
dtype0
d
varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
variance
]
variance/Read/ReadVariableOpReadVariableOpvariance*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0	
t
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:	*
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

:	*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:	*
dtype0
`
mean_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namemean_1
Y
mean_1/Read/ReadVariableOpReadVariableOpmean_1*
_output_shapes
: *
dtype0
h

variance_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
variance_1
a
variance_1/Read/ReadVariableOpReadVariableOp
variance_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0	
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
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
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0

Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:	*$
shared_nameAdam/dense/kernel/m
{
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes

:	*
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
:	*
dtype0

Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:	*$
shared_nameAdam/dense/kernel/v
{
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes

:	*
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
:	*
dtype0
Z
ConstConst*
_output_shapes

:*
dtype0*
valueB*ΖνB
\
Const_1Const*
_output_shapes

:*
dtype0*
valueB*7eF
\
Const_2Const*
_output_shapes

:*
dtype0*
valueB*Yύ>
\
Const_3Const*
_output_shapes

:*
dtype0*
valueB*χ>

NoOpNoOp
Λ
Const_4Const"/device:CPU:0*
_output_shapes
: *
dtype0*
valueϊBχ Bπ
Α
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature

signatures*
Ύ

_keep_axis
_reduce_axis
_reduce_axis_mask
_broadcast_shape
mean

adapt_mean
variance
adapt_variance
	count
	keras_api
_adapt_function*
¦

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
Ύ

_keep_axis
_reduce_axis
 _reduce_axis_mask
!_broadcast_shape
"mean
"
adapt_mean
#variance
#adapt_variance
	$count
%	keras_api
&_adapt_function*
h
'iter

(beta_1

)beta_2
	*decay
+learning_ratem<m=v>v?*
<
0
1
2
3
4
"5
#6
$7*

0
1*
* 
°
,non_trainable_variables

-layers
.metrics
/layer_regularization_losses
0layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses*
* 
* 
* 

1serving_default* 
* 
* 
* 
* 
RL
VARIABLE_VALUEmean4layer_with_weights-0/mean/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEvariance8layer_with_weights-0/variance/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEcount5layer_with_weights-0/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
dense/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

2non_trainable_variables

3layers
4metrics
5layer_regularization_losses
6layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
TN
VARIABLE_VALUEmean_14layer_with_weights-2/mean/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUE
variance_18layer_with_weights-2/variance/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEcount_15layer_with_weights-2/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
.
0
1
2
"3
#4
$5*

0
1
2*

70*
* 
* 
* 
* 
* 
* 
* 
* 
8
	8total
	9count
:	variables
;	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_24keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

80
91*

:	variables*
y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

%serving_default_normalization_1_inputPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????

StatefulPartitionedCallStatefulPartitionedCall%serving_default_normalization_1_inputConstConst_1dense/kernel
dense/biasConst_2Const_3*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_313310
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamemean/Read/ReadVariableOpvariance/Read/ReadVariableOpcount/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOpmean_1/Read/ReadVariableOpvariance_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount_2/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOpConst_4* 
Tin
2			*
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
GPU 2J 8 *(
f#R!
__inference__traced_save_313508

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamemeanvariancecountdense/kernel
dense/biasmean_1
variance_1count_1	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcount_2Adam/dense/kernel/mAdam/dense/bias/mAdam/dense/kernel/vAdam/dense/bias/v*
Tin
2*
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
GPU 2J 8 *+
f&R$
"__inference__traced_restore_313575ί?
 
Ύ
F__inference_sequential_layer_call_and_return_conditional_losses_313201
normalization_1_input
normalization_1_sub_y
normalization_1_sqrt_x
dense_313188:	
dense_313190:	
normalization_2_sub_y
normalization_2_sqrt_x
identity’dense/StatefulPartitionedCallz
normalization_1/subSubnormalization_1_inputnormalization_1_sub_y*
T0*'
_output_shapes
:?????????]
normalization_1/SqrtSqrtnormalization_1_sqrt_x*
T0*
_output_shapes

:^
normalization_1/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΏΦ3
normalization_1/MaximumMaximumnormalization_1/Sqrt:y:0"normalization_1/Maximum/y:output:0*
T0*
_output_shapes

:
normalization_1/truedivRealDivnormalization_1/sub:z:0normalization_1/Maximum:z:0*
T0*'
_output_shapes
:?????????ω
dense/StatefulPartitionedCallStatefulPartitionedCallnormalization_1/truediv:z:0dense_313188dense_313190*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_313042
normalization_2/subSub&dense/StatefulPartitionedCall:output:0normalization_2_sub_y*
T0*'
_output_shapes
:?????????	]
normalization_2/SqrtSqrtnormalization_2_sqrt_x*
T0*
_output_shapes

:^
normalization_2/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΏΦ3
normalization_2/MaximumMaximumnormalization_2/Sqrt:y:0"normalization_2/Maximum/y:output:0*
T0*
_output_shapes

:
normalization_2/truedivRealDivnormalization_2/sub:z:0normalization_2/Maximum:z:0*
T0*'
_output_shapes
:?????????	j
IdentityIdentitynormalization_2/truediv:z:0^NoOp*
T0*'
_output_shapes
:?????????	f
NoOpNoOp^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????::: : ::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:^ Z
'
_output_shapes
:?????????
/
_user_specified_namenormalization_1_input:$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

:
Ή'
Κ
__inference_adapt_step_313357
iterator

iterator_1%
add_readvariableop_resource:	 !
readvariableop_resource: #
readvariableop_2_resource: ’AssignVariableOp’AssignVariableOp_1’AssignVariableOp_2’IteratorGetNext’ReadVariableOp’ReadVariableOp_1’ReadVariableOp_2’add/ReadVariableOp±
IteratorGetNextIteratorGetNextiterator*
_class
loc:@iterator*'
_output_shapes
:?????????*&
output_shapes
:?????????*
output_types
2	k
CastCastIteratorGetNext:components:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????o
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       
moments/meanMeanCast:y:0'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:
moments/SquaredDifferenceSquaredDifferenceCast:y:0moments/StopGradient:output:0*
T0*'
_output_shapes
:?????????s
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(j
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 p
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 M
ShapeShapeCast:y:0*
T0*
_output_shapes
:*
out_type0	a
GatherV2/indicesConst*
_output_shapes
:*
dtype0*
valueB"       O
GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
GatherV2GatherV2Shape:output:0GatherV2/indices:output:0GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
:O
ConstConst*
_output_shapes
:*
dtype0*
valueB: P
ProdProdGatherV2:output:0Const:output:0*
T0	*
_output_shapes
: f
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
: *
dtype0	X
addAddV2Prod:output:0add/ReadVariableOp:value:0*
T0	*
_output_shapes
: M
Cast_1CastProd:output:0*

DstT0*

SrcT0	*
_output_shapes
: G
Cast_2Castadd:z:0*

DstT0*

SrcT0	*
_output_shapes
: K
truedivRealDiv
Cast_1:y:0
Cast_2:y:0*
T0*
_output_shapes
: J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?H
subSubsub/x:output:0truediv:z:0*
T0*
_output_shapes
: ^
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0L
mulMulReadVariableOp:value:0sub:z:0*
T0*
_output_shapes
: T
mul_1Mulmoments/Squeeze:output:0truediv:z:0*
T0*
_output_shapes
: C
add_1AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes
: `
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0R
sub_1SubReadVariableOp_1:value:0	add_1:z:0*
T0*
_output_shapes
: J
pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @F
powPow	sub_1:z:0pow/y:output:0*
T0*
_output_shapes
: b
ReadVariableOp_2ReadVariableOpreadvariableop_2_resource*
_output_shapes
: *
dtype0R
add_2AddV2ReadVariableOp_2:value:0pow:z:0*
T0*
_output_shapes
: A
mul_2Mul	add_2:z:0sub:z:0*
T0*
_output_shapes
: R
sub_2Submoments/Squeeze:output:0	add_1:z:0*
T0*
_output_shapes
: L
pow_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @J
pow_1Pow	sub_2:z:0pow_1/y:output:0*
T0*
_output_shapes
: V
add_3AddV2moments/Squeeze_1:output:0	pow_1:z:0*
T0*
_output_shapes
: E
mul_3Mul	add_3:z:0truediv:z:0*
T0*
_output_shapes
: E
add_4AddV2	mul_2:z:0	mul_3:z:0*
T0*
_output_shapes
: 
AssignVariableOpAssignVariableOpreadvariableop_resource	add_1:z:0^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 *
dtype0
AssignVariableOp_1AssignVariableOpreadvariableop_2_resource	add_4:z:0^ReadVariableOp_2*
_output_shapes
 *
dtype0
AssignVariableOp_2AssignVariableOpadd_readvariableop_resourceadd:z:0^add/ReadVariableOp*
_output_shapes
 *
dtype0	*(
_construction_contextkEagerRuntime*
_input_shapes

: : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22"
IteratorGetNextIteratorGetNext2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22(
add/ReadVariableOpadd/ReadVariableOp:( $
"
_user_specified_name
iterator:@<

_output_shapes
: 
"
_user_specified_name
iterator
ς	
Τ
+__inference_sequential_layer_call_fn_313241

inputs
unknown
	unknown_0
	unknown_1:	
	unknown_2:	
	unknown_3
	unknown_4
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_313123o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????::: : ::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

:
Ό

&__inference_dense_layer_call_fn_313366

inputs
unknown:	
	unknown_0:	
identity’StatefulPartitionedCallΦ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_313042o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs


γ
+__inference_sequential_layer_call_fn_313071
normalization_1_input
unknown
	unknown_0
	unknown_1:	
	unknown_2:	
	unknown_3
	unknown_4
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallnormalization_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_313056o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????::: : ::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
'
_output_shapes
:?????????
/
_user_specified_namenormalization_1_input:$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

:
ΒK
€

"__inference__traced_restore_313575
file_prefix
assignvariableop_mean: %
assignvariableop_1_variance: "
assignvariableop_2_count:	 1
assignvariableop_3_dense_kernel:	+
assignvariableop_4_dense_bias:	#
assignvariableop_5_mean_1: '
assignvariableop_6_variance_1: $
assignvariableop_7_count_1:	 &
assignvariableop_8_adam_iter:	 (
assignvariableop_9_adam_beta_1: )
assignvariableop_10_adam_beta_2: (
assignvariableop_11_adam_decay: 0
&assignvariableop_12_adam_learning_rate: #
assignvariableop_13_total: %
assignvariableop_14_count_2: 9
'assignvariableop_15_adam_dense_kernel_m:	3
%assignvariableop_16_adam_dense_bias_m:	9
'assignvariableop_17_adam_dense_kernel_v:	3
%assignvariableop_18_adam_dense_bias_v:	
identity_20’AssignVariableOp’AssignVariableOp_1’AssignVariableOp_10’AssignVariableOp_11’AssignVariableOp_12’AssignVariableOp_13’AssignVariableOp_14’AssignVariableOp_15’AssignVariableOp_16’AssignVariableOp_17’AssignVariableOp_18’AssignVariableOp_2’AssignVariableOp_3’AssignVariableOp_4’AssignVariableOp_5’AssignVariableOp_6’AssignVariableOp_7’AssignVariableOp_8’AssignVariableOp_9ζ	
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*	
value	B?B4layer_with_weights-0/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-0/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-0/count/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-2/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/count/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*;
value2B0B B B B B B B B B B B B B B B B B B B B 
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*d
_output_shapesR
P::::::::::::::::::::*"
dtypes
2			[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOpassignvariableop_meanIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOpassignvariableop_1_varianceIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_2AssignVariableOpassignvariableop_2_countIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOpassignvariableop_4_dense_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOpassignvariableop_5_mean_1Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOpassignvariableop_6_variance_1Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_7AssignVariableOpassignvariableop_7_count_1Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOpassignvariableop_14_count_2Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOp'assignvariableop_15_adam_dense_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp%assignvariableop_16_adam_dense_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp'assignvariableop_17_adam_dense_kernel_vIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp%assignvariableop_18_adam_dense_bias_vIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ρ
Identity_19Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_20IdentityIdentity_19:output:0^NoOp_1*
T0*
_output_shapes
: ή
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_20Identity_20:output:0*;
_input_shapes*
(: : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_18AssignVariableOp_182(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
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

ύ
F__inference_sequential_layer_call_and_return_conditional_losses_313266

inputs
normalization_1_sub_y
normalization_1_sqrt_x6
$dense_matmul_readvariableop_resource:	3
%dense_biasadd_readvariableop_resource:	
normalization_2_sub_y
normalization_2_sqrt_x
identity’dense/BiasAdd/ReadVariableOp’dense/MatMul/ReadVariableOpk
normalization_1/subSubinputsnormalization_1_sub_y*
T0*'
_output_shapes
:?????????]
normalization_1/SqrtSqrtnormalization_1_sqrt_x*
T0*
_output_shapes

:^
normalization_1/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΏΦ3
normalization_1/MaximumMaximumnormalization_1/Sqrt:y:0"normalization_1/Maximum/y:output:0*
T0*
_output_shapes

:
normalization_1/truedivRealDivnormalization_1/sub:z:0normalization_1/Maximum:z:0*
T0*'
_output_shapes
:?????????
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:	*
dtype0
dense/MatMulMatMulnormalization_1/truediv:z:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	\

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????	}
normalization_2/subSubdense/Relu:activations:0normalization_2_sub_y*
T0*'
_output_shapes
:?????????	]
normalization_2/SqrtSqrtnormalization_2_sqrt_x*
T0*
_output_shapes

:^
normalization_2/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΏΦ3
normalization_2/MaximumMaximumnormalization_2/Sqrt:y:0"normalization_2/Maximum/y:output:0*
T0*
_output_shapes

:
normalization_2/truedivRealDivnormalization_2/sub:z:0normalization_2/Maximum:z:0*
T0*'
_output_shapes
:?????????	j
IdentityIdentitynormalization_2/truediv:z:0^NoOp*
T0*'
_output_shapes
:?????????	
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????::: : ::2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

:
σ
―
F__inference_sequential_layer_call_and_return_conditional_losses_313123

inputs
normalization_1_sub_y
normalization_1_sqrt_x
dense_313110:	
dense_313112:	
normalization_2_sub_y
normalization_2_sqrt_x
identity’dense/StatefulPartitionedCallk
normalization_1/subSubinputsnormalization_1_sub_y*
T0*'
_output_shapes
:?????????]
normalization_1/SqrtSqrtnormalization_1_sqrt_x*
T0*
_output_shapes

:^
normalization_1/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΏΦ3
normalization_1/MaximumMaximumnormalization_1/Sqrt:y:0"normalization_1/Maximum/y:output:0*
T0*
_output_shapes

:
normalization_1/truedivRealDivnormalization_1/sub:z:0normalization_1/Maximum:z:0*
T0*'
_output_shapes
:?????????ω
dense/StatefulPartitionedCallStatefulPartitionedCallnormalization_1/truediv:z:0dense_313110dense_313112*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_313042
normalization_2/subSub&dense/StatefulPartitionedCall:output:0normalization_2_sub_y*
T0*'
_output_shapes
:?????????	]
normalization_2/SqrtSqrtnormalization_2_sqrt_x*
T0*
_output_shapes

:^
normalization_2/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΏΦ3
normalization_2/MaximumMaximumnormalization_2/Sqrt:y:0"normalization_2/Maximum/y:output:0*
T0*
_output_shapes

:
normalization_2/truedivRealDivnormalization_2/sub:z:0normalization_2/Maximum:z:0*
T0*'
_output_shapes
:?????????	j
IdentityIdentitynormalization_2/truediv:z:0^NoOp*
T0*'
_output_shapes
:?????????	f
NoOpNoOp^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????::: : ::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

:
Έ
Ώ
!__inference__wrapped_model_313017
normalization_1_input$
 sequential_normalization_1_sub_y%
!sequential_normalization_1_sqrt_xA
/sequential_dense_matmul_readvariableop_resource:	>
0sequential_dense_biasadd_readvariableop_resource:	$
 sequential_normalization_2_sub_y%
!sequential_normalization_2_sqrt_x
identity’'sequential/dense/BiasAdd/ReadVariableOp’&sequential/dense/MatMul/ReadVariableOp
sequential/normalization_1/subSubnormalization_1_input sequential_normalization_1_sub_y*
T0*'
_output_shapes
:?????????s
sequential/normalization_1/SqrtSqrt!sequential_normalization_1_sqrt_x*
T0*
_output_shapes

:i
$sequential/normalization_1/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΏΦ3ͺ
"sequential/normalization_1/MaximumMaximum#sequential/normalization_1/Sqrt:y:0-sequential/normalization_1/Maximum/y:output:0*
T0*
_output_shapes

:«
"sequential/normalization_1/truedivRealDiv"sequential/normalization_1/sub:z:0&sequential/normalization_1/Maximum:z:0*
T0*'
_output_shapes
:?????????
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*
_output_shapes

:	*
dtype0«
sequential/dense/MatMulMatMul&sequential/normalization_1/truediv:z:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0©
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	r
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????	
sequential/normalization_2/subSub#sequential/dense/Relu:activations:0 sequential_normalization_2_sub_y*
T0*'
_output_shapes
:?????????	s
sequential/normalization_2/SqrtSqrt!sequential_normalization_2_sqrt_x*
T0*
_output_shapes

:i
$sequential/normalization_2/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΏΦ3ͺ
"sequential/normalization_2/MaximumMaximum#sequential/normalization_2/Sqrt:y:0-sequential/normalization_2/Maximum/y:output:0*
T0*
_output_shapes

:«
"sequential/normalization_2/truedivRealDiv"sequential/normalization_2/sub:z:0&sequential/normalization_2/Maximum:z:0*
T0*'
_output_shapes
:?????????	u
IdentityIdentity&sequential/normalization_2/truediv:z:0^NoOp*
T0*'
_output_shapes
:?????????	
NoOpNoOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????::: : ::2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp:^ Z
'
_output_shapes
:?????????
/
_user_specified_namenormalization_1_input:$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

:
Ή'
Κ
__inference_adapt_step_313424
iterator

iterator_1%
add_readvariableop_resource:	 !
readvariableop_resource: #
readvariableop_2_resource: ’AssignVariableOp’AssignVariableOp_1’AssignVariableOp_2’IteratorGetNext’ReadVariableOp’ReadVariableOp_1’ReadVariableOp_2’add/ReadVariableOp±
IteratorGetNextIteratorGetNextiterator*
_class
loc:@iterator*'
_output_shapes
:?????????*&
output_shapes
:?????????*
output_types
2	k
CastCastIteratorGetNext:components:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????o
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       
moments/meanMeanCast:y:0'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:
moments/SquaredDifferenceSquaredDifferenceCast:y:0moments/StopGradient:output:0*
T0*'
_output_shapes
:?????????s
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(j
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 p
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 M
ShapeShapeCast:y:0*
T0*
_output_shapes
:*
out_type0	a
GatherV2/indicesConst*
_output_shapes
:*
dtype0*
valueB"       O
GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
GatherV2GatherV2Shape:output:0GatherV2/indices:output:0GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
:O
ConstConst*
_output_shapes
:*
dtype0*
valueB: P
ProdProdGatherV2:output:0Const:output:0*
T0	*
_output_shapes
: f
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
: *
dtype0	X
addAddV2Prod:output:0add/ReadVariableOp:value:0*
T0	*
_output_shapes
: M
Cast_1CastProd:output:0*

DstT0*

SrcT0	*
_output_shapes
: G
Cast_2Castadd:z:0*

DstT0*

SrcT0	*
_output_shapes
: K
truedivRealDiv
Cast_1:y:0
Cast_2:y:0*
T0*
_output_shapes
: J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?H
subSubsub/x:output:0truediv:z:0*
T0*
_output_shapes
: ^
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0L
mulMulReadVariableOp:value:0sub:z:0*
T0*
_output_shapes
: T
mul_1Mulmoments/Squeeze:output:0truediv:z:0*
T0*
_output_shapes
: C
add_1AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes
: `
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0R
sub_1SubReadVariableOp_1:value:0	add_1:z:0*
T0*
_output_shapes
: J
pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @F
powPow	sub_1:z:0pow/y:output:0*
T0*
_output_shapes
: b
ReadVariableOp_2ReadVariableOpreadvariableop_2_resource*
_output_shapes
: *
dtype0R
add_2AddV2ReadVariableOp_2:value:0pow:z:0*
T0*
_output_shapes
: A
mul_2Mul	add_2:z:0sub:z:0*
T0*
_output_shapes
: R
sub_2Submoments/Squeeze:output:0	add_1:z:0*
T0*
_output_shapes
: L
pow_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @J
pow_1Pow	sub_2:z:0pow_1/y:output:0*
T0*
_output_shapes
: V
add_3AddV2moments/Squeeze_1:output:0	pow_1:z:0*
T0*
_output_shapes
: E
mul_3Mul	add_3:z:0truediv:z:0*
T0*
_output_shapes
: E
add_4AddV2	mul_2:z:0	mul_3:z:0*
T0*
_output_shapes
: 
AssignVariableOpAssignVariableOpreadvariableop_resource	add_1:z:0^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 *
dtype0
AssignVariableOp_1AssignVariableOpreadvariableop_2_resource	add_4:z:0^ReadVariableOp_2*
_output_shapes
 *
dtype0
AssignVariableOp_2AssignVariableOpadd_readvariableop_resourceadd:z:0^add/ReadVariableOp*
_output_shapes
 *
dtype0	*(
_construction_contextkEagerRuntime*
_input_shapes

: : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22"
IteratorGetNextIteratorGetNext2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22(
add/ReadVariableOpadd/ReadVariableOp:( $
"
_user_specified_name
iterator:@<

_output_shapes
: 
"
_user_specified_name
iterator


ς
A__inference_dense_layer_call_and_return_conditional_losses_313377

inputs0
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:	
identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:	*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????	a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????	w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
,
?
__inference__traced_save_313508
file_prefix#
savev2_mean_read_readvariableop'
#savev2_variance_read_readvariableop$
 savev2_count_read_readvariableop	+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop%
!savev2_mean_1_read_readvariableop)
%savev2_variance_1_read_readvariableop&
"savev2_count_1_read_readvariableop	(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop&
"savev2_count_2_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop
savev2_const_4

identity_1’MergeV2Checkpointsw
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
_temp/part
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
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: γ	
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*	
value	B?B4layer_with_weights-0/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-0/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-0/count/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-2/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/count/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*;
value2B0B B B B B B B B B B B B B B B B B B B B Ή
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0savev2_mean_read_readvariableop#savev2_variance_read_readvariableop savev2_count_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop!savev2_mean_1_read_readvariableop%savev2_variance_1_read_readvariableop"savev2_count_1_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop"savev2_count_2_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableopsavev2_const_4"/device:CPU:0*
_output_shapes
 *"
dtypes
2			
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*a
_input_shapesP
N: : : : :	:	: : : : : : : : : : :	:	:	:	: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:	: 

_output_shapes
:	:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:	: 

_output_shapes
:	:$ 

_output_shapes

:	: 

_output_shapes
:	:

_output_shapes
: 
σ	
ά
$__inference_signature_wrapper_313310
normalization_1_input
unknown
	unknown_0
	unknown_1:	
	unknown_2:	
	unknown_3
	unknown_4
identity’StatefulPartitionedCallυ
StatefulPartitionedCallStatefulPartitionedCallnormalization_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_313017o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????::: : ::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
'
_output_shapes
:?????????
/
_user_specified_namenormalization_1_input:$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

:
ς	
Τ
+__inference_sequential_layer_call_fn_313224

inputs
unknown
	unknown_0
	unknown_1:	
	unknown_2:	
	unknown_3
	unknown_4
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_313056o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????::: : ::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

:
σ
―
F__inference_sequential_layer_call_and_return_conditional_losses_313056

inputs
normalization_1_sub_y
normalization_1_sqrt_x
dense_313043:	
dense_313045:	
normalization_2_sub_y
normalization_2_sqrt_x
identity’dense/StatefulPartitionedCallk
normalization_1/subSubinputsnormalization_1_sub_y*
T0*'
_output_shapes
:?????????]
normalization_1/SqrtSqrtnormalization_1_sqrt_x*
T0*
_output_shapes

:^
normalization_1/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΏΦ3
normalization_1/MaximumMaximumnormalization_1/Sqrt:y:0"normalization_1/Maximum/y:output:0*
T0*
_output_shapes

:
normalization_1/truedivRealDivnormalization_1/sub:z:0normalization_1/Maximum:z:0*
T0*'
_output_shapes
:?????????ω
dense/StatefulPartitionedCallStatefulPartitionedCallnormalization_1/truediv:z:0dense_313043dense_313045*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_313042
normalization_2/subSub&dense/StatefulPartitionedCall:output:0normalization_2_sub_y*
T0*'
_output_shapes
:?????????	]
normalization_2/SqrtSqrtnormalization_2_sqrt_x*
T0*
_output_shapes

:^
normalization_2/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΏΦ3
normalization_2/MaximumMaximumnormalization_2/Sqrt:y:0"normalization_2/Maximum/y:output:0*
T0*
_output_shapes

:
normalization_2/truedivRealDivnormalization_2/sub:z:0normalization_2/Maximum:z:0*
T0*'
_output_shapes
:?????????	j
IdentityIdentitynormalization_2/truediv:z:0^NoOp*
T0*'
_output_shapes
:?????????	f
NoOpNoOp^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????::: : ::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

:

ύ
F__inference_sequential_layer_call_and_return_conditional_losses_313291

inputs
normalization_1_sub_y
normalization_1_sqrt_x6
$dense_matmul_readvariableop_resource:	3
%dense_biasadd_readvariableop_resource:	
normalization_2_sub_y
normalization_2_sqrt_x
identity’dense/BiasAdd/ReadVariableOp’dense/MatMul/ReadVariableOpk
normalization_1/subSubinputsnormalization_1_sub_y*
T0*'
_output_shapes
:?????????]
normalization_1/SqrtSqrtnormalization_1_sqrt_x*
T0*
_output_shapes

:^
normalization_1/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΏΦ3
normalization_1/MaximumMaximumnormalization_1/Sqrt:y:0"normalization_1/Maximum/y:output:0*
T0*
_output_shapes

:
normalization_1/truedivRealDivnormalization_1/sub:z:0normalization_1/Maximum:z:0*
T0*'
_output_shapes
:?????????
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:	*
dtype0
dense/MatMulMatMulnormalization_1/truediv:z:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	\

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????	}
normalization_2/subSubdense/Relu:activations:0normalization_2_sub_y*
T0*'
_output_shapes
:?????????	]
normalization_2/SqrtSqrtnormalization_2_sqrt_x*
T0*
_output_shapes

:^
normalization_2/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΏΦ3
normalization_2/MaximumMaximumnormalization_2/Sqrt:y:0"normalization_2/Maximum/y:output:0*
T0*
_output_shapes

:
normalization_2/truedivRealDivnormalization_2/sub:z:0normalization_2/Maximum:z:0*
T0*'
_output_shapes
:?????????	j
IdentityIdentitynormalization_2/truediv:z:0^NoOp*
T0*'
_output_shapes
:?????????	
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????::: : ::2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

:
 
Ύ
F__inference_sequential_layer_call_and_return_conditional_losses_313178
normalization_1_input
normalization_1_sub_y
normalization_1_sqrt_x
dense_313165:	
dense_313167:	
normalization_2_sub_y
normalization_2_sqrt_x
identity’dense/StatefulPartitionedCallz
normalization_1/subSubnormalization_1_inputnormalization_1_sub_y*
T0*'
_output_shapes
:?????????]
normalization_1/SqrtSqrtnormalization_1_sqrt_x*
T0*
_output_shapes

:^
normalization_1/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΏΦ3
normalization_1/MaximumMaximumnormalization_1/Sqrt:y:0"normalization_1/Maximum/y:output:0*
T0*
_output_shapes

:
normalization_1/truedivRealDivnormalization_1/sub:z:0normalization_1/Maximum:z:0*
T0*'
_output_shapes
:?????????ω
dense/StatefulPartitionedCallStatefulPartitionedCallnormalization_1/truediv:z:0dense_313165dense_313167*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_313042
normalization_2/subSub&dense/StatefulPartitionedCall:output:0normalization_2_sub_y*
T0*'
_output_shapes
:?????????	]
normalization_2/SqrtSqrtnormalization_2_sqrt_x*
T0*
_output_shapes

:^
normalization_2/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΏΦ3
normalization_2/MaximumMaximumnormalization_2/Sqrt:y:0"normalization_2/Maximum/y:output:0*
T0*
_output_shapes

:
normalization_2/truedivRealDivnormalization_2/sub:z:0normalization_2/Maximum:z:0*
T0*'
_output_shapes
:?????????	j
IdentityIdentitynormalization_2/truediv:z:0^NoOp*
T0*'
_output_shapes
:?????????	f
NoOpNoOp^dense/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????::: : ::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:^ Z
'
_output_shapes
:?????????
/
_user_specified_namenormalization_1_input:$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

:


γ
+__inference_sequential_layer_call_fn_313155
normalization_1_input
unknown
	unknown_0
	unknown_1:	
	unknown_2:	
	unknown_3
	unknown_4
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallnormalization_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_313123o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:?????????::: : ::22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
'
_output_shapes
:?????????
/
_user_specified_namenormalization_1_input:$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

:


ς
A__inference_dense_layer_call_and_return_conditional_losses_313042

inputs0
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:	
identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:	*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????	a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????	w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs"ΫL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ξ
serving_defaultΊ
W
normalization_1_input>
'serving_default_normalization_1_input:0?????????C
normalization_20
StatefulPartitionedCall:0?????????	tensorflow/serving/predict:Ο=
Ϋ
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
Σ

_keep_axis
_reduce_axis
_reduce_axis_mask
_broadcast_shape
mean

adapt_mean
variance
adapt_variance
	count
	keras_api
_adapt_function"
_tf_keras_layer
»

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
Σ

_keep_axis
_reduce_axis
 _reduce_axis_mask
!_broadcast_shape
"mean
"
adapt_mean
#variance
#adapt_variance
	$count
%	keras_api
&_adapt_function"
_tf_keras_layer
w
'iter

(beta_1

)beta_2
	*decay
+learning_ratem<m=v>v?"
	optimizer
X
0
1
2
3
4
"5
#6
$7"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
Κ
,non_trainable_variables

-layers
.metrics
/layer_regularization_losses
0layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses"
_generic_user_object
ϊ2χ
+__inference_sequential_layer_call_fn_313071
+__inference_sequential_layer_call_fn_313224
+__inference_sequential_layer_call_fn_313241
+__inference_sequential_layer_call_fn_313155ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
ζ2γ
F__inference_sequential_layer_call_and_return_conditional_losses_313266
F__inference_sequential_layer_call_and_return_conditional_losses_313291
F__inference_sequential_layer_call_and_return_conditional_losses_313178
F__inference_sequential_layer_call_and_return_conditional_losses_313201ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
ΪBΧ
!__inference__wrapped_model_313017normalization_1_input"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
,
1serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
:
 2mean
: 2variance
:	 2count
"
_generic_user_object
Ώ2Ό
__inference_adapt_step_313357
²
FullArgSpec
args

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
:	2dense/kernel
:	2
dense/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
2non_trainable_variables

3layers
4metrics
5layer_regularization_losses
6layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Π2Ν
&__inference_dense_layer_call_fn_313366’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
λ2θ
A__inference_dense_layer_call_and_return_conditional_losses_313377’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
:
 2mean
: 2variance
:	 2count
"
_generic_user_object
Ώ2Ό
__inference_adapt_step_313424
²
FullArgSpec
args

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
J
0
1
2
"3
#4
$5"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
'
70"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ΩBΦ
$__inference_signature_wrapper_313310normalization_1_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
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
N
	8total
	9count
:	variables
;	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
80
91"
trackable_list_wrapper
-
:	variables"
_generic_user_object
#:!	2Adam/dense/kernel/m
:	2Adam/dense/bias/m
#:!	2Adam/dense/kernel/v
:	2Adam/dense/bias/v
	J
Const
J	
Const_1
J	
Const_2
J	
Const_3±
!__inference__wrapped_model_313017@ABC>’;
4’1
/,
normalization_1_input?????????
ͺ "Aͺ>
<
normalization_2)&
normalization_2?????????	o
__inference_adapt_step_313357NC’@
9’6
41’
?????????	IteratorSpec 
ͺ "
 o
__inference_adapt_step_313424N$"#C’@
9’6
41’
?????????	IteratorSpec 
ͺ "
 ‘
A__inference_dense_layer_call_and_return_conditional_losses_313377\/’,
%’"
 
inputs?????????
ͺ "%’"

0?????????	
 y
&__inference_dense_layer_call_fn_313366O/’,
%’"
 
inputs?????????
ͺ "?????????	Α
F__inference_sequential_layer_call_and_return_conditional_losses_313178w@ABCF’C
<’9
/,
normalization_1_input?????????
p 

 
ͺ "%’"

0?????????	
 Α
F__inference_sequential_layer_call_and_return_conditional_losses_313201w@ABCF’C
<’9
/,
normalization_1_input?????????
p

 
ͺ "%’"

0?????????	
 ²
F__inference_sequential_layer_call_and_return_conditional_losses_313266h@ABC7’4
-’*
 
inputs?????????
p 

 
ͺ "%’"

0?????????	
 ²
F__inference_sequential_layer_call_and_return_conditional_losses_313291h@ABC7’4
-’*
 
inputs?????????
p

 
ͺ "%’"

0?????????	
 
+__inference_sequential_layer_call_fn_313071j@ABCF’C
<’9
/,
normalization_1_input?????????
p 

 
ͺ "?????????	
+__inference_sequential_layer_call_fn_313155j@ABCF’C
<’9
/,
normalization_1_input?????????
p

 
ͺ "?????????	
+__inference_sequential_layer_call_fn_313224[@ABC7’4
-’*
 
inputs?????????
p 

 
ͺ "?????????	
+__inference_sequential_layer_call_fn_313241[@ABC7’4
-’*
 
inputs?????????
p

 
ͺ "?????????	Ν
$__inference_signature_wrapper_313310€@ABCW’T
’ 
MͺJ
H
normalization_1_input/,
normalization_1_input?????????"Aͺ>
<
normalization_2)&
normalization_2?????????	