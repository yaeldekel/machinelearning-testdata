æ
¬#ū"
:
Add
x"T
y"T
z"T"
Ttype:
2	
ī
	ApplyAdam
var"T	
m"T	
v"T
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"T" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 

ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
ģ
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)


Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)


Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

B
Equal
x"T
y"T
z
"
Ttype:
2	

^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	
.
Neg
x"T
y"T"
Ttype:

2	

NoOp

OneHot
indices"TI	
depth
on_value"T
	off_value"T
output"T"
axisint’’’’’’’’’"	
Ttype"
TItype0	:
2	
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
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
D
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
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
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
j
SoftmaxCrossEntropyWithLogits
features"T
labels"T	
loss"T
backprop"T"
Ttype:
2
2
StopGradient

input"T
output"T"	
Ttype
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring "serve*1.10.02b'v1.10.0-rc1-19-g656e7a2b34'­Ņ
x
InputPlaceholder*
dtype0*/
_output_shapes
:’’’’’’’’’  *$
shape:’’’’’’’’’  
f
PlaceholderPlaceholder*
dtype0	*#
_output_shapes
:’’’’’’’’’*
shape:’’’’’’’’’
R
Placeholder_1Placeholder*
dtype0
*
_output_shapes
:*
shape:
R
Placeholder_2Placeholder*
dtype0*
_output_shapes
:*
shape:

'Wconv1/Initializer/random_uniform/shapeConst*%
valueB"             *
dtype0*
_output_shapes
:*
_class
loc:@Wconv1

%Wconv1/Initializer/random_uniform/minConst*
valueB
 *¬Er½*
dtype0*
_output_shapes
: *
_class
loc:@Wconv1

%Wconv1/Initializer/random_uniform/maxConst*
valueB
 *¬Er=*
dtype0*
_output_shapes
: *
_class
loc:@Wconv1
Ū
/Wconv1/Initializer/random_uniform/RandomUniformRandomUniform'Wconv1/Initializer/random_uniform/shape*
seed2 *
_class
loc:@Wconv1*
T0*&
_output_shapes
: *
dtype0*

seed 
¶
%Wconv1/Initializer/random_uniform/subSub%Wconv1/Initializer/random_uniform/max%Wconv1/Initializer/random_uniform/min*
T0*
_output_shapes
: *
_class
loc:@Wconv1
Š
%Wconv1/Initializer/random_uniform/mulMul/Wconv1/Initializer/random_uniform/RandomUniform%Wconv1/Initializer/random_uniform/sub*
T0*&
_output_shapes
: *
_class
loc:@Wconv1
Ā
!Wconv1/Initializer/random_uniformAdd%Wconv1/Initializer/random_uniform/mul%Wconv1/Initializer/random_uniform/min*
T0*&
_output_shapes
: *
_class
loc:@Wconv1
„
Wconv1
VariableV2*
shared_name *
_class
loc:@Wconv1*&
_output_shapes
: *
dtype0*
shape: *
	container 
·
Wconv1/AssignAssignWconv1!Wconv1/Initializer/random_uniform*
T0*&
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@Wconv1
k
Wconv1/readIdentityWconv1*
T0*&
_output_shapes
: *
_class
loc:@Wconv1

'bconv1/Initializer/random_uniform/shapeConst*
valueB: *
dtype0*
_output_shapes
:*
_class
loc:@bconv1

%bconv1/Initializer/random_uniform/minConst*
valueB
 *qÄ¾*
dtype0*
_output_shapes
: *
_class
loc:@bconv1

%bconv1/Initializer/random_uniform/maxConst*
valueB
 *qÄ>*
dtype0*
_output_shapes
: *
_class
loc:@bconv1
Ļ
/bconv1/Initializer/random_uniform/RandomUniformRandomUniform'bconv1/Initializer/random_uniform/shape*
seed2 *
_class
loc:@bconv1*
T0*
_output_shapes
: *
dtype0*

seed 
¶
%bconv1/Initializer/random_uniform/subSub%bconv1/Initializer/random_uniform/max%bconv1/Initializer/random_uniform/min*
T0*
_output_shapes
: *
_class
loc:@bconv1
Ä
%bconv1/Initializer/random_uniform/mulMul/bconv1/Initializer/random_uniform/RandomUniform%bconv1/Initializer/random_uniform/sub*
T0*
_output_shapes
: *
_class
loc:@bconv1
¶
!bconv1/Initializer/random_uniformAdd%bconv1/Initializer/random_uniform/mul%bconv1/Initializer/random_uniform/min*
T0*
_output_shapes
: *
_class
loc:@bconv1

bconv1
VariableV2*
shared_name *
_class
loc:@bconv1*
_output_shapes
: *
dtype0*
shape: *
	container 
«
bconv1/AssignAssignbconv1!bconv1/Initializer/random_uniform*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@bconv1
_
bconv1/readIdentitybconv1*
T0*
_output_shapes
: *
_class
loc:@bconv1

#W1/Initializer/random_uniform/shapeConst*
valueB"   
   *
dtype0*
_output_shapes
:*
_class
	loc:@W1
}
!W1/Initializer/random_uniform/minConst*
valueB
 *mN½*
dtype0*
_output_shapes
: *
_class
	loc:@W1
}
!W1/Initializer/random_uniform/maxConst*
valueB
 *mN=*
dtype0*
_output_shapes
: *
_class
	loc:@W1
Č
+W1/Initializer/random_uniform/RandomUniformRandomUniform#W1/Initializer/random_uniform/shape*
seed2 *
_class
	loc:@W1*
T0*
_output_shapes
:	 *
*
dtype0*

seed 
¦
!W1/Initializer/random_uniform/subSub!W1/Initializer/random_uniform/max!W1/Initializer/random_uniform/min*
T0*
_output_shapes
: *
_class
	loc:@W1
¹
!W1/Initializer/random_uniform/mulMul+W1/Initializer/random_uniform/RandomUniform!W1/Initializer/random_uniform/sub*
T0*
_output_shapes
:	 *
*
_class
	loc:@W1
«
W1/Initializer/random_uniformAdd!W1/Initializer/random_uniform/mul!W1/Initializer/random_uniform/min*
T0*
_output_shapes
:	 *
*
_class
	loc:@W1

W1
VariableV2*
shared_name *
_class
	loc:@W1*
_output_shapes
:	 *
*
dtype0*
shape:	 *
*
	container 
 
	W1/AssignAssignW1W1/Initializer/random_uniform*
T0*
_output_shapes
:	 *
*
use_locking(*
validate_shape(*
_class
	loc:@W1
X
W1/readIdentityW1*
T0*
_output_shapes
:	 *
*
_class
	loc:@W1

#b1/Initializer/random_uniform/shapeConst*
valueB:
*
dtype0*
_output_shapes
:*
_class
	loc:@b1
}
!b1/Initializer/random_uniform/minConst*
valueB
 *7æ*
dtype0*
_output_shapes
: *
_class
	loc:@b1
}
!b1/Initializer/random_uniform/maxConst*
valueB
 *7?*
dtype0*
_output_shapes
: *
_class
	loc:@b1
Ć
+b1/Initializer/random_uniform/RandomUniformRandomUniform#b1/Initializer/random_uniform/shape*
seed2 *
_class
	loc:@b1*
T0*
_output_shapes
:
*
dtype0*

seed 
¦
!b1/Initializer/random_uniform/subSub!b1/Initializer/random_uniform/max!b1/Initializer/random_uniform/min*
T0*
_output_shapes
: *
_class
	loc:@b1
“
!b1/Initializer/random_uniform/mulMul+b1/Initializer/random_uniform/RandomUniform!b1/Initializer/random_uniform/sub*
T0*
_output_shapes
:
*
_class
	loc:@b1
¦
b1/Initializer/random_uniformAdd!b1/Initializer/random_uniform/mul!b1/Initializer/random_uniform/min*
T0*
_output_shapes
:
*
_class
	loc:@b1

b1
VariableV2*
shared_name *
_class
	loc:@b1*
_output_shapes
:
*
dtype0*
shape:
*
	container 

	b1/AssignAssignb1b1/Initializer/random_uniform*
T0*
_output_shapes
:
*
use_locking(*
validate_shape(*
_class
	loc:@b1
S
b1/readIdentityb1*
T0*
_output_shapes
:
*
_class
	loc:@b1
Ķ
Conv2DConv2DInputWconv1/read*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingVALID*/
_output_shapes
:’’’’’’’’’ *
use_cudnn_on_gpu(
Y
addAddConv2Dbconv1/read*
T0*/
_output_shapes
:’’’’’’’’’ 
W
OutputConvRelu_1Reluadd*
T0*/
_output_shapes
:’’’’’’’’’ 
^
Reshape/shapeConst*
valueB"’’’’   *
dtype0*
_output_shapes
:
t
ReshapeReshapeOutputConvRelu_1Reshape/shape*
T0*
Tshape0*(
_output_shapes
:’’’’’’’’’ *
z
OutputMatMulReshapeW1/read*
T0*
transpose_b( *
transpose_a( *'
_output_shapes
:’’’’’’’’’

O
add_1AddOutputb1/read*
T0*'
_output_shapes
:’’’’’’’’’

U
one_hot/on_valueConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
V
one_hot/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
O
one_hot/depthConst*
value	B :
*
dtype0*
_output_shapes
: 
£
one_hotOneHotPlaceholderone_hot/depthone_hot/on_valueone_hot/off_value*
axis’’’’’’’’’*
T0*'
_output_shapes
:’’’’’’’’’
*
TI0	
a
hinge_loss/ones_like/ShapeShapeone_hot*
T0*
out_type0*
_output_shapes
:
_
hinge_loss/ones_like/ConstConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

hinge_loss/ones_likeFillhinge_loss/ones_like/Shapehinge_loss/ones_like/Const*
T0*'
_output_shapes
:’’’’’’’’’
*

index_type0
U
hinge_loss/mul/xConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
b
hinge_loss/mulMulhinge_loss/mul/xone_hot*
T0*'
_output_shapes
:’’’’’’’’’

m
hinge_loss/SubSubhinge_loss/mulhinge_loss/ones_like*
T0*'
_output_shapes
:’’’’’’’’’

`
hinge_loss/Mul_1Mulhinge_loss/Subadd_1*
T0*'
_output_shapes
:’’’’’’’’’

q
hinge_loss/Sub_1Subhinge_loss/ones_likehinge_loss/Mul_1*
T0*'
_output_shapes
:’’’’’’’’’

[
hinge_loss/ReluReluhinge_loss/Sub_1*
T0*'
_output_shapes
:’’’’’’’’’

l
'hinge_loss/assert_broadcastable/weightsConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
p
-hinge_loss/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 
n
,hinge_loss/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 
{
,hinge_loss/assert_broadcastable/values/shapeShapehinge_loss/Relu*
T0*
out_type0*
_output_shapes
:
m
+hinge_loss/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
C
;hinge_loss/assert_broadcastable/static_scalar_check_successNoOp

hinge_loss/ToFloat/xConst<^hinge_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
p
hinge_loss/Mul_2Mulhinge_loss/Reluhinge_loss/ToFloat/x*
T0*'
_output_shapes
:’’’’’’’’’


hinge_loss/ConstConst<^hinge_loss/assert_broadcastable/static_scalar_check_success*
valueB"       *
dtype0*
_output_shapes
:
w
hinge_loss/SumSumhinge_loss/Mul_2hinge_loss/Const*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
”
hinge_loss/num_present/Equal/yConst<^hinge_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
|
hinge_loss/num_present/EqualEqualhinge_loss/ToFloat/xhinge_loss/num_present/Equal/y*
T0*
_output_shapes
: 
¤
!hinge_loss/num_present/zeros_likeConst<^hinge_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
§
&hinge_loss/num_present/ones_like/ShapeConst<^hinge_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
©
&hinge_loss/num_present/ones_like/ConstConst<^hinge_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
«
 hinge_loss/num_present/ones_likeFill&hinge_loss/num_present/ones_like/Shape&hinge_loss/num_present/ones_like/Const*
T0*
_output_shapes
: *

index_type0
«
hinge_loss/num_present/SelectSelecthinge_loss/num_present/Equal!hinge_loss/num_present/zeros_like hinge_loss/num_present/ones_like*
T0*
_output_shapes
: 
Ģ
Khinge_loss/num_present/broadcast_weights/assert_broadcastable/weights/shapeConst<^hinge_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
Ź
Jhinge_loss/num_present/broadcast_weights/assert_broadcastable/weights/rankConst<^hinge_loss/assert_broadcastable/static_scalar_check_success*
value	B : *
dtype0*
_output_shapes
: 
×
Jhinge_loss/num_present/broadcast_weights/assert_broadcastable/values/shapeShapehinge_loss/Relu<^hinge_loss/assert_broadcastable/static_scalar_check_success*
T0*
out_type0*
_output_shapes
:
É
Ihinge_loss/num_present/broadcast_weights/assert_broadcastable/values/rankConst<^hinge_loss/assert_broadcastable/static_scalar_check_success*
value	B :*
dtype0*
_output_shapes
: 

Yhinge_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOp<^hinge_loss/assert_broadcastable/static_scalar_check_success
”
8hinge_loss/num_present/broadcast_weights/ones_like/ShapeShapehinge_loss/Relu<^hinge_loss/assert_broadcastable/static_scalar_check_successZ^hinge_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
T0*
out_type0*
_output_shapes
:

8hinge_loss/num_present/broadcast_weights/ones_like/ConstConst<^hinge_loss/assert_broadcastable/static_scalar_check_successZ^hinge_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ņ
2hinge_loss/num_present/broadcast_weights/ones_likeFill8hinge_loss/num_present/broadcast_weights/ones_like/Shape8hinge_loss/num_present/broadcast_weights/ones_like/Const*
T0*'
_output_shapes
:’’’’’’’’’
*

index_type0
“
(hinge_loss/num_present/broadcast_weightsMulhinge_loss/num_present/Select2hinge_loss/num_present/broadcast_weights/ones_like*
T0*'
_output_shapes
:’’’’’’’’’

«
hinge_loss/num_present/ConstConst<^hinge_loss/assert_broadcastable/static_scalar_check_success*
valueB"       *
dtype0*
_output_shapes
:
£
hinge_loss/num_presentSum(hinge_loss/num_present/broadcast_weightshinge_loss/num_present/Const*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0

hinge_loss/Const_1Const<^hinge_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
y
hinge_loss/Sum_1Sumhinge_loss/Sumhinge_loss/Const_1*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0

hinge_loss/Greater/yConst<^hinge_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
l
hinge_loss/GreaterGreaterhinge_loss/num_presenthinge_loss/Greater/y*
T0*
_output_shapes
: 

hinge_loss/Equal/yConst<^hinge_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
f
hinge_loss/EqualEqualhinge_loss/num_presenthinge_loss/Equal/y*
T0*
_output_shapes
: 

hinge_loss/ones_like_1/ShapeConst<^hinge_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 

hinge_loss/ones_like_1/ConstConst<^hinge_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 

hinge_loss/ones_like_1Fillhinge_loss/ones_like_1/Shapehinge_loss/ones_like_1/Const*
T0*
_output_shapes
: *

index_type0
~
hinge_loss/SelectSelecthinge_loss/Equalhinge_loss/ones_like_1hinge_loss/num_present*
T0*
_output_shapes
: 
_
hinge_loss/divRealDivhinge_loss/Sum_1hinge_loss/Select*
T0*
_output_shapes
: 

hinge_loss/zeros_likeConst<^hinge_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
v
hinge_loss/valueSelecthinge_loss/Greaterhinge_loss/divhinge_loss/zeros_like*
T0*
_output_shapes
: 
H
ConstConst*
valueB *
dtype0*
_output_shapes
: 
c
MeanMeanhinge_loss/valueConst*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
W
one_hot_1/on_valueConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
X
one_hot_1/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Q
one_hot_1/depthConst*
value	B :
*
dtype0*
_output_shapes
: 
«
	one_hot_1OneHotPlaceholderone_hot_1/depthone_hot_1/on_valueone_hot_1/off_value*
axis’’’’’’’’’*
T0*'
_output_shapes
:’’’’’’’’’
*
TI0	

9softmax_cross_entropy_with_logits_sg/labels_stop_gradientStopGradient	one_hot_1*
T0*'
_output_shapes
:’’’’’’’’’

k
)softmax_cross_entropy_with_logits_sg/RankConst*
value	B :*
dtype0*
_output_shapes
: 
o
*softmax_cross_entropy_with_logits_sg/ShapeShapeadd_1*
T0*
out_type0*
_output_shapes
:
m
+softmax_cross_entropy_with_logits_sg/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
q
,softmax_cross_entropy_with_logits_sg/Shape_1Shapeadd_1*
T0*
out_type0*
_output_shapes
:
l
*softmax_cross_entropy_with_logits_sg/Sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
©
(softmax_cross_entropy_with_logits_sg/SubSub+softmax_cross_entropy_with_logits_sg/Rank_1*softmax_cross_entropy_with_logits_sg/Sub/y*
T0*
_output_shapes
: 

0softmax_cross_entropy_with_logits_sg/Slice/beginPack(softmax_cross_entropy_with_logits_sg/Sub*

axis *
T0*
N*
_output_shapes
:
y
/softmax_cross_entropy_with_logits_sg/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
ö
*softmax_cross_entropy_with_logits_sg/SliceSlice,softmax_cross_entropy_with_logits_sg/Shape_10softmax_cross_entropy_with_logits_sg/Slice/begin/softmax_cross_entropy_with_logits_sg/Slice/size*
Index0*
T0*
_output_shapes
:

4softmax_cross_entropy_with_logits_sg/concat/values_0Const*
valueB:
’’’’’’’’’*
dtype0*
_output_shapes
:
r
0softmax_cross_entropy_with_logits_sg/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 

+softmax_cross_entropy_with_logits_sg/concatConcatV24softmax_cross_entropy_with_logits_sg/concat/values_0*softmax_cross_entropy_with_logits_sg/Slice0softmax_cross_entropy_with_logits_sg/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
“
,softmax_cross_entropy_with_logits_sg/ReshapeReshapeadd_1+softmax_cross_entropy_with_logits_sg/concat*
T0*
Tshape0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’
m
+softmax_cross_entropy_with_logits_sg/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
„
,softmax_cross_entropy_with_logits_sg/Shape_2Shape9softmax_cross_entropy_with_logits_sg/labels_stop_gradient*
T0*
out_type0*
_output_shapes
:
n
,softmax_cross_entropy_with_logits_sg/Sub_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
­
*softmax_cross_entropy_with_logits_sg/Sub_1Sub+softmax_cross_entropy_with_logits_sg/Rank_2,softmax_cross_entropy_with_logits_sg/Sub_1/y*
T0*
_output_shapes
: 
 
2softmax_cross_entropy_with_logits_sg/Slice_1/beginPack*softmax_cross_entropy_with_logits_sg/Sub_1*

axis *
T0*
N*
_output_shapes
:
{
1softmax_cross_entropy_with_logits_sg/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
ü
,softmax_cross_entropy_with_logits_sg/Slice_1Slice,softmax_cross_entropy_with_logits_sg/Shape_22softmax_cross_entropy_with_logits_sg/Slice_1/begin1softmax_cross_entropy_with_logits_sg/Slice_1/size*
Index0*
T0*
_output_shapes
:

6softmax_cross_entropy_with_logits_sg/concat_1/values_0Const*
valueB:
’’’’’’’’’*
dtype0*
_output_shapes
:
t
2softmax_cross_entropy_with_logits_sg/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 

-softmax_cross_entropy_with_logits_sg/concat_1ConcatV26softmax_cross_entropy_with_logits_sg/concat_1/values_0,softmax_cross_entropy_with_logits_sg/Slice_12softmax_cross_entropy_with_logits_sg/concat_1/axis*
T0*
N*
_output_shapes
:*

Tidx0
ģ
.softmax_cross_entropy_with_logits_sg/Reshape_1Reshape9softmax_cross_entropy_with_logits_sg/labels_stop_gradient-softmax_cross_entropy_with_logits_sg/concat_1*
T0*
Tshape0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’
ķ
$softmax_cross_entropy_with_logits_sgSoftmaxCrossEntropyWithLogits,softmax_cross_entropy_with_logits_sg/Reshape.softmax_cross_entropy_with_logits_sg/Reshape_1*
T0*?
_output_shapes-
+:’’’’’’’’’:’’’’’’’’’’’’’’’’’’
n
,softmax_cross_entropy_with_logits_sg/Sub_2/yConst*
value	B :*
dtype0*
_output_shapes
: 
«
*softmax_cross_entropy_with_logits_sg/Sub_2Sub)softmax_cross_entropy_with_logits_sg/Rank,softmax_cross_entropy_with_logits_sg/Sub_2/y*
T0*
_output_shapes
: 
|
2softmax_cross_entropy_with_logits_sg/Slice_2/beginConst*
valueB: *
dtype0*
_output_shapes
:

1softmax_cross_entropy_with_logits_sg/Slice_2/sizePack*softmax_cross_entropy_with_logits_sg/Sub_2*

axis *
T0*
N*
_output_shapes
:
ś
,softmax_cross_entropy_with_logits_sg/Slice_2Slice*softmax_cross_entropy_with_logits_sg/Shape2softmax_cross_entropy_with_logits_sg/Slice_2/begin1softmax_cross_entropy_with_logits_sg/Slice_2/size*
Index0*
T0*
_output_shapes
:
É
.softmax_cross_entropy_with_logits_sg/Reshape_2Reshape$softmax_cross_entropy_with_logits_sg,softmax_cross_entropy_with_logits_sg/Slice_2*
T0*
Tshape0*#
_output_shapes
:’’’’’’’’’
Q
Const_1Const*
valueB: *
dtype0*
_output_shapes
:

Mean_1Mean.softmax_cross_entropy_with_logits_sg/Reshape_2Const_1*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
R
gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
X
gradients/grad_ys_0Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*
_output_shapes
: *

index_type0
d
!gradients/Mean_grad/Reshape/shapeConst*
valueB *
dtype0*
_output_shapes
: 

gradients/Mean_grad/ReshapeReshapegradients/Fill!gradients/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
: 
\
gradients/Mean_grad/ConstConst*
valueB *
dtype0*
_output_shapes
: 

gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Const*
T0*
_output_shapes
: *

Tmultiples0
`
gradients/Mean_grad/Const_1Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
~
gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Const_1*
T0*
_output_shapes
: 
o
*gradients/hinge_loss/value_grad/zeros_likeConst*
valueB
 *    *
dtype0*
_output_shapes
: 
®
&gradients/hinge_loss/value_grad/SelectSelecthinge_loss/Greatergradients/Mean_grad/truediv*gradients/hinge_loss/value_grad/zeros_like*
T0*
_output_shapes
: 
°
(gradients/hinge_loss/value_grad/Select_1Selecthinge_loss/Greater*gradients/hinge_loss/value_grad/zeros_likegradients/Mean_grad/truediv*
T0*
_output_shapes
: 

0gradients/hinge_loss/value_grad/tuple/group_depsNoOp'^gradients/hinge_loss/value_grad/Select)^gradients/hinge_loss/value_grad/Select_1
ū
8gradients/hinge_loss/value_grad/tuple/control_dependencyIdentity&gradients/hinge_loss/value_grad/Select1^gradients/hinge_loss/value_grad/tuple/group_deps*
T0*
_output_shapes
: *9
_class/
-+loc:@gradients/hinge_loss/value_grad/Select

:gradients/hinge_loss/value_grad/tuple/control_dependency_1Identity(gradients/hinge_loss/value_grad/Select_11^gradients/hinge_loss/value_grad/tuple/group_deps*
T0*
_output_shapes
: *;
_class1
/-loc:@gradients/hinge_loss/value_grad/Select_1
f
#gradients/hinge_loss/div_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
h
%gradients/hinge_loss/div_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
Õ
3gradients/hinge_loss/div_grad/BroadcastGradientArgsBroadcastGradientArgs#gradients/hinge_loss/div_grad/Shape%gradients/hinge_loss/div_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’

%gradients/hinge_loss/div_grad/RealDivRealDiv8gradients/hinge_loss/value_grad/tuple/control_dependencyhinge_loss/Select*
T0*
_output_shapes
: 
Ā
!gradients/hinge_loss/div_grad/SumSum%gradients/hinge_loss/div_grad/RealDiv3gradients/hinge_loss/div_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
§
%gradients/hinge_loss/div_grad/ReshapeReshape!gradients/hinge_loss/div_grad/Sum#gradients/hinge_loss/div_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
[
!gradients/hinge_loss/div_grad/NegNeghinge_loss/Sum_1*
T0*
_output_shapes
: 

'gradients/hinge_loss/div_grad/RealDiv_1RealDiv!gradients/hinge_loss/div_grad/Neghinge_loss/Select*
T0*
_output_shapes
: 

'gradients/hinge_loss/div_grad/RealDiv_2RealDiv'gradients/hinge_loss/div_grad/RealDiv_1hinge_loss/Select*
T0*
_output_shapes
: 
¬
!gradients/hinge_loss/div_grad/mulMul8gradients/hinge_loss/value_grad/tuple/control_dependency'gradients/hinge_loss/div_grad/RealDiv_2*
T0*
_output_shapes
: 
Ā
#gradients/hinge_loss/div_grad/Sum_1Sum!gradients/hinge_loss/div_grad/mul5gradients/hinge_loss/div_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
­
'gradients/hinge_loss/div_grad/Reshape_1Reshape#gradients/hinge_loss/div_grad/Sum_1%gradients/hinge_loss/div_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 

.gradients/hinge_loss/div_grad/tuple/group_depsNoOp&^gradients/hinge_loss/div_grad/Reshape(^gradients/hinge_loss/div_grad/Reshape_1
õ
6gradients/hinge_loss/div_grad/tuple/control_dependencyIdentity%gradients/hinge_loss/div_grad/Reshape/^gradients/hinge_loss/div_grad/tuple/group_deps*
T0*
_output_shapes
: *8
_class.
,*loc:@gradients/hinge_loss/div_grad/Reshape
ū
8gradients/hinge_loss/div_grad/tuple/control_dependency_1Identity'gradients/hinge_loss/div_grad/Reshape_1/^gradients/hinge_loss/div_grad/tuple/group_deps*
T0*
_output_shapes
: *:
_class0
.,loc:@gradients/hinge_loss/div_grad/Reshape_1
p
-gradients/hinge_loss/Sum_1_grad/Reshape/shapeConst*
valueB *
dtype0*
_output_shapes
: 
Č
'gradients/hinge_loss/Sum_1_grad/ReshapeReshape6gradients/hinge_loss/div_grad/tuple/control_dependency-gradients/hinge_loss/Sum_1_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
: 
h
%gradients/hinge_loss/Sum_1_grad/ConstConst*
valueB *
dtype0*
_output_shapes
: 
Æ
$gradients/hinge_loss/Sum_1_grad/TileTile'gradients/hinge_loss/Sum_1_grad/Reshape%gradients/hinge_loss/Sum_1_grad/Const*
T0*
_output_shapes
: *

Tmultiples0
|
+gradients/hinge_loss/Sum_grad/Reshape/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
ŗ
%gradients/hinge_loss/Sum_grad/ReshapeReshape$gradients/hinge_loss/Sum_1_grad/Tile+gradients/hinge_loss/Sum_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes

:
s
#gradients/hinge_loss/Sum_grad/ShapeShapehinge_loss/Mul_2*
T0*
out_type0*
_output_shapes
:
ŗ
"gradients/hinge_loss/Sum_grad/TileTile%gradients/hinge_loss/Sum_grad/Reshape#gradients/hinge_loss/Sum_grad/Shape*
T0*'
_output_shapes
:’’’’’’’’’
*

Tmultiples0
t
%gradients/hinge_loss/Mul_2_grad/ShapeShapehinge_loss/Relu*
T0*
out_type0*
_output_shapes
:
j
'gradients/hinge_loss/Mul_2_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
Ū
5gradients/hinge_loss/Mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs%gradients/hinge_loss/Mul_2_grad/Shape'gradients/hinge_loss/Mul_2_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’

#gradients/hinge_loss/Mul_2_grad/MulMul"gradients/hinge_loss/Sum_grad/Tilehinge_loss/ToFloat/x*
T0*'
_output_shapes
:’’’’’’’’’

Ę
#gradients/hinge_loss/Mul_2_grad/SumSum#gradients/hinge_loss/Mul_2_grad/Mul5gradients/hinge_loss/Mul_2_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
¾
'gradients/hinge_loss/Mul_2_grad/ReshapeReshape#gradients/hinge_loss/Mul_2_grad/Sum%gradients/hinge_loss/Mul_2_grad/Shape*
T0*
Tshape0*'
_output_shapes
:’’’’’’’’’


%gradients/hinge_loss/Mul_2_grad/Mul_1Mulhinge_loss/Relu"gradients/hinge_loss/Sum_grad/Tile*
T0*'
_output_shapes
:’’’’’’’’’

Ģ
%gradients/hinge_loss/Mul_2_grad/Sum_1Sum%gradients/hinge_loss/Mul_2_grad/Mul_17gradients/hinge_loss/Mul_2_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
³
)gradients/hinge_loss/Mul_2_grad/Reshape_1Reshape%gradients/hinge_loss/Mul_2_grad/Sum_1'gradients/hinge_loss/Mul_2_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 

0gradients/hinge_loss/Mul_2_grad/tuple/group_depsNoOp(^gradients/hinge_loss/Mul_2_grad/Reshape*^gradients/hinge_loss/Mul_2_grad/Reshape_1

8gradients/hinge_loss/Mul_2_grad/tuple/control_dependencyIdentity'gradients/hinge_loss/Mul_2_grad/Reshape1^gradients/hinge_loss/Mul_2_grad/tuple/group_deps*
T0*'
_output_shapes
:’’’’’’’’’
*:
_class0
.,loc:@gradients/hinge_loss/Mul_2_grad/Reshape

:gradients/hinge_loss/Mul_2_grad/tuple/control_dependency_1Identity)gradients/hinge_loss/Mul_2_grad/Reshape_11^gradients/hinge_loss/Mul_2_grad/tuple/group_deps*
T0*
_output_shapes
: *<
_class2
0.loc:@gradients/hinge_loss/Mul_2_grad/Reshape_1
°
'gradients/hinge_loss/Relu_grad/ReluGradReluGrad8gradients/hinge_loss/Mul_2_grad/tuple/control_dependencyhinge_loss/Relu*
T0*'
_output_shapes
:’’’’’’’’’

y
%gradients/hinge_loss/Sub_1_grad/ShapeShapehinge_loss/ones_like*
T0*
out_type0*
_output_shapes
:
w
'gradients/hinge_loss/Sub_1_grad/Shape_1Shapehinge_loss/Mul_1*
T0*
out_type0*
_output_shapes
:
Ū
5gradients/hinge_loss/Sub_1_grad/BroadcastGradientArgsBroadcastGradientArgs%gradients/hinge_loss/Sub_1_grad/Shape'gradients/hinge_loss/Sub_1_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
Ź
#gradients/hinge_loss/Sub_1_grad/SumSum'gradients/hinge_loss/Relu_grad/ReluGrad5gradients/hinge_loss/Sub_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
¾
'gradients/hinge_loss/Sub_1_grad/ReshapeReshape#gradients/hinge_loss/Sub_1_grad/Sum%gradients/hinge_loss/Sub_1_grad/Shape*
T0*
Tshape0*'
_output_shapes
:’’’’’’’’’

Ī
%gradients/hinge_loss/Sub_1_grad/Sum_1Sum'gradients/hinge_loss/Relu_grad/ReluGrad7gradients/hinge_loss/Sub_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
t
#gradients/hinge_loss/Sub_1_grad/NegNeg%gradients/hinge_loss/Sub_1_grad/Sum_1*
T0*
_output_shapes
:
Ā
)gradients/hinge_loss/Sub_1_grad/Reshape_1Reshape#gradients/hinge_loss/Sub_1_grad/Neg'gradients/hinge_loss/Sub_1_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:’’’’’’’’’


0gradients/hinge_loss/Sub_1_grad/tuple/group_depsNoOp(^gradients/hinge_loss/Sub_1_grad/Reshape*^gradients/hinge_loss/Sub_1_grad/Reshape_1

8gradients/hinge_loss/Sub_1_grad/tuple/control_dependencyIdentity'gradients/hinge_loss/Sub_1_grad/Reshape1^gradients/hinge_loss/Sub_1_grad/tuple/group_deps*
T0*'
_output_shapes
:’’’’’’’’’
*:
_class0
.,loc:@gradients/hinge_loss/Sub_1_grad/Reshape

:gradients/hinge_loss/Sub_1_grad/tuple/control_dependency_1Identity)gradients/hinge_loss/Sub_1_grad/Reshape_11^gradients/hinge_loss/Sub_1_grad/tuple/group_deps*
T0*'
_output_shapes
:’’’’’’’’’
*<
_class2
0.loc:@gradients/hinge_loss/Sub_1_grad/Reshape_1
s
%gradients/hinge_loss/Mul_1_grad/ShapeShapehinge_loss/Sub*
T0*
out_type0*
_output_shapes
:
l
'gradients/hinge_loss/Mul_1_grad/Shape_1Shapeadd_1*
T0*
out_type0*
_output_shapes
:
Ū
5gradients/hinge_loss/Mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs%gradients/hinge_loss/Mul_1_grad/Shape'gradients/hinge_loss/Mul_1_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’

#gradients/hinge_loss/Mul_1_grad/MulMul:gradients/hinge_loss/Sub_1_grad/tuple/control_dependency_1add_1*
T0*'
_output_shapes
:’’’’’’’’’

Ę
#gradients/hinge_loss/Mul_1_grad/SumSum#gradients/hinge_loss/Mul_1_grad/Mul5gradients/hinge_loss/Mul_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
¾
'gradients/hinge_loss/Mul_1_grad/ReshapeReshape#gradients/hinge_loss/Mul_1_grad/Sum%gradients/hinge_loss/Mul_1_grad/Shape*
T0*
Tshape0*'
_output_shapes
:’’’’’’’’’

Ŗ
%gradients/hinge_loss/Mul_1_grad/Mul_1Mulhinge_loss/Sub:gradients/hinge_loss/Sub_1_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:’’’’’’’’’

Ģ
%gradients/hinge_loss/Mul_1_grad/Sum_1Sum%gradients/hinge_loss/Mul_1_grad/Mul_17gradients/hinge_loss/Mul_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
Ä
)gradients/hinge_loss/Mul_1_grad/Reshape_1Reshape%gradients/hinge_loss/Mul_1_grad/Sum_1'gradients/hinge_loss/Mul_1_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:’’’’’’’’’


0gradients/hinge_loss/Mul_1_grad/tuple/group_depsNoOp(^gradients/hinge_loss/Mul_1_grad/Reshape*^gradients/hinge_loss/Mul_1_grad/Reshape_1

8gradients/hinge_loss/Mul_1_grad/tuple/control_dependencyIdentity'gradients/hinge_loss/Mul_1_grad/Reshape1^gradients/hinge_loss/Mul_1_grad/tuple/group_deps*
T0*'
_output_shapes
:’’’’’’’’’
*:
_class0
.,loc:@gradients/hinge_loss/Mul_1_grad/Reshape

:gradients/hinge_loss/Mul_1_grad/tuple/control_dependency_1Identity)gradients/hinge_loss/Mul_1_grad/Reshape_11^gradients/hinge_loss/Mul_1_grad/tuple/group_deps*
T0*'
_output_shapes
:’’’’’’’’’
*<
_class2
0.loc:@gradients/hinge_loss/Mul_1_grad/Reshape_1
`
gradients/add_1_grad/ShapeShapeOutput*
T0*
out_type0*
_output_shapes
:
f
gradients/add_1_grad/Shape_1Const*
valueB:
*
dtype0*
_output_shapes
:
ŗ
*gradients/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_1_grad/Shapegradients/add_1_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
Ē
gradients/add_1_grad/SumSum:gradients/hinge_loss/Mul_1_grad/tuple/control_dependency_1*gradients/add_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0

gradients/add_1_grad/ReshapeReshapegradients/add_1_grad/Sumgradients/add_1_grad/Shape*
T0*
Tshape0*'
_output_shapes
:’’’’’’’’’

Ė
gradients/add_1_grad/Sum_1Sum:gradients/hinge_loss/Mul_1_grad/tuple/control_dependency_1,gradients/add_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0

gradients/add_1_grad/Reshape_1Reshapegradients/add_1_grad/Sum_1gradients/add_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:

m
%gradients/add_1_grad/tuple/group_depsNoOp^gradients/add_1_grad/Reshape^gradients/add_1_grad/Reshape_1
ā
-gradients/add_1_grad/tuple/control_dependencyIdentitygradients/add_1_grad/Reshape&^gradients/add_1_grad/tuple/group_deps*
T0*'
_output_shapes
:’’’’’’’’’
*/
_class%
#!loc:@gradients/add_1_grad/Reshape
Ū
/gradients/add_1_grad/tuple/control_dependency_1Identitygradients/add_1_grad/Reshape_1&^gradients/add_1_grad/tuple/group_deps*
T0*
_output_shapes
:
*1
_class'
%#loc:@gradients/add_1_grad/Reshape_1
·
gradients/Output_grad/MatMulMatMul-gradients/add_1_grad/tuple/control_dependencyW1/read*
T0*
transpose_b(*
transpose_a( *(
_output_shapes
:’’’’’’’’’ *
°
gradients/Output_grad/MatMul_1MatMulReshape-gradients/add_1_grad/tuple/control_dependency*
T0*
transpose_b( *
transpose_a(*
_output_shapes
:	 *

n
&gradients/Output_grad/tuple/group_depsNoOp^gradients/Output_grad/MatMul^gradients/Output_grad/MatMul_1
å
.gradients/Output_grad/tuple/control_dependencyIdentitygradients/Output_grad/MatMul'^gradients/Output_grad/tuple/group_deps*
T0*(
_output_shapes
:’’’’’’’’’ **/
_class%
#!loc:@gradients/Output_grad/MatMul
ā
0gradients/Output_grad/tuple/control_dependency_1Identitygradients/Output_grad/MatMul_1'^gradients/Output_grad/tuple/group_deps*
T0*
_output_shapes
:	 *
*1
_class'
%#loc:@gradients/Output_grad/MatMul_1
l
gradients/Reshape_grad/ShapeShapeOutputConvRelu_1*
T0*
out_type0*
_output_shapes
:
æ
gradients/Reshape_grad/ReshapeReshape.gradients/Output_grad/tuple/control_dependencygradients/Reshape_grad/Shape*
T0*
Tshape0*/
_output_shapes
:’’’’’’’’’ 
 
(gradients/OutputConvRelu_1_grad/ReluGradReluGradgradients/Reshape_grad/ReshapeOutputConvRelu_1*
T0*/
_output_shapes
:’’’’’’’’’ 
^
gradients/add_grad/ShapeShapeConv2D*
T0*
out_type0*
_output_shapes
:
d
gradients/add_grad/Shape_1Const*
valueB: *
dtype0*
_output_shapes
:
“
(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_grad/Shapegradients/add_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
±
gradients/add_grad/SumSum(gradients/OutputConvRelu_1_grad/ReluGrad(gradients/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0

gradients/add_grad/ReshapeReshapegradients/add_grad/Sumgradients/add_grad/Shape*
T0*
Tshape0*/
_output_shapes
:’’’’’’’’’ 
µ
gradients/add_grad/Sum_1Sum(gradients/OutputConvRelu_1_grad/ReluGrad*gradients/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0

gradients/add_grad/Reshape_1Reshapegradients/add_grad/Sum_1gradients/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
g
#gradients/add_grad/tuple/group_depsNoOp^gradients/add_grad/Reshape^gradients/add_grad/Reshape_1
ā
+gradients/add_grad/tuple/control_dependencyIdentitygradients/add_grad/Reshape$^gradients/add_grad/tuple/group_deps*
T0*/
_output_shapes
:’’’’’’’’’ *-
_class#
!loc:@gradients/add_grad/Reshape
Ó
-gradients/add_grad/tuple/control_dependency_1Identitygradients/add_grad/Reshape_1$^gradients/add_grad/tuple/group_deps*
T0*
_output_shapes
: */
_class%
#!loc:@gradients/add_grad/Reshape_1
~
gradients/Conv2D_grad/ShapeNShapeNInputWconv1/read*
T0*
out_type0*
N* 
_output_shapes
::
Į
)gradients/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInputgradients/Conv2D_grad/ShapeNWconv1/read+gradients/add_grad/tuple/control_dependency*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingVALID*/
_output_shapes
:’’’’’’’’’  *
use_cudnn_on_gpu(
¶
*gradients/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterInputgradients/Conv2D_grad/ShapeN:1+gradients/add_grad/tuple/control_dependency*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingVALID*&
_output_shapes
: *
use_cudnn_on_gpu(

&gradients/Conv2D_grad/tuple/group_depsNoOp+^gradients/Conv2D_grad/Conv2DBackpropFilter*^gradients/Conv2D_grad/Conv2DBackpropInput

.gradients/Conv2D_grad/tuple/control_dependencyIdentity)gradients/Conv2D_grad/Conv2DBackpropInput'^gradients/Conv2D_grad/tuple/group_deps*
T0*/
_output_shapes
:’’’’’’’’’  *<
_class2
0.loc:@gradients/Conv2D_grad/Conv2DBackpropInput

0gradients/Conv2D_grad/tuple/control_dependency_1Identity*gradients/Conv2D_grad/Conv2DBackpropFilter'^gradients/Conv2D_grad/tuple/group_deps*
T0*&
_output_shapes
: *=
_class3
1/loc:@gradients/Conv2D_grad/Conv2DBackpropFilter
u
beta1_power/initial_valueConst*
valueB
 *fff?*
dtype0*
_output_shapes
: *
_class
	loc:@W1

beta1_power
VariableV2*
shared_name *
_class
	loc:@W1*
_output_shapes
: *
dtype0*
shape: *
	container 
„
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*
_class
	loc:@W1
a
beta1_power/readIdentitybeta1_power*
T0*
_output_shapes
: *
_class
	loc:@W1
u
beta2_power/initial_valueConst*
valueB
 *w¾?*
dtype0*
_output_shapes
: *
_class
	loc:@W1

beta2_power
VariableV2*
shared_name *
_class
	loc:@W1*
_output_shapes
: *
dtype0*
shape: *
	container 
„
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*
_class
	loc:@W1
a
beta2_power/readIdentitybeta2_power*
T0*
_output_shapes
: *
_class
	loc:@W1
”
-Wconv1/Adam/Initializer/zeros/shape_as_tensorConst*%
valueB"             *
dtype0*
_output_shapes
:*
_class
loc:@Wconv1

#Wconv1/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: *
_class
loc:@Wconv1
×
Wconv1/Adam/Initializer/zerosFill-Wconv1/Adam/Initializer/zeros/shape_as_tensor#Wconv1/Adam/Initializer/zeros/Const*
T0*&
_output_shapes
: *

index_type0*
_class
loc:@Wconv1
Ŗ
Wconv1/Adam
VariableV2*
shared_name *
_class
loc:@Wconv1*&
_output_shapes
: *
dtype0*
shape: *
	container 
½
Wconv1/Adam/AssignAssignWconv1/AdamWconv1/Adam/Initializer/zeros*
T0*&
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@Wconv1
u
Wconv1/Adam/readIdentityWconv1/Adam*
T0*&
_output_shapes
: *
_class
loc:@Wconv1
£
/Wconv1/Adam_1/Initializer/zeros/shape_as_tensorConst*%
valueB"             *
dtype0*
_output_shapes
:*
_class
loc:@Wconv1

%Wconv1/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: *
_class
loc:@Wconv1
Ż
Wconv1/Adam_1/Initializer/zerosFill/Wconv1/Adam_1/Initializer/zeros/shape_as_tensor%Wconv1/Adam_1/Initializer/zeros/Const*
T0*&
_output_shapes
: *

index_type0*
_class
loc:@Wconv1
¬
Wconv1/Adam_1
VariableV2*
shared_name *
_class
loc:@Wconv1*&
_output_shapes
: *
dtype0*
shape: *
	container 
Ć
Wconv1/Adam_1/AssignAssignWconv1/Adam_1Wconv1/Adam_1/Initializer/zeros*
T0*&
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@Wconv1
y
Wconv1/Adam_1/readIdentityWconv1/Adam_1*
T0*&
_output_shapes
: *
_class
loc:@Wconv1

bconv1/Adam/Initializer/zerosConst*
valueB *    *
dtype0*
_output_shapes
: *
_class
loc:@bconv1

bconv1/Adam
VariableV2*
shared_name *
_class
loc:@bconv1*
_output_shapes
: *
dtype0*
shape: *
	container 
±
bconv1/Adam/AssignAssignbconv1/Adambconv1/Adam/Initializer/zeros*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@bconv1
i
bconv1/Adam/readIdentitybconv1/Adam*
T0*
_output_shapes
: *
_class
loc:@bconv1

bconv1/Adam_1/Initializer/zerosConst*
valueB *    *
dtype0*
_output_shapes
: *
_class
loc:@bconv1

bconv1/Adam_1
VariableV2*
shared_name *
_class
loc:@bconv1*
_output_shapes
: *
dtype0*
shape: *
	container 
·
bconv1/Adam_1/AssignAssignbconv1/Adam_1bconv1/Adam_1/Initializer/zeros*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@bconv1
m
bconv1/Adam_1/readIdentitybconv1/Adam_1*
T0*
_output_shapes
: *
_class
loc:@bconv1

)W1/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"   
   *
dtype0*
_output_shapes
:*
_class
	loc:@W1
{
W1/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: *
_class
	loc:@W1
Ą
W1/Adam/Initializer/zerosFill)W1/Adam/Initializer/zeros/shape_as_tensorW1/Adam/Initializer/zeros/Const*
T0*
_output_shapes
:	 *
*

index_type0*
_class
	loc:@W1

W1/Adam
VariableV2*
shared_name *
_class
	loc:@W1*
_output_shapes
:	 *
*
dtype0*
shape:	 *
*
	container 
¦
W1/Adam/AssignAssignW1/AdamW1/Adam/Initializer/zeros*
T0*
_output_shapes
:	 *
*
use_locking(*
validate_shape(*
_class
	loc:@W1
b
W1/Adam/readIdentityW1/Adam*
T0*
_output_shapes
:	 *
*
_class
	loc:@W1

+W1/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"   
   *
dtype0*
_output_shapes
:*
_class
	loc:@W1
}
!W1/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: *
_class
	loc:@W1
Ę
W1/Adam_1/Initializer/zerosFill+W1/Adam_1/Initializer/zeros/shape_as_tensor!W1/Adam_1/Initializer/zeros/Const*
T0*
_output_shapes
:	 *
*

index_type0*
_class
	loc:@W1

	W1/Adam_1
VariableV2*
shared_name *
_class
	loc:@W1*
_output_shapes
:	 *
*
dtype0*
shape:	 *
*
	container 
¬
W1/Adam_1/AssignAssign	W1/Adam_1W1/Adam_1/Initializer/zeros*
T0*
_output_shapes
:	 *
*
use_locking(*
validate_shape(*
_class
	loc:@W1
f
W1/Adam_1/readIdentity	W1/Adam_1*
T0*
_output_shapes
:	 *
*
_class
	loc:@W1
}
b1/Adam/Initializer/zerosConst*
valueB
*    *
dtype0*
_output_shapes
:
*
_class
	loc:@b1

b1/Adam
VariableV2*
shared_name *
_class
	loc:@b1*
_output_shapes
:
*
dtype0*
shape:
*
	container 
”
b1/Adam/AssignAssignb1/Adamb1/Adam/Initializer/zeros*
T0*
_output_shapes
:
*
use_locking(*
validate_shape(*
_class
	loc:@b1
]
b1/Adam/readIdentityb1/Adam*
T0*
_output_shapes
:
*
_class
	loc:@b1

b1/Adam_1/Initializer/zerosConst*
valueB
*    *
dtype0*
_output_shapes
:
*
_class
	loc:@b1

	b1/Adam_1
VariableV2*
shared_name *
_class
	loc:@b1*
_output_shapes
:
*
dtype0*
shape:
*
	container 
§
b1/Adam_1/AssignAssign	b1/Adam_1b1/Adam_1/Initializer/zeros*
T0*
_output_shapes
:
*
use_locking(*
validate_shape(*
_class
	loc:@b1
a
b1/Adam_1/readIdentity	b1/Adam_1*
T0*
_output_shapes
:
*
_class
	loc:@b1
W
Adam/learning_rateConst*
valueB
 *o:*
dtype0*
_output_shapes
: 
O

Adam/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
O

Adam/beta2Const*
valueB
 *w¾?*
dtype0*
_output_shapes
: 
Q
Adam/epsilonConst*
valueB
 *wĢ+2*
dtype0*
_output_shapes
: 
Š
Adam/update_Wconv1/ApplyAdam	ApplyAdamWconv1Wconv1/AdamWconv1/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon0gradients/Conv2D_grad/tuple/control_dependency_1*
T0*&
_output_shapes
: *
use_locking( *
use_nesterov( *
_class
loc:@Wconv1
Į
Adam/update_bconv1/ApplyAdam	ApplyAdambconv1bconv1/Adambconv1/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon-gradients/add_grad/tuple/control_dependency_1*
T0*
_output_shapes
: *
use_locking( *
use_nesterov( *
_class
loc:@bconv1
µ
Adam/update_W1/ApplyAdam	ApplyAdamW1W1/Adam	W1/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon0gradients/Output_grad/tuple/control_dependency_1*
T0*
_output_shapes
:	 *
*
use_locking( *
use_nesterov( *
_class
	loc:@W1
Æ
Adam/update_b1/ApplyAdam	ApplyAdamb1b1/Adam	b1/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon/gradients/add_1_grad/tuple/control_dependency_1*
T0*
_output_shapes
:
*
use_locking( *
use_nesterov( *
_class
	loc:@b1
Ł
Adam/mulMulbeta1_power/read
Adam/beta1^Adam/update_W1/ApplyAdam^Adam/update_Wconv1/ApplyAdam^Adam/update_b1/ApplyAdam^Adam/update_bconv1/ApplyAdam*
T0*
_output_shapes
: *
_class
	loc:@W1

Adam/AssignAssignbeta1_powerAdam/mul*
T0*
_output_shapes
: *
use_locking( *
validate_shape(*
_class
	loc:@W1
Ū

Adam/mul_1Mulbeta2_power/read
Adam/beta2^Adam/update_W1/ApplyAdam^Adam/update_Wconv1/ApplyAdam^Adam/update_b1/ApplyAdam^Adam/update_bconv1/ApplyAdam*
T0*
_output_shapes
: *
_class
	loc:@W1

Adam/Assign_1Assignbeta2_power
Adam/mul_1*
T0*
_output_shapes
: *
use_locking( *
validate_shape(*
_class
	loc:@W1

AdamNoOp^Adam/Assign^Adam/Assign_1^Adam/update_W1/ApplyAdam^Adam/update_Wconv1/ApplyAdam^Adam/update_b1/ApplyAdam^Adam/update_bconv1/ApplyAdam
R
ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
v
ArgMaxArgMaxadd_1ArgMax/dimension*
output_type0	*
T0*#
_output_shapes
:’’’’’’’’’*

Tidx0
Q
EqualEqualArgMaxPlaceholder*
T0	*#
_output_shapes
:’’’’’’’’’
P
CastCastEqual*

DstT0*#
_output_shapes
:’’’’’’’’’*

SrcT0

Q
Const_2Const*
valueB: *
dtype0*
_output_shapes
:
[
Mean_2MeanCastConst_2*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
ō
save/SaveV2/tensor_namesConst*§
valueBBW1BW1/AdamB	W1/Adam_1BWconv1BWconv1/AdamBWconv1/Adam_1Bb1Bb1/AdamB	b1/Adam_1Bbconv1Bbconv1/AdamBbconv1/Adam_1Bbeta1_powerBbeta2_power*
dtype0*
_output_shapes
:

save/SaveV2/shape_and_slicesConst*/
value&B$B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:

save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesW1W1/Adam	W1/Adam_1Wconv1Wconv1/AdamWconv1/Adam_1b1b1/Adam	b1/Adam_1bconv1bconv1/Adambconv1/Adam_1beta1_powerbeta2_power*
dtypes
2
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_output_shapes
: *
_class
loc:@save/Const
÷
save/RestoreV2/tensor_namesConst*§
valueBBW1BW1/AdamB	W1/Adam_1BWconv1BWconv1/AdamBWconv1/Adam_1Bb1Bb1/AdamB	b1/Adam_1Bbconv1Bbconv1/AdamBbconv1/Adam_1Bbeta1_powerBbeta2_power*
dtype0*
_output_shapes
:

save/RestoreV2/shape_and_slicesConst*/
value&B$B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
Ń
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2*L
_output_shapes:
8::::::::::::::

save/AssignAssignW1save/RestoreV2*
T0*
_output_shapes
:	 *
*
use_locking(*
validate_shape(*
_class
	loc:@W1

save/Assign_1AssignW1/Adamsave/RestoreV2:1*
T0*
_output_shapes
:	 *
*
use_locking(*
validate_shape(*
_class
	loc:@W1

save/Assign_2Assign	W1/Adam_1save/RestoreV2:2*
T0*
_output_shapes
:	 *
*
use_locking(*
validate_shape(*
_class
	loc:@W1
¦
save/Assign_3AssignWconv1save/RestoreV2:3*
T0*&
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@Wconv1
«
save/Assign_4AssignWconv1/Adamsave/RestoreV2:4*
T0*&
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@Wconv1
­
save/Assign_5AssignWconv1/Adam_1save/RestoreV2:5*
T0*&
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@Wconv1

save/Assign_6Assignb1save/RestoreV2:6*
T0*
_output_shapes
:
*
use_locking(*
validate_shape(*
_class
	loc:@b1

save/Assign_7Assignb1/Adamsave/RestoreV2:7*
T0*
_output_shapes
:
*
use_locking(*
validate_shape(*
_class
	loc:@b1

save/Assign_8Assign	b1/Adam_1save/RestoreV2:8*
T0*
_output_shapes
:
*
use_locking(*
validate_shape(*
_class
	loc:@b1

save/Assign_9Assignbconv1save/RestoreV2:9*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@bconv1
”
save/Assign_10Assignbconv1/Adamsave/RestoreV2:10*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@bconv1
£
save/Assign_11Assignbconv1/Adam_1save/RestoreV2:11*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@bconv1

save/Assign_12Assignbeta1_powersave/RestoreV2:12*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*
_class
	loc:@W1

save/Assign_13Assignbeta2_powersave/RestoreV2:13*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*
_class
	loc:@W1
ś
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9

initNoOp^W1/Adam/Assign^W1/Adam_1/Assign
^W1/Assign^Wconv1/Adam/Assign^Wconv1/Adam_1/Assign^Wconv1/Assign^b1/Adam/Assign^b1/Adam_1/Assign
^b1/Assign^bconv1/Adam/Assign^bconv1/Adam_1/Assign^bconv1/Assign^beta1_power/Assign^beta2_power/Assign
R
save_1/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_c42a364f285d45a792877e88bdc51dfb/part*
dtype0*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
N*
	separator *
_output_shapes
: 
S
save_1/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
^
save_1/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 

save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards*
_output_shapes
: 
ö
save_1/SaveV2/tensor_namesConst*§
valueBBW1BW1/AdamB	W1/Adam_1BWconv1BWconv1/AdamBWconv1/Adam_1Bb1Bb1/AdamB	b1/Adam_1Bbconv1Bbconv1/AdamBbconv1/Adam_1Bbeta1_powerBbeta2_power*
dtype0*
_output_shapes
:

save_1/SaveV2/shape_and_slicesConst*/
value&B$B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:

save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesW1W1/Adam	W1/Adam_1Wconv1Wconv1/AdamWconv1/Adam_1b1b1/Adam	b1/Adam_1bconv1bconv1/Adambconv1/Adam_1beta1_powerbeta2_power*
dtypes
2

save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2*
T0*
_output_shapes
: *)
_class
loc:@save_1/ShardedFilename
£
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency*

axis *
T0*
N*
_output_shapes
:

save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const*
delete_old_dirs(

save_1/IdentityIdentitysave_1/Const^save_1/MergeV2Checkpoints^save_1/control_dependency*
T0*
_output_shapes
: 
ł
save_1/RestoreV2/tensor_namesConst*§
valueBBW1BW1/AdamB	W1/Adam_1BWconv1BWconv1/AdamBWconv1/Adam_1Bb1Bb1/AdamB	b1/Adam_1Bbconv1Bbconv1/AdamBbconv1/Adam_1Bbeta1_powerBbeta2_power*
dtype0*
_output_shapes
:

!save_1/RestoreV2/shape_and_slicesConst*/
value&B$B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
Ł
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*
dtypes
2*L
_output_shapes:
8::::::::::::::

save_1/AssignAssignW1save_1/RestoreV2*
T0*
_output_shapes
:	 *
*
use_locking(*
validate_shape(*
_class
	loc:@W1
 
save_1/Assign_1AssignW1/Adamsave_1/RestoreV2:1*
T0*
_output_shapes
:	 *
*
use_locking(*
validate_shape(*
_class
	loc:@W1
¢
save_1/Assign_2Assign	W1/Adam_1save_1/RestoreV2:2*
T0*
_output_shapes
:	 *
*
use_locking(*
validate_shape(*
_class
	loc:@W1
Ŗ
save_1/Assign_3AssignWconv1save_1/RestoreV2:3*
T0*&
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@Wconv1
Æ
save_1/Assign_4AssignWconv1/Adamsave_1/RestoreV2:4*
T0*&
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@Wconv1
±
save_1/Assign_5AssignWconv1/Adam_1save_1/RestoreV2:5*
T0*&
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@Wconv1

save_1/Assign_6Assignb1save_1/RestoreV2:6*
T0*
_output_shapes
:
*
use_locking(*
validate_shape(*
_class
	loc:@b1

save_1/Assign_7Assignb1/Adamsave_1/RestoreV2:7*
T0*
_output_shapes
:
*
use_locking(*
validate_shape(*
_class
	loc:@b1

save_1/Assign_8Assign	b1/Adam_1save_1/RestoreV2:8*
T0*
_output_shapes
:
*
use_locking(*
validate_shape(*
_class
	loc:@b1

save_1/Assign_9Assignbconv1save_1/RestoreV2:9*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@bconv1
„
save_1/Assign_10Assignbconv1/Adamsave_1/RestoreV2:10*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@bconv1
§
save_1/Assign_11Assignbconv1/Adam_1save_1/RestoreV2:11*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@bconv1

save_1/Assign_12Assignbeta1_powersave_1/RestoreV2:12*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*
_class
	loc:@W1

save_1/Assign_13Assignbeta2_powersave_1/RestoreV2:13*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*
_class
	loc:@W1

save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9
1
save_1/restore_allNoOp^save_1/restore_shard "B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"æ
trainable_variables§¤
O
Wconv1:0Wconv1/AssignWconv1/read:02#Wconv1/Initializer/random_uniform:08
O
bconv1:0bconv1/Assignbconv1/read:02#bconv1/Initializer/random_uniform:08
?
W1:0	W1/Assign	W1/read:02W1/Initializer/random_uniform:08
?
b1:0	b1/Assign	b1/read:02b1/Initializer/random_uniform:08" 
losses

hinge_loss/value:0"
train_op

Adam"	
	variables		
O
Wconv1:0Wconv1/AssignWconv1/read:02#Wconv1/Initializer/random_uniform:08
O
bconv1:0bconv1/Assignbconv1/read:02#bconv1/Initializer/random_uniform:08
?
W1:0	W1/Assign	W1/read:02W1/Initializer/random_uniform:08
?
b1:0	b1/Assign	b1/read:02b1/Initializer/random_uniform:08
T
beta1_power:0beta1_power/Assignbeta1_power/read:02beta1_power/initial_value:0
T
beta2_power:0beta2_power/Assignbeta2_power/read:02beta2_power/initial_value:0
X
Wconv1/Adam:0Wconv1/Adam/AssignWconv1/Adam/read:02Wconv1/Adam/Initializer/zeros:0
`
Wconv1/Adam_1:0Wconv1/Adam_1/AssignWconv1/Adam_1/read:02!Wconv1/Adam_1/Initializer/zeros:0
X
bconv1/Adam:0bconv1/Adam/Assignbconv1/Adam/read:02bconv1/Adam/Initializer/zeros:0
`
bconv1/Adam_1:0bconv1/Adam_1/Assignbconv1/Adam_1/read:02!bconv1/Adam_1/Initializer/zeros:0
H
	W1/Adam:0W1/Adam/AssignW1/Adam/read:02W1/Adam/Initializer/zeros:0
P
W1/Adam_1:0W1/Adam_1/AssignW1/Adam_1/read:02W1/Adam_1/Initializer/zeros:0
H
	b1/Adam:0b1/Adam/Assignb1/Adam/read:02b1/Adam/Initializer/zeros:0
P
b1/Adam_1:0b1/Adam_1/Assignb1/Adam_1/read:02b1/Adam_1/Initializer/zeros:0*
serving_defaultw
/
Input&
Input:0’’’’’’’’’  (
Output
add_1:0’’’’’’’’’
tensorflow/serving/predict