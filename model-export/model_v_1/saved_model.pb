Ö
ņ&Õ&
:
Add
x"T
y"T
z"T"
Ttype:
2	
h
All	
input

reduction_indices"Tidx

output
"
	keep_dimsbool( "
Tidxtype0:
2	
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeint
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
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
y
Enter	
data"T
output"T"	
Ttype"

frame_namestring"
is_constantbool( "
parallel_iterationsint

B
Equal
x"T
y"T
z
"
Ttype:
2	

)
Exit	
data"T
output"T"	
Ttype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
4
Fill
dims

value"T
output"T"	
Ttype
,
Floor
x"T
y"T"
Ttype:
2

Gather
params"Tparams
indices"Tindices
output"Tparams"
validate_indicesbool("
Tparamstype"
Tindicestype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
$

LogicalAnd
x

y

z

!
LoopCond	
input


output

p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2

Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(

Min

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	
2
NextIteration	
data"T
output"T"	
Ttype
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
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
)
Rank

input"T

output"	
Ttype
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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

2
9
Softmax
logits"T
softmax"T"
Ttype:
2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
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
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
-
Tanh
x"T
y"T"
Ttype:

2
{
TensorArrayGatherV3

handle
indices
flow_in
value"dtype"
dtypetype"
element_shapeshape:
Y
TensorArrayReadV3

handle	
index
flow_in
value"dtype"
dtypetype
d
TensorArrayScatterV3

handle
indices

value"T
flow_in
flow_out"	
Ttype
9
TensorArraySizeV3

handle
flow_in
size
Ž
TensorArrayV3
size

handle
flow"
dtypetype"
element_shapeshape:"
dynamic_sizebool( "
clear_after_readbool("$
identical_element_shapesbool( "
tensor_array_namestring 
`
TensorArrayWriteV3

handle	
index

value"T
flow_in
flow_out"	
Ttype
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring "serve*1.5.02
b'unknown'¢¬
n
PlaceholderPlaceholder*
dtype0*
shape:’’’’’’’’’N*'
_output_shapes
:’’’’’’’’’N

Placeholder_1Placeholder*
dtype0*%
shape:’’’’’’’’’’’’’’’’’’*0
_output_shapes
:’’’’’’’’’’’’’’’’’’
V
dropout_keep_probPlaceholder*
dtype0*
shape:*
_output_shapes
:
Ū
Kinference/word_embeddings/embedding_matrix/Initializer/random_uniform/shapeConst*
valueB"¤G  d   *
dtype0*=
_class3
1/loc:@inference/word_embeddings/embedding_matrix*
_output_shapes
:
Ķ
Iinference/word_embeddings/embedding_matrix/Initializer/random_uniform/minConst*
valueB
 *Å¼*
dtype0*=
_class3
1/loc:@inference/word_embeddings/embedding_matrix*
_output_shapes
: 
Ķ
Iinference/word_embeddings/embedding_matrix/Initializer/random_uniform/maxConst*
valueB
 *Å<*
dtype0*=
_class3
1/loc:@inference/word_embeddings/embedding_matrix*
_output_shapes
: 
Į
Sinference/word_embeddings/embedding_matrix/Initializer/random_uniform/RandomUniformRandomUniformKinference/word_embeddings/embedding_matrix/Initializer/random_uniform/shape*

seed *
seed2 *
dtype0*
T0*=
_class3
1/loc:@inference/word_embeddings/embedding_matrix* 
_output_shapes
:
¤d
Ę
Iinference/word_embeddings/embedding_matrix/Initializer/random_uniform/subSubIinference/word_embeddings/embedding_matrix/Initializer/random_uniform/maxIinference/word_embeddings/embedding_matrix/Initializer/random_uniform/min*
T0*=
_class3
1/loc:@inference/word_embeddings/embedding_matrix*
_output_shapes
: 
Ś
Iinference/word_embeddings/embedding_matrix/Initializer/random_uniform/mulMulSinference/word_embeddings/embedding_matrix/Initializer/random_uniform/RandomUniformIinference/word_embeddings/embedding_matrix/Initializer/random_uniform/sub*
T0*=
_class3
1/loc:@inference/word_embeddings/embedding_matrix* 
_output_shapes
:
¤d
Ģ
Einference/word_embeddings/embedding_matrix/Initializer/random_uniformAddIinference/word_embeddings/embedding_matrix/Initializer/random_uniform/mulIinference/word_embeddings/embedding_matrix/Initializer/random_uniform/min*
T0*=
_class3
1/loc:@inference/word_embeddings/embedding_matrix* 
_output_shapes
:
¤d
į
*inference/word_embeddings/embedding_matrix
VariableV2*
shape:
¤d*
dtype0*
	container *
shared_name *=
_class3
1/loc:@inference/word_embeddings/embedding_matrix* 
_output_shapes
:
¤d
Į
1inference/word_embeddings/embedding_matrix/AssignAssign*inference/word_embeddings/embedding_matrixEinference/word_embeddings/embedding_matrix/Initializer/random_uniform*
T0*
validate_shape(*
use_locking(*=
_class3
1/loc:@inference/word_embeddings/embedding_matrix* 
_output_shapes
:
¤d
Ń
/inference/word_embeddings/embedding_matrix/readIdentity*inference/word_embeddings/embedding_matrix*
T0*=
_class3
1/loc:@inference/word_embeddings/embedding_matrix* 
_output_shapes
:
¤d

*inference/word_embeddings/embedding_lookupGather/inference/word_embeddings/embedding_matrix/readPlaceholder*
validate_indices(*
Tparams0*
Tindices0*=
_class3
1/loc:@inference/word_embeddings/embedding_matrix*+
_output_shapes
:’’’’’’’’’Nd
r
-inference/lstm_layer/DropoutWrapperInit/ConstConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
m
inference/lstm_layer/SqueezeSqueezePlaceholder_1*
T0*
squeeze_dims
 *
_output_shapes
:
_
inference/lstm_layer/rnn/RankConst*
value	B :*
dtype0*
_output_shapes
: 
f
$inference/lstm_layer/rnn/range/startConst*
value	B :*
dtype0*
_output_shapes
: 
f
$inference/lstm_layer/rnn/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
ŗ
inference/lstm_layer/rnn/rangeRange$inference/lstm_layer/rnn/range/startinference/lstm_layer/rnn/Rank$inference/lstm_layer/rnn/range/delta*

Tidx0*
_output_shapes
:
y
(inference/lstm_layer/rnn/concat/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
f
$inference/lstm_layer/rnn/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Õ
inference/lstm_layer/rnn/concatConcatV2(inference/lstm_layer/rnn/concat/values_0inference/lstm_layer/rnn/range$inference/lstm_layer/rnn/concat/axis*
N*
T0*

Tidx0*
_output_shapes
:
æ
"inference/lstm_layer/rnn/transpose	Transpose*inference/word_embeddings/embedding_lookupinference/lstm_layer/rnn/concat*
T0*
Tperm0*+
_output_shapes
:N’’’’’’’’’d
u
(inference/lstm_layer/rnn/sequence_lengthIdentityinference/lstm_layer/Squeeze*
T0*
_output_shapes
:

inference/lstm_layer/rnn/ShapeShape"inference/lstm_layer/rnn/transpose*
T0*
out_type0*
_output_shapes
:
v
,inference/lstm_layer/rnn/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
x
.inference/lstm_layer/rnn/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
x
.inference/lstm_layer/rnn/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ö
&inference/lstm_layer/rnn/strided_sliceStridedSliceinference/lstm_layer/rnn/Shape,inference/lstm_layer/rnn/strided_slice/stack.inference/lstm_layer/rnn/strided_slice/stack_1.inference/lstm_layer/rnn/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
_output_shapes
: 

Qinference/lstm_layer/rnn/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 

Minference/lstm_layer/rnn/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims
ExpandDims&inference/lstm_layer/rnn/strided_sliceQinference/lstm_layer/rnn/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims/dim*
T0*

Tdim0*
_output_shapes
:

Hinference/lstm_layer/rnn/DropoutWrapperZeroState/LSTMCellZeroState/ConstConst*
valueB:d*
dtype0*
_output_shapes
:

Ninference/lstm_layer/rnn/DropoutWrapperZeroState/LSTMCellZeroState/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ų
Iinference/lstm_layer/rnn/DropoutWrapperZeroState/LSTMCellZeroState/concatConcatV2Minference/lstm_layer/rnn/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDimsHinference/lstm_layer/rnn/DropoutWrapperZeroState/LSTMCellZeroState/ConstNinference/lstm_layer/rnn/DropoutWrapperZeroState/LSTMCellZeroState/concat/axis*
N*
T0*

Tidx0*
_output_shapes
:

Ninference/lstm_layer/rnn/DropoutWrapperZeroState/LSTMCellZeroState/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

Hinference/lstm_layer/rnn/DropoutWrapperZeroState/LSTMCellZeroState/zerosFillIinference/lstm_layer/rnn/DropoutWrapperZeroState/LSTMCellZeroState/concatNinference/lstm_layer/rnn/DropoutWrapperZeroState/LSTMCellZeroState/zeros/Const*
T0*'
_output_shapes
:’’’’’’’’’d

Sinference/lstm_layer/rnn/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 

Oinference/lstm_layer/rnn/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_1
ExpandDims&inference/lstm_layer/rnn/strided_sliceSinference/lstm_layer/rnn/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_1/dim*
T0*

Tdim0*
_output_shapes
:

Jinference/lstm_layer/rnn/DropoutWrapperZeroState/LSTMCellZeroState/Const_1Const*
valueB:d*
dtype0*
_output_shapes
:

Sinference/lstm_layer/rnn/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_2/dimConst*
value	B : *
dtype0*
_output_shapes
: 

Oinference/lstm_layer/rnn/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_2
ExpandDims&inference/lstm_layer/rnn/strided_sliceSinference/lstm_layer/rnn/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_2/dim*
T0*

Tdim0*
_output_shapes
:

Jinference/lstm_layer/rnn/DropoutWrapperZeroState/LSTMCellZeroState/Const_2Const*
valueB:d*
dtype0*
_output_shapes
:

Pinference/lstm_layer/rnn/DropoutWrapperZeroState/LSTMCellZeroState/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 

Kinference/lstm_layer/rnn/DropoutWrapperZeroState/LSTMCellZeroState/concat_1ConcatV2Oinference/lstm_layer/rnn/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_2Jinference/lstm_layer/rnn/DropoutWrapperZeroState/LSTMCellZeroState/Const_2Pinference/lstm_layer/rnn/DropoutWrapperZeroState/LSTMCellZeroState/concat_1/axis*
N*
T0*

Tidx0*
_output_shapes
:

Pinference/lstm_layer/rnn/DropoutWrapperZeroState/LSTMCellZeroState/zeros_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
£
Jinference/lstm_layer/rnn/DropoutWrapperZeroState/LSTMCellZeroState/zeros_1FillKinference/lstm_layer/rnn/DropoutWrapperZeroState/LSTMCellZeroState/concat_1Pinference/lstm_layer/rnn/DropoutWrapperZeroState/LSTMCellZeroState/zeros_1/Const*
T0*'
_output_shapes
:’’’’’’’’’d

Sinference/lstm_layer/rnn/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_3/dimConst*
value	B : *
dtype0*
_output_shapes
: 

Oinference/lstm_layer/rnn/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_3
ExpandDims&inference/lstm_layer/rnn/strided_sliceSinference/lstm_layer/rnn/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_3/dim*
T0*

Tdim0*
_output_shapes
:

Jinference/lstm_layer/rnn/DropoutWrapperZeroState/LSTMCellZeroState/Const_3Const*
valueB:d*
dtype0*
_output_shapes
:

 inference/lstm_layer/rnn/Shape_1Shape(inference/lstm_layer/rnn/sequence_length*
T0*
out_type0*#
_output_shapes
:’’’’’’’’’

inference/lstm_layer/rnn/stackPack&inference/lstm_layer/rnn/strided_slice*
N*
T0*

axis *
_output_shapes
:

inference/lstm_layer/rnn/EqualEqual inference/lstm_layer/rnn/Shape_1inference/lstm_layer/rnn/stack*
T0*#
_output_shapes
:’’’’’’’’’
h
inference/lstm_layer/rnn/ConstConst*
valueB: *
dtype0*
_output_shapes
:

inference/lstm_layer/rnn/AllAllinference/lstm_layer/rnn/Equalinference/lstm_layer/rnn/Const*
	keep_dims( *

Tidx0*
_output_shapes
: 
®
%inference/lstm_layer/rnn/Assert/ConstConst*Y
valuePBN BHExpected shape for Tensor inference/lstm_layer/rnn/sequence_length:0 is *
dtype0*
_output_shapes
: 
x
'inference/lstm_layer/rnn/Assert/Const_1Const*!
valueB B but saw shape: *
dtype0*
_output_shapes
: 
¶
-inference/lstm_layer/rnn/Assert/Assert/data_0Const*Y
valuePBN BHExpected shape for Tensor inference/lstm_layer/rnn/sequence_length:0 is *
dtype0*
_output_shapes
: 
~
-inference/lstm_layer/rnn/Assert/Assert/data_2Const*!
valueB B but saw shape: *
dtype0*
_output_shapes
: 

&inference/lstm_layer/rnn/Assert/AssertAssertinference/lstm_layer/rnn/All-inference/lstm_layer/rnn/Assert/Assert/data_0inference/lstm_layer/rnn/stack-inference/lstm_layer/rnn/Assert/Assert/data_2 inference/lstm_layer/rnn/Shape_1*
T
2*
	summarize
¦
$inference/lstm_layer/rnn/CheckSeqLenIdentity(inference/lstm_layer/rnn/sequence_length'^inference/lstm_layer/rnn/Assert/Assert*
T0*
_output_shapes
:

 inference/lstm_layer/rnn/Shape_2Shape"inference/lstm_layer/rnn/transpose*
T0*
out_type0*
_output_shapes
:
x
.inference/lstm_layer/rnn/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
z
0inference/lstm_layer/rnn/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0inference/lstm_layer/rnn/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

(inference/lstm_layer/rnn/strided_slice_1StridedSlice inference/lstm_layer/rnn/Shape_2.inference/lstm_layer/rnn/strided_slice_1/stack0inference/lstm_layer/rnn/strided_slice_1/stack_10inference/lstm_layer/rnn/strided_slice_1/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
_output_shapes
: 

 inference/lstm_layer/rnn/Shape_3Shape"inference/lstm_layer/rnn/transpose*
T0*
out_type0*
_output_shapes
:
x
.inference/lstm_layer/rnn/strided_slice_2/stackConst*
valueB:*
dtype0*
_output_shapes
:
z
0inference/lstm_layer/rnn/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0inference/lstm_layer/rnn/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

(inference/lstm_layer/rnn/strided_slice_2StridedSlice inference/lstm_layer/rnn/Shape_3.inference/lstm_layer/rnn/strided_slice_2/stack0inference/lstm_layer/rnn/strided_slice_2/stack_10inference/lstm_layer/rnn/strided_slice_2/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
_output_shapes
: 
i
'inference/lstm_layer/rnn/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
µ
#inference/lstm_layer/rnn/ExpandDims
ExpandDims(inference/lstm_layer/rnn/strided_slice_2'inference/lstm_layer/rnn/ExpandDims/dim*
T0*

Tdim0*
_output_shapes
:
j
 inference/lstm_layer/rnn/Const_1Const*
valueB:d*
dtype0*
_output_shapes
:
h
&inference/lstm_layer/rnn/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ö
!inference/lstm_layer/rnn/concat_1ConcatV2#inference/lstm_layer/rnn/ExpandDims inference/lstm_layer/rnn/Const_1&inference/lstm_layer/rnn/concat_1/axis*
N*
T0*

Tidx0*
_output_shapes
:
i
$inference/lstm_layer/rnn/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
”
inference/lstm_layer/rnn/zerosFill!inference/lstm_layer/rnn/concat_1$inference/lstm_layer/rnn/zeros/Const*
T0*'
_output_shapes
:’’’’’’’’’d
n
inference/lstm_layer/rnn/Rank_1Rank$inference/lstm_layer/rnn/CheckSeqLen*
T0*
_output_shapes
: 
h
&inference/lstm_layer/rnn/range_1/startConst*
value	B : *
dtype0*
_output_shapes
: 
h
&inference/lstm_layer/rnn/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ė
 inference/lstm_layer/rnn/range_1Range&inference/lstm_layer/rnn/range_1/startinference/lstm_layer/rnn/Rank_1&inference/lstm_layer/rnn/range_1/delta*

Tidx0*#
_output_shapes
:’’’’’’’’’
©
inference/lstm_layer/rnn/MinMin$inference/lstm_layer/rnn/CheckSeqLen inference/lstm_layer/rnn/range_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
n
inference/lstm_layer/rnn/Rank_2Rank$inference/lstm_layer/rnn/CheckSeqLen*
T0*
_output_shapes
: 
h
&inference/lstm_layer/rnn/range_2/startConst*
value	B : *
dtype0*
_output_shapes
: 
h
&inference/lstm_layer/rnn/range_2/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ė
 inference/lstm_layer/rnn/range_2Range&inference/lstm_layer/rnn/range_2/startinference/lstm_layer/rnn/Rank_2&inference/lstm_layer/rnn/range_2/delta*

Tidx0*#
_output_shapes
:’’’’’’’’’
©
inference/lstm_layer/rnn/MaxMax$inference/lstm_layer/rnn/CheckSeqLen inference/lstm_layer/rnn/range_2*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
_
inference/lstm_layer/rnn/timeConst*
value	B : *
dtype0*
_output_shapes
: 
Ā
$inference/lstm_layer/rnn/TensorArrayTensorArrayV3(inference/lstm_layer/rnn/strided_slice_1*
dtype0*$
element_shape:’’’’’’’’’d*
dynamic_size( *
clear_after_read(*
identical_element_shapes(*D
tensor_array_name/-inference/lstm_layer/rnn/dynamic_rnn/output_0*
_output_shapes

:: 
Ć
&inference/lstm_layer/rnn/TensorArray_1TensorArrayV3(inference/lstm_layer/rnn/strided_slice_1*
dtype0*$
element_shape:’’’’’’’’’d*
dynamic_size( *
clear_after_read(*
identical_element_shapes(*C
tensor_array_name.,inference/lstm_layer/rnn/dynamic_rnn/input_0*
_output_shapes

:: 

1inference/lstm_layer/rnn/TensorArrayUnstack/ShapeShape"inference/lstm_layer/rnn/transpose*
T0*
out_type0*
_output_shapes
:

?inference/lstm_layer/rnn/TensorArrayUnstack/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

Ainference/lstm_layer/rnn/TensorArrayUnstack/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Ainference/lstm_layer/rnn/TensorArrayUnstack/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Õ
9inference/lstm_layer/rnn/TensorArrayUnstack/strided_sliceStridedSlice1inference/lstm_layer/rnn/TensorArrayUnstack/Shape?inference/lstm_layer/rnn/TensorArrayUnstack/strided_slice/stackAinference/lstm_layer/rnn/TensorArrayUnstack/strided_slice/stack_1Ainference/lstm_layer/rnn/TensorArrayUnstack/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
_output_shapes
: 
y
7inference/lstm_layer/rnn/TensorArrayUnstack/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
y
7inference/lstm_layer/rnn/TensorArrayUnstack/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 

1inference/lstm_layer/rnn/TensorArrayUnstack/rangeRange7inference/lstm_layer/rnn/TensorArrayUnstack/range/start9inference/lstm_layer/rnn/TensorArrayUnstack/strided_slice7inference/lstm_layer/rnn/TensorArrayUnstack/range/delta*

Tidx0*#
_output_shapes
:’’’’’’’’’
ģ
Sinference/lstm_layer/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3&inference/lstm_layer/rnn/TensorArray_11inference/lstm_layer/rnn/TensorArrayUnstack/range"inference/lstm_layer/rnn/transpose(inference/lstm_layer/rnn/TensorArray_1:1*
T0*5
_class+
)'loc:@inference/lstm_layer/rnn/transpose*
_output_shapes
: 
r
0inference/lstm_layer/rnn/while/iteration_counterConst*
value	B : *
dtype0*
_output_shapes
: 
ģ
$inference/lstm_layer/rnn/while/EnterEnter0inference/lstm_layer/rnn/while/iteration_counter*
T0*<

frame_name.,inference/lstm_layer/rnn/while/while_context*
is_constant( *
parallel_iterations *
_output_shapes
: 
Ū
&inference/lstm_layer/rnn/while/Enter_1Enterinference/lstm_layer/rnn/time*
T0*<

frame_name.,inference/lstm_layer/rnn/while/while_context*
is_constant( *
parallel_iterations *
_output_shapes
: 
ä
&inference/lstm_layer/rnn/while/Enter_2Enter&inference/lstm_layer/rnn/TensorArray:1*
T0*<

frame_name.,inference/lstm_layer/rnn/while/while_context*
is_constant( *
parallel_iterations *
_output_shapes
: 

&inference/lstm_layer/rnn/while/Enter_3EnterHinference/lstm_layer/rnn/DropoutWrapperZeroState/LSTMCellZeroState/zeros*
T0*<

frame_name.,inference/lstm_layer/rnn/while/while_context*
is_constant( *
parallel_iterations *'
_output_shapes
:’’’’’’’’’d

&inference/lstm_layer/rnn/while/Enter_4EnterJinference/lstm_layer/rnn/DropoutWrapperZeroState/LSTMCellZeroState/zeros_1*
T0*<

frame_name.,inference/lstm_layer/rnn/while/while_context*
is_constant( *
parallel_iterations *'
_output_shapes
:’’’’’’’’’d
­
$inference/lstm_layer/rnn/while/MergeMerge$inference/lstm_layer/rnn/while/Enter,inference/lstm_layer/rnn/while/NextIteration*
T0*
N*
_output_shapes
: : 
³
&inference/lstm_layer/rnn/while/Merge_1Merge&inference/lstm_layer/rnn/while/Enter_1.inference/lstm_layer/rnn/while/NextIteration_1*
T0*
N*
_output_shapes
: : 
³
&inference/lstm_layer/rnn/while/Merge_2Merge&inference/lstm_layer/rnn/while/Enter_2.inference/lstm_layer/rnn/while/NextIteration_2*
T0*
N*
_output_shapes
: : 
Ä
&inference/lstm_layer/rnn/while/Merge_3Merge&inference/lstm_layer/rnn/while/Enter_3.inference/lstm_layer/rnn/while/NextIteration_3*
T0*
N*)
_output_shapes
:’’’’’’’’’d: 
Ä
&inference/lstm_layer/rnn/while/Merge_4Merge&inference/lstm_layer/rnn/while/Enter_4.inference/lstm_layer/rnn/while/NextIteration_4*
T0*
N*)
_output_shapes
:’’’’’’’’’d: 

#inference/lstm_layer/rnn/while/LessLess$inference/lstm_layer/rnn/while/Merge)inference/lstm_layer/rnn/while/Less/Enter*
T0*
_output_shapes
: 
é
)inference/lstm_layer/rnn/while/Less/EnterEnter(inference/lstm_layer/rnn/strided_slice_1*
T0*<

frame_name.,inference/lstm_layer/rnn/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
: 
”
%inference/lstm_layer/rnn/while/Less_1Less&inference/lstm_layer/rnn/while/Merge_1)inference/lstm_layer/rnn/while/Less/Enter*
T0*
_output_shapes
: 

)inference/lstm_layer/rnn/while/LogicalAnd
LogicalAnd#inference/lstm_layer/rnn/while/Less%inference/lstm_layer/rnn/while/Less_1*
_output_shapes
: 
v
'inference/lstm_layer/rnn/while/LoopCondLoopCond)inference/lstm_layer/rnn/while/LogicalAnd*
_output_shapes
: 
Ś
%inference/lstm_layer/rnn/while/SwitchSwitch$inference/lstm_layer/rnn/while/Merge'inference/lstm_layer/rnn/while/LoopCond*
T0*7
_class-
+)loc:@inference/lstm_layer/rnn/while/Merge*
_output_shapes
: : 
ą
'inference/lstm_layer/rnn/while/Switch_1Switch&inference/lstm_layer/rnn/while/Merge_1'inference/lstm_layer/rnn/while/LoopCond*
T0*9
_class/
-+loc:@inference/lstm_layer/rnn/while/Merge_1*
_output_shapes
: : 
ą
'inference/lstm_layer/rnn/while/Switch_2Switch&inference/lstm_layer/rnn/while/Merge_2'inference/lstm_layer/rnn/while/LoopCond*
T0*9
_class/
-+loc:@inference/lstm_layer/rnn/while/Merge_2*
_output_shapes
: : 

'inference/lstm_layer/rnn/while/Switch_3Switch&inference/lstm_layer/rnn/while/Merge_3'inference/lstm_layer/rnn/while/LoopCond*
T0*9
_class/
-+loc:@inference/lstm_layer/rnn/while/Merge_3*:
_output_shapes(
&:’’’’’’’’’d:’’’’’’’’’d

'inference/lstm_layer/rnn/while/Switch_4Switch&inference/lstm_layer/rnn/while/Merge_4'inference/lstm_layer/rnn/while/LoopCond*
T0*9
_class/
-+loc:@inference/lstm_layer/rnn/while/Merge_4*:
_output_shapes(
&:’’’’’’’’’d:’’’’’’’’’d
}
'inference/lstm_layer/rnn/while/IdentityIdentity'inference/lstm_layer/rnn/while/Switch:1*
T0*
_output_shapes
: 

)inference/lstm_layer/rnn/while/Identity_1Identity)inference/lstm_layer/rnn/while/Switch_1:1*
T0*
_output_shapes
: 

)inference/lstm_layer/rnn/while/Identity_2Identity)inference/lstm_layer/rnn/while/Switch_2:1*
T0*
_output_shapes
: 

)inference/lstm_layer/rnn/while/Identity_3Identity)inference/lstm_layer/rnn/while/Switch_3:1*
T0*'
_output_shapes
:’’’’’’’’’d

)inference/lstm_layer/rnn/while/Identity_4Identity)inference/lstm_layer/rnn/while/Switch_4:1*
T0*'
_output_shapes
:’’’’’’’’’d

$inference/lstm_layer/rnn/while/add/yConst(^inference/lstm_layer/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 

"inference/lstm_layer/rnn/while/addAdd'inference/lstm_layer/rnn/while/Identity$inference/lstm_layer/rnn/while/add/y*
T0*
_output_shapes
: 

0inference/lstm_layer/rnn/while/TensorArrayReadV3TensorArrayReadV36inference/lstm_layer/rnn/while/TensorArrayReadV3/Enter)inference/lstm_layer/rnn/while/Identity_18inference/lstm_layer/rnn/while/TensorArrayReadV3/Enter_1*
dtype0*'
_output_shapes
:’’’’’’’’’d
ų
6inference/lstm_layer/rnn/while/TensorArrayReadV3/EnterEnter&inference/lstm_layer/rnn/TensorArray_1*
T0*<

frame_name.,inference/lstm_layer/rnn/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
£
8inference/lstm_layer/rnn/while/TensorArrayReadV3/Enter_1EnterSinference/lstm_layer/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*<

frame_name.,inference/lstm_layer/rnn/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
: 

,inference/lstm_layer/rnn/while/dropout/ShapeShape0inference/lstm_layer/rnn/while/TensorArrayReadV3*
T0*
out_type0*
_output_shapes
:
Ø
9inference/lstm_layer/rnn/while/dropout/random_uniform/minConst(^inference/lstm_layer/rnn/while/Identity*
valueB
 *    *
dtype0*
_output_shapes
: 
Ø
9inference/lstm_layer/rnn/while/dropout/random_uniform/maxConst(^inference/lstm_layer/rnn/while/Identity*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ś
Cinference/lstm_layer/rnn/while/dropout/random_uniform/RandomUniformRandomUniform,inference/lstm_layer/rnn/while/dropout/Shape*

seed *
seed2 *
dtype0*
T0*'
_output_shapes
:’’’’’’’’’d
×
9inference/lstm_layer/rnn/while/dropout/random_uniform/subSub9inference/lstm_layer/rnn/while/dropout/random_uniform/max9inference/lstm_layer/rnn/while/dropout/random_uniform/min*
T0*
_output_shapes
: 
ņ
9inference/lstm_layer/rnn/while/dropout/random_uniform/mulMulCinference/lstm_layer/rnn/while/dropout/random_uniform/RandomUniform9inference/lstm_layer/rnn/while/dropout/random_uniform/sub*
T0*'
_output_shapes
:’’’’’’’’’d
ä
5inference/lstm_layer/rnn/while/dropout/random_uniformAdd9inference/lstm_layer/rnn/while/dropout/random_uniform/mul9inference/lstm_layer/rnn/while/dropout/random_uniform/min*
T0*'
_output_shapes
:’’’’’’’’’d
½
*inference/lstm_layer/rnn/while/dropout/addAdd0inference/lstm_layer/rnn/while/dropout/add/Enter5inference/lstm_layer/rnn/while/dropout/random_uniform*
T0*
_output_shapes
:
Ū
0inference/lstm_layer/rnn/while/dropout/add/EnterEnterdropout_keep_prob*
T0*<

frame_name.,inference/lstm_layer/rnn/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:

,inference/lstm_layer/rnn/while/dropout/FloorFloor*inference/lstm_layer/rnn/while/dropout/add*
T0*
_output_shapes
:
¼
*inference/lstm_layer/rnn/while/dropout/divRealDiv0inference/lstm_layer/rnn/while/TensorArrayReadV30inference/lstm_layer/rnn/while/dropout/add/Enter*
T0*
_output_shapes
:
½
*inference/lstm_layer/rnn/while/dropout/mulMul*inference/lstm_layer/rnn/while/dropout/div,inference/lstm_layer/rnn/while/dropout/Floor*
T0*'
_output_shapes
:’’’’’’’’’d
Ł
Jinference/lstm_layer/rnn/lstm_cell/kernel/Initializer/random_uniform/shapeConst*
valueB"Č     *
dtype0*<
_class2
0.loc:@inference/lstm_layer/rnn/lstm_cell/kernel*
_output_shapes
:
Ė
Hinference/lstm_layer/rnn/lstm_cell/kernel/Initializer/random_uniform/minConst*
valueB
 *ĶĢĢ½*
dtype0*<
_class2
0.loc:@inference/lstm_layer/rnn/lstm_cell/kernel*
_output_shapes
: 
Ė
Hinference/lstm_layer/rnn/lstm_cell/kernel/Initializer/random_uniform/maxConst*
valueB
 *ĶĢĢ=*
dtype0*<
_class2
0.loc:@inference/lstm_layer/rnn/lstm_cell/kernel*
_output_shapes
: 
¾
Rinference/lstm_layer/rnn/lstm_cell/kernel/Initializer/random_uniform/RandomUniformRandomUniformJinference/lstm_layer/rnn/lstm_cell/kernel/Initializer/random_uniform/shape*

seed *
seed2 *
dtype0*
T0*<
_class2
0.loc:@inference/lstm_layer/rnn/lstm_cell/kernel* 
_output_shapes
:
Č
Ā
Hinference/lstm_layer/rnn/lstm_cell/kernel/Initializer/random_uniform/subSubHinference/lstm_layer/rnn/lstm_cell/kernel/Initializer/random_uniform/maxHinference/lstm_layer/rnn/lstm_cell/kernel/Initializer/random_uniform/min*
T0*<
_class2
0.loc:@inference/lstm_layer/rnn/lstm_cell/kernel*
_output_shapes
: 
Ö
Hinference/lstm_layer/rnn/lstm_cell/kernel/Initializer/random_uniform/mulMulRinference/lstm_layer/rnn/lstm_cell/kernel/Initializer/random_uniform/RandomUniformHinference/lstm_layer/rnn/lstm_cell/kernel/Initializer/random_uniform/sub*
T0*<
_class2
0.loc:@inference/lstm_layer/rnn/lstm_cell/kernel* 
_output_shapes
:
Č
Č
Dinference/lstm_layer/rnn/lstm_cell/kernel/Initializer/random_uniformAddHinference/lstm_layer/rnn/lstm_cell/kernel/Initializer/random_uniform/mulHinference/lstm_layer/rnn/lstm_cell/kernel/Initializer/random_uniform/min*
T0*<
_class2
0.loc:@inference/lstm_layer/rnn/lstm_cell/kernel* 
_output_shapes
:
Č
ß
)inference/lstm_layer/rnn/lstm_cell/kernel
VariableV2*
shape:
Č*
dtype0*
	container *
shared_name *<
_class2
0.loc:@inference/lstm_layer/rnn/lstm_cell/kernel* 
_output_shapes
:
Č
½
0inference/lstm_layer/rnn/lstm_cell/kernel/AssignAssign)inference/lstm_layer/rnn/lstm_cell/kernelDinference/lstm_layer/rnn/lstm_cell/kernel/Initializer/random_uniform*
T0*
validate_shape(*
use_locking(*<
_class2
0.loc:@inference/lstm_layer/rnn/lstm_cell/kernel* 
_output_shapes
:
Č

.inference/lstm_layer/rnn/lstm_cell/kernel/readIdentity)inference/lstm_layer/rnn/lstm_cell/kernel*
T0* 
_output_shapes
:
Č
Ä
9inference/lstm_layer/rnn/lstm_cell/bias/Initializer/zerosConst*
valueB*    *
dtype0*:
_class0
.,loc:@inference/lstm_layer/rnn/lstm_cell/bias*
_output_shapes	
:
Ń
'inference/lstm_layer/rnn/lstm_cell/bias
VariableV2*
shape:*
dtype0*
	container *
shared_name *:
_class0
.,loc:@inference/lstm_layer/rnn/lstm_cell/bias*
_output_shapes	
:
§
.inference/lstm_layer/rnn/lstm_cell/bias/AssignAssign'inference/lstm_layer/rnn/lstm_cell/bias9inference/lstm_layer/rnn/lstm_cell/bias/Initializer/zeros*
T0*
validate_shape(*
use_locking(*:
_class0
.,loc:@inference/lstm_layer/rnn/lstm_cell/bias*
_output_shapes	
:

,inference/lstm_layer/rnn/lstm_cell/bias/readIdentity'inference/lstm_layer/rnn/lstm_cell/bias*
T0*
_output_shapes	
:
 
4inference/lstm_layer/rnn/while/lstm_cell/concat/axisConst(^inference/lstm_layer/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 

/inference/lstm_layer/rnn/while/lstm_cell/concatConcatV2*inference/lstm_layer/rnn/while/dropout/mul)inference/lstm_layer/rnn/while/Identity_44inference/lstm_layer/rnn/while/lstm_cell/concat/axis*
N*
T0*

Tidx0*(
_output_shapes
:’’’’’’’’’Č
ś
/inference/lstm_layer/rnn/while/lstm_cell/MatMulMatMul/inference/lstm_layer/rnn/while/lstm_cell/concat5inference/lstm_layer/rnn/while/lstm_cell/MatMul/Enter*
transpose_a( *
transpose_b( *
T0*(
_output_shapes
:’’’’’’’’’

5inference/lstm_layer/rnn/while/lstm_cell/MatMul/EnterEnter.inference/lstm_layer/rnn/lstm_cell/kernel/read*
T0*<

frame_name.,inference/lstm_layer/rnn/while/while_context*
is_constant(*
parallel_iterations * 
_output_shapes
:
Č
ī
0inference/lstm_layer/rnn/while/lstm_cell/BiasAddBiasAdd/inference/lstm_layer/rnn/while/lstm_cell/MatMul6inference/lstm_layer/rnn/while/lstm_cell/BiasAdd/Enter*
T0*
data_formatNHWC*(
_output_shapes
:’’’’’’’’’
’
6inference/lstm_layer/rnn/while/lstm_cell/BiasAdd/EnterEnter,inference/lstm_layer/rnn/lstm_cell/bias/read*
T0*<

frame_name.,inference/lstm_layer/rnn/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes	
:

.inference/lstm_layer/rnn/while/lstm_cell/ConstConst(^inference/lstm_layer/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
¤
8inference/lstm_layer/rnn/while/lstm_cell/split/split_dimConst(^inference/lstm_layer/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 

.inference/lstm_layer/rnn/while/lstm_cell/splitSplit8inference/lstm_layer/rnn/while/lstm_cell/split/split_dim0inference/lstm_layer/rnn/while/lstm_cell/BiasAdd*
	num_split*
T0*`
_output_shapesN
L:’’’’’’’’’d:’’’’’’’’’d:’’’’’’’’’d:’’’’’’’’’d

.inference/lstm_layer/rnn/while/lstm_cell/add/yConst(^inference/lstm_layer/rnn/while/Identity*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ē
,inference/lstm_layer/rnn/while/lstm_cell/addAdd0inference/lstm_layer/rnn/while/lstm_cell/split:2.inference/lstm_layer/rnn/while/lstm_cell/add/y*
T0*'
_output_shapes
:’’’’’’’’’d

0inference/lstm_layer/rnn/while/lstm_cell/SigmoidSigmoid,inference/lstm_layer/rnn/while/lstm_cell/add*
T0*'
_output_shapes
:’’’’’’’’’d
Ā
,inference/lstm_layer/rnn/while/lstm_cell/mulMul0inference/lstm_layer/rnn/while/lstm_cell/Sigmoid)inference/lstm_layer/rnn/while/Identity_3*
T0*'
_output_shapes
:’’’’’’’’’d

2inference/lstm_layer/rnn/while/lstm_cell/Sigmoid_1Sigmoid.inference/lstm_layer/rnn/while/lstm_cell/split*
T0*'
_output_shapes
:’’’’’’’’’d

-inference/lstm_layer/rnn/while/lstm_cell/TanhTanh0inference/lstm_layer/rnn/while/lstm_cell/split:1*
T0*'
_output_shapes
:’’’’’’’’’d
Ź
.inference/lstm_layer/rnn/while/lstm_cell/mul_1Mul2inference/lstm_layer/rnn/while/lstm_cell/Sigmoid_1-inference/lstm_layer/rnn/while/lstm_cell/Tanh*
T0*'
_output_shapes
:’’’’’’’’’d
Å
.inference/lstm_layer/rnn/while/lstm_cell/add_1Add,inference/lstm_layer/rnn/while/lstm_cell/mul.inference/lstm_layer/rnn/while/lstm_cell/mul_1*
T0*'
_output_shapes
:’’’’’’’’’d
”
2inference/lstm_layer/rnn/while/lstm_cell/Sigmoid_2Sigmoid0inference/lstm_layer/rnn/while/lstm_cell/split:3*
T0*'
_output_shapes
:’’’’’’’’’d

/inference/lstm_layer/rnn/while/lstm_cell/Tanh_1Tanh.inference/lstm_layer/rnn/while/lstm_cell/add_1*
T0*'
_output_shapes
:’’’’’’’’’d
Ģ
.inference/lstm_layer/rnn/while/lstm_cell/mul_2Mul2inference/lstm_layer/rnn/while/lstm_cell/Sigmoid_2/inference/lstm_layer/rnn/while/lstm_cell/Tanh_1*
T0*'
_output_shapes
:’’’’’’’’’d

.inference/lstm_layer/rnn/while/dropout_1/ShapeShape.inference/lstm_layer/rnn/while/lstm_cell/mul_2*
T0*
out_type0*
_output_shapes
:
Ŗ
;inference/lstm_layer/rnn/while/dropout_1/random_uniform/minConst(^inference/lstm_layer/rnn/while/Identity*
valueB
 *    *
dtype0*
_output_shapes
: 
Ŗ
;inference/lstm_layer/rnn/while/dropout_1/random_uniform/maxConst(^inference/lstm_layer/rnn/while/Identity*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ž
Einference/lstm_layer/rnn/while/dropout_1/random_uniform/RandomUniformRandomUniform.inference/lstm_layer/rnn/while/dropout_1/Shape*

seed *
seed2 *
dtype0*
T0*'
_output_shapes
:’’’’’’’’’d
Ż
;inference/lstm_layer/rnn/while/dropout_1/random_uniform/subSub;inference/lstm_layer/rnn/while/dropout_1/random_uniform/max;inference/lstm_layer/rnn/while/dropout_1/random_uniform/min*
T0*
_output_shapes
: 
ų
;inference/lstm_layer/rnn/while/dropout_1/random_uniform/mulMulEinference/lstm_layer/rnn/while/dropout_1/random_uniform/RandomUniform;inference/lstm_layer/rnn/while/dropout_1/random_uniform/sub*
T0*'
_output_shapes
:’’’’’’’’’d
ź
7inference/lstm_layer/rnn/while/dropout_1/random_uniformAdd;inference/lstm_layer/rnn/while/dropout_1/random_uniform/mul;inference/lstm_layer/rnn/while/dropout_1/random_uniform/min*
T0*'
_output_shapes
:’’’’’’’’’d
Į
,inference/lstm_layer/rnn/while/dropout_1/addAdd0inference/lstm_layer/rnn/while/dropout/add/Enter7inference/lstm_layer/rnn/while/dropout_1/random_uniform*
T0*
_output_shapes
:

.inference/lstm_layer/rnn/while/dropout_1/FloorFloor,inference/lstm_layer/rnn/while/dropout_1/add*
T0*
_output_shapes
:
¼
,inference/lstm_layer/rnn/while/dropout_1/divRealDiv.inference/lstm_layer/rnn/while/lstm_cell/mul_20inference/lstm_layer/rnn/while/dropout/add/Enter*
T0*
_output_shapes
:
Ć
,inference/lstm_layer/rnn/while/dropout_1/mulMul,inference/lstm_layer/rnn/while/dropout_1/div.inference/lstm_layer/rnn/while/dropout_1/Floor*
T0*'
_output_shapes
:’’’’’’’’’d
¼
+inference/lstm_layer/rnn/while/GreaterEqualGreaterEqual)inference/lstm_layer/rnn/while/Identity_11inference/lstm_layer/rnn/while/GreaterEqual/Enter*
T0*
_output_shapes
:
ļ
1inference/lstm_layer/rnn/while/GreaterEqual/EnterEnter$inference/lstm_layer/rnn/CheckSeqLen*
T0*<

frame_name.,inference/lstm_layer/rnn/while/while_context*
is_constant(*
parallel_iterations *
_output_shapes
:
Ŗ
%inference/lstm_layer/rnn/while/SelectSelect+inference/lstm_layer/rnn/while/GreaterEqual+inference/lstm_layer/rnn/while/Select/Enter,inference/lstm_layer/rnn/while/dropout_1/mul*
T0*?
_class5
31loc:@inference/lstm_layer/rnn/while/dropout_1/mul*'
_output_shapes
:’’’’’’’’’d
³
+inference/lstm_layer/rnn/while/Select/EnterEnterinference/lstm_layer/rnn/zeros*
T0*<

frame_name.,inference/lstm_layer/rnn/while/while_context*
is_constant(*
parallel_iterations *?
_class5
31loc:@inference/lstm_layer/rnn/while/dropout_1/mul*'
_output_shapes
:’’’’’’’’’d
¾
-inference/lstm_layer/rnn/while/GreaterEqual_1GreaterEqual)inference/lstm_layer/rnn/while/Identity_11inference/lstm_layer/rnn/while/GreaterEqual/Enter*
T0*
_output_shapes
:
°
'inference/lstm_layer/rnn/while/Select_1Select-inference/lstm_layer/rnn/while/GreaterEqual_1)inference/lstm_layer/rnn/while/Identity_3.inference/lstm_layer/rnn/while/lstm_cell/add_1*
T0*A
_class7
53loc:@inference/lstm_layer/rnn/while/lstm_cell/add_1*'
_output_shapes
:’’’’’’’’’d
¾
-inference/lstm_layer/rnn/while/GreaterEqual_2GreaterEqual)inference/lstm_layer/rnn/while/Identity_11inference/lstm_layer/rnn/while/GreaterEqual/Enter*
T0*
_output_shapes
:
°
'inference/lstm_layer/rnn/while/Select_2Select-inference/lstm_layer/rnn/while/GreaterEqual_2)inference/lstm_layer/rnn/while/Identity_4.inference/lstm_layer/rnn/while/lstm_cell/mul_2*
T0*A
_class7
53loc:@inference/lstm_layer/rnn/while/lstm_cell/mul_2*'
_output_shapes
:’’’’’’’’’d

Binference/lstm_layer/rnn/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3Hinference/lstm_layer/rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enter)inference/lstm_layer/rnn/while/Identity_1%inference/lstm_layer/rnn/while/Select)inference/lstm_layer/rnn/while/Identity_2*
T0*?
_class5
31loc:@inference/lstm_layer/rnn/while/dropout_1/mul*
_output_shapes
: 
É
Hinference/lstm_layer/rnn/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnter$inference/lstm_layer/rnn/TensorArray*
T0*<

frame_name.,inference/lstm_layer/rnn/while/while_context*
is_constant(*
parallel_iterations *?
_class5
31loc:@inference/lstm_layer/rnn/while/dropout_1/mul*
_output_shapes
:

&inference/lstm_layer/rnn/while/add_1/yConst(^inference/lstm_layer/rnn/while/Identity*
value	B :*
dtype0*
_output_shapes
: 

$inference/lstm_layer/rnn/while/add_1Add)inference/lstm_layer/rnn/while/Identity_1&inference/lstm_layer/rnn/while/add_1/y*
T0*
_output_shapes
: 

,inference/lstm_layer/rnn/while/NextIterationNextIteration"inference/lstm_layer/rnn/while/add*
T0*
_output_shapes
: 

.inference/lstm_layer/rnn/while/NextIteration_1NextIteration$inference/lstm_layer/rnn/while/add_1*
T0*
_output_shapes
: 
¤
.inference/lstm_layer/rnn/while/NextIteration_2NextIterationBinference/lstm_layer/rnn/while/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 

.inference/lstm_layer/rnn/while/NextIteration_3NextIteration'inference/lstm_layer/rnn/while/Select_1*
T0*'
_output_shapes
:’’’’’’’’’d

.inference/lstm_layer/rnn/while/NextIteration_4NextIteration'inference/lstm_layer/rnn/while/Select_2*
T0*'
_output_shapes
:’’’’’’’’’d
s
#inference/lstm_layer/rnn/while/ExitExit%inference/lstm_layer/rnn/while/Switch*
T0*
_output_shapes
: 
w
%inference/lstm_layer/rnn/while/Exit_1Exit'inference/lstm_layer/rnn/while/Switch_1*
T0*
_output_shapes
: 
w
%inference/lstm_layer/rnn/while/Exit_2Exit'inference/lstm_layer/rnn/while/Switch_2*
T0*
_output_shapes
: 

%inference/lstm_layer/rnn/while/Exit_3Exit'inference/lstm_layer/rnn/while/Switch_3*
T0*'
_output_shapes
:’’’’’’’’’d

%inference/lstm_layer/rnn/while/Exit_4Exit'inference/lstm_layer/rnn/while/Switch_4*
T0*'
_output_shapes
:’’’’’’’’’d
ī
;inference/lstm_layer/rnn/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3$inference/lstm_layer/rnn/TensorArray%inference/lstm_layer/rnn/while/Exit_2*7
_class-
+)loc:@inference/lstm_layer/rnn/TensorArray*
_output_shapes
: 
°
5inference/lstm_layer/rnn/TensorArrayStack/range/startConst*
value	B : *
dtype0*7
_class-
+)loc:@inference/lstm_layer/rnn/TensorArray*
_output_shapes
: 
°
5inference/lstm_layer/rnn/TensorArrayStack/range/deltaConst*
value	B :*
dtype0*7
_class-
+)loc:@inference/lstm_layer/rnn/TensorArray*
_output_shapes
: 
Ķ
/inference/lstm_layer/rnn/TensorArrayStack/rangeRange5inference/lstm_layer/rnn/TensorArrayStack/range/start;inference/lstm_layer/rnn/TensorArrayStack/TensorArraySizeV35inference/lstm_layer/rnn/TensorArrayStack/range/delta*

Tidx0*7
_class-
+)loc:@inference/lstm_layer/rnn/TensorArray*#
_output_shapes
:’’’’’’’’’
ė
=inference/lstm_layer/rnn/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3$inference/lstm_layer/rnn/TensorArray/inference/lstm_layer/rnn/TensorArrayStack/range%inference/lstm_layer/rnn/while/Exit_2*
dtype0*$
element_shape:’’’’’’’’’d*7
_class-
+)loc:@inference/lstm_layer/rnn/TensorArray*+
_output_shapes
:N’’’’’’’’’d
j
 inference/lstm_layer/rnn/Const_2Const*
valueB:d*
dtype0*
_output_shapes
:
a
inference/lstm_layer/rnn/Rank_3Const*
value	B :*
dtype0*
_output_shapes
: 
h
&inference/lstm_layer/rnn/range_3/startConst*
value	B :*
dtype0*
_output_shapes
: 
h
&inference/lstm_layer/rnn/range_3/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Ā
 inference/lstm_layer/rnn/range_3Range&inference/lstm_layer/rnn/range_3/startinference/lstm_layer/rnn/Rank_3&inference/lstm_layer/rnn/range_3/delta*

Tidx0*
_output_shapes
:
{
*inference/lstm_layer/rnn/concat_2/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
h
&inference/lstm_layer/rnn/concat_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ż
!inference/lstm_layer/rnn/concat_2ConcatV2*inference/lstm_layer/rnn/concat_2/values_0 inference/lstm_layer/rnn/range_3&inference/lstm_layer/rnn/concat_2/axis*
N*
T0*

Tidx0*
_output_shapes
:
Ö
$inference/lstm_layer/rnn/transpose_1	Transpose=inference/lstm_layer/rnn/TensorArrayStack/TensorArrayGatherV3!inference/lstm_layer/rnn/concat_2*
T0*
Tperm0*+
_output_shapes
:’’’’’’’’’Nd
u
+inference/lstm_layer/Mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
Ć
inference/lstm_layer/MeanMean$inference/lstm_layer/rnn/transpose_1+inference/lstm_layer/Mean/reduction_indices*
	keep_dims( *
T0*

Tidx0*'
_output_shapes
:’’’’’’’’’d
¹
:inference/output_layer/W1/Initializer/random_uniform/shapeConst*
valueB"d      *
dtype0*,
_class"
 loc:@inference/output_layer/W1*
_output_shapes
:
«
8inference/output_layer/W1/Initializer/random_uniform/minConst*
valueB
 *B[x¾*
dtype0*,
_class"
 loc:@inference/output_layer/W1*
_output_shapes
: 
«
8inference/output_layer/W1/Initializer/random_uniform/maxConst*
valueB
 *B[x>*
dtype0*,
_class"
 loc:@inference/output_layer/W1*
_output_shapes
: 

Binference/output_layer/W1/Initializer/random_uniform/RandomUniformRandomUniform:inference/output_layer/W1/Initializer/random_uniform/shape*

seed *
seed2 *
dtype0*
T0*,
_class"
 loc:@inference/output_layer/W1*
_output_shapes

:d

8inference/output_layer/W1/Initializer/random_uniform/subSub8inference/output_layer/W1/Initializer/random_uniform/max8inference/output_layer/W1/Initializer/random_uniform/min*
T0*,
_class"
 loc:@inference/output_layer/W1*
_output_shapes
: 

8inference/output_layer/W1/Initializer/random_uniform/mulMulBinference/output_layer/W1/Initializer/random_uniform/RandomUniform8inference/output_layer/W1/Initializer/random_uniform/sub*
T0*,
_class"
 loc:@inference/output_layer/W1*
_output_shapes

:d

4inference/output_layer/W1/Initializer/random_uniformAdd8inference/output_layer/W1/Initializer/random_uniform/mul8inference/output_layer/W1/Initializer/random_uniform/min*
T0*,
_class"
 loc:@inference/output_layer/W1*
_output_shapes

:d
»
inference/output_layer/W1
VariableV2*
shape
:d*
dtype0*
	container *
shared_name *,
_class"
 loc:@inference/output_layer/W1*
_output_shapes

:d
ū
 inference/output_layer/W1/AssignAssigninference/output_layer/W14inference/output_layer/W1/Initializer/random_uniform*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@inference/output_layer/W1*
_output_shapes

:d

inference/output_layer/W1/readIdentityinference/output_layer/W1*
T0*,
_class"
 loc:@inference/output_layer/W1*
_output_shapes

:d
ŗ
inference/output_layer/MatMulMatMulinference/lstm_layer/Meaninference/output_layer/W1/read*
transpose_a( *
transpose_b( *
T0*'
_output_shapes
:’’’’’’’’’
s
inference/probabilitiesSoftmaxinference/output_layer/MatMul*
T0*'
_output_shapes
:’’’’’’’’’
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
ż
save/SaveV2/tensor_namesConst*°
value¦B£B'inference/lstm_layer/rnn/lstm_cell/biasB)inference/lstm_layer/rnn/lstm_cell/kernelBinference/output_layer/W1B*inference/word_embeddings/embedding_matrix*
dtype0*
_output_shapes
:
k
save/SaveV2/shape_and_slicesConst*
valueBB B B B *
dtype0*
_output_shapes
:

save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slices'inference/lstm_layer/rnn/lstm_cell/bias)inference/lstm_layer/rnn/lstm_cell/kernelinference/output_layer/W1*inference/word_embeddings/embedding_matrix*
dtypes
2
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 

save/RestoreV2/tensor_namesConst*<
value3B1B'inference/lstm_layer/rnn/lstm_cell/bias*
dtype0*
_output_shapes
:
h
save/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
Ł
save/AssignAssign'inference/lstm_layer/rnn/lstm_cell/biassave/RestoreV2*
T0*
validate_shape(*
use_locking(*:
_class0
.,loc:@inference/lstm_layer/rnn/lstm_cell/bias*
_output_shapes	
:

save/RestoreV2_1/tensor_namesConst*>
value5B3B)inference/lstm_layer/rnn/lstm_cell/kernel*
dtype0*
_output_shapes
:
j
!save/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
ę
save/Assign_1Assign)inference/lstm_layer/rnn/lstm_cell/kernelsave/RestoreV2_1*
T0*
validate_shape(*
use_locking(*<
_class2
0.loc:@inference/lstm_layer/rnn/lstm_cell/kernel* 
_output_shapes
:
Č

save/RestoreV2_2/tensor_namesConst*.
value%B#Binference/output_layer/W1*
dtype0*
_output_shapes
:
j
!save/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
Ä
save/Assign_2Assigninference/output_layer/W1save/RestoreV2_2*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@inference/output_layer/W1*
_output_shapes

:d

save/RestoreV2_3/tensor_namesConst*?
value6B4B*inference/word_embeddings/embedding_matrix*
dtype0*
_output_shapes
:
j
!save/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes
:
č
save/Assign_3Assign*inference/word_embeddings/embedding_matrixsave/RestoreV2_3*
T0*
validate_shape(*
use_locking(*=
_class3
1/loc:@inference/word_embeddings/embedding_matrix* 
_output_shapes
:
¤d
V
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3
R
save_1/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_9185cac371604e798bb6880c5e9dd360/part*
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
m
save_1/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards"/device:CPU:0*
_output_shapes
: 

save_1/SaveV2/tensor_namesConst"/device:CPU:0*°
value¦B£B'inference/lstm_layer/rnn/lstm_cell/biasB)inference/lstm_layer/rnn/lstm_cell/kernelBinference/output_layer/W1B*inference/word_embeddings/embedding_matrix*
dtype0*
_output_shapes
:
|
save_1/SaveV2/shape_and_slicesConst"/device:CPU:0*
valueBB B B B *
dtype0*
_output_shapes
:
©
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slices'inference/lstm_layer/rnn/lstm_cell/bias)inference/lstm_layer/rnn/lstm_cell/kernelinference/output_layer/W1*inference/word_embeddings/embedding_matrix"/device:CPU:0*
dtypes
2
Ø
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2"/device:CPU:0*
T0*)
_class
loc:@save_1/ShardedFilename*
_output_shapes
: 
²
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency"/device:CPU:0*
N*
T0*

axis *
_output_shapes
:

save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const"/device:CPU:0*
delete_old_dirs(

save_1/IdentityIdentitysave_1/Const^save_1/control_dependency^save_1/MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 

save_1/RestoreV2/tensor_namesConst*<
value3B1B'inference/lstm_layer/rnn/lstm_cell/bias*
dtype0*
_output_shapes
:
j
!save_1/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
Ż
save_1/AssignAssign'inference/lstm_layer/rnn/lstm_cell/biassave_1/RestoreV2*
T0*
validate_shape(*
use_locking(*:
_class0
.,loc:@inference/lstm_layer/rnn/lstm_cell/bias*
_output_shapes	
:

save_1/RestoreV2_1/tensor_namesConst*>
value5B3B)inference/lstm_layer/rnn/lstm_cell/kernel*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save_1/RestoreV2_1	RestoreV2save_1/Constsave_1/RestoreV2_1/tensor_names#save_1/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:
ź
save_1/Assign_1Assign)inference/lstm_layer/rnn/lstm_cell/kernelsave_1/RestoreV2_1*
T0*
validate_shape(*
use_locking(*<
_class2
0.loc:@inference/lstm_layer/rnn/lstm_cell/kernel* 
_output_shapes
:
Č

save_1/RestoreV2_2/tensor_namesConst*.
value%B#Binference/output_layer/W1*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save_1/RestoreV2_2	RestoreV2save_1/Constsave_1/RestoreV2_2/tensor_names#save_1/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
Č
save_1/Assign_2Assigninference/output_layer/W1save_1/RestoreV2_2*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@inference/output_layer/W1*
_output_shapes

:d

save_1/RestoreV2_3/tensor_namesConst*?
value6B4B*inference/word_embeddings/embedding_matrix*
dtype0*
_output_shapes
:
l
#save_1/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save_1/RestoreV2_3	RestoreV2save_1/Constsave_1/RestoreV2_3/tensor_names#save_1/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes
:
ģ
save_1/Assign_3Assign*inference/word_embeddings/embedding_matrixsave_1/RestoreV2_3*
T0*
validate_shape(*
use_locking(*=
_class3
1/loc:@inference/word_embeddings/embedding_matrix* 
_output_shapes
:
¤d
b
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_2^save_1/Assign_3
1
save_1/restore_allNoOp^save_1/restore_shard"B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"“
	variables¦£
Ż
,inference/word_embeddings/embedding_matrix:01inference/word_embeddings/embedding_matrix/Assign1inference/word_embeddings/embedding_matrix/read:02Ginference/word_embeddings/embedding_matrix/Initializer/random_uniform:0
Ł
+inference/lstm_layer/rnn/lstm_cell/kernel:00inference/lstm_layer/rnn/lstm_cell/kernel/Assign0inference/lstm_layer/rnn/lstm_cell/kernel/read:02Finference/lstm_layer/rnn/lstm_cell/kernel/Initializer/random_uniform:0
Č
)inference/lstm_layer/rnn/lstm_cell/bias:0.inference/lstm_layer/rnn/lstm_cell/bias/Assign.inference/lstm_layer/rnn/lstm_cell/bias/read:02;inference/lstm_layer/rnn/lstm_cell/bias/Initializer/zeros:0

inference/output_layer/W1:0 inference/output_layer/W1/Assign inference/output_layer/W1/read:026inference/output_layer/W1/Initializer/random_uniform:0"¾
trainable_variables¦£
Ż
,inference/word_embeddings/embedding_matrix:01inference/word_embeddings/embedding_matrix/Assign1inference/word_embeddings/embedding_matrix/read:02Ginference/word_embeddings/embedding_matrix/Initializer/random_uniform:0
Ł
+inference/lstm_layer/rnn/lstm_cell/kernel:00inference/lstm_layer/rnn/lstm_cell/kernel/Assign0inference/lstm_layer/rnn/lstm_cell/kernel/read:02Finference/lstm_layer/rnn/lstm_cell/kernel/Initializer/random_uniform:0
Č
)inference/lstm_layer/rnn/lstm_cell/bias:0.inference/lstm_layer/rnn/lstm_cell/bias/Assign.inference/lstm_layer/rnn/lstm_cell/bias/read:02;inference/lstm_layer/rnn/lstm_cell/bias/Initializer/zeros:0

inference/output_layer/W1:0 inference/output_layer/W1/Assign inference/output_layer/W1/read:026inference/output_layer/W1/Initializer/random_uniform:0"Ł8
while_contextĒ8Ä8
Į8
,inference/lstm_layer/rnn/while/while_context *)inference/lstm_layer/rnn/while/LoopCond:02&inference/lstm_layer/rnn/while/Merge:0:)inference/lstm_layer/rnn/while/Identity:0B%inference/lstm_layer/rnn/while/Exit:0B'inference/lstm_layer/rnn/while/Exit_1:0B'inference/lstm_layer/rnn/while/Exit_2:0B'inference/lstm_layer/rnn/while/Exit_3:0B'inference/lstm_layer/rnn/while/Exit_4:0JĒ3
dropout_keep_prob:0
&inference/lstm_layer/rnn/CheckSeqLen:0
&inference/lstm_layer/rnn/TensorArray:0
Uinference/lstm_layer/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0
(inference/lstm_layer/rnn/TensorArray_1:0
.inference/lstm_layer/rnn/lstm_cell/bias/read:0
0inference/lstm_layer/rnn/lstm_cell/kernel/read:0
*inference/lstm_layer/rnn/strided_slice_1:0
&inference/lstm_layer/rnn/while/Enter:0
(inference/lstm_layer/rnn/while/Enter_1:0
(inference/lstm_layer/rnn/while/Enter_2:0
(inference/lstm_layer/rnn/while/Enter_3:0
(inference/lstm_layer/rnn/while/Enter_4:0
%inference/lstm_layer/rnn/while/Exit:0
'inference/lstm_layer/rnn/while/Exit_1:0
'inference/lstm_layer/rnn/while/Exit_2:0
'inference/lstm_layer/rnn/while/Exit_3:0
'inference/lstm_layer/rnn/while/Exit_4:0
3inference/lstm_layer/rnn/while/GreaterEqual/Enter:0
-inference/lstm_layer/rnn/while/GreaterEqual:0
/inference/lstm_layer/rnn/while/GreaterEqual_1:0
/inference/lstm_layer/rnn/while/GreaterEqual_2:0
)inference/lstm_layer/rnn/while/Identity:0
+inference/lstm_layer/rnn/while/Identity_1:0
+inference/lstm_layer/rnn/while/Identity_2:0
+inference/lstm_layer/rnn/while/Identity_3:0
+inference/lstm_layer/rnn/while/Identity_4:0
+inference/lstm_layer/rnn/while/Less/Enter:0
%inference/lstm_layer/rnn/while/Less:0
'inference/lstm_layer/rnn/while/Less_1:0
+inference/lstm_layer/rnn/while/LogicalAnd:0
)inference/lstm_layer/rnn/while/LoopCond:0
&inference/lstm_layer/rnn/while/Merge:0
&inference/lstm_layer/rnn/while/Merge:1
(inference/lstm_layer/rnn/while/Merge_1:0
(inference/lstm_layer/rnn/while/Merge_1:1
(inference/lstm_layer/rnn/while/Merge_2:0
(inference/lstm_layer/rnn/while/Merge_2:1
(inference/lstm_layer/rnn/while/Merge_3:0
(inference/lstm_layer/rnn/while/Merge_3:1
(inference/lstm_layer/rnn/while/Merge_4:0
(inference/lstm_layer/rnn/while/Merge_4:1
.inference/lstm_layer/rnn/while/NextIteration:0
0inference/lstm_layer/rnn/while/NextIteration_1:0
0inference/lstm_layer/rnn/while/NextIteration_2:0
0inference/lstm_layer/rnn/while/NextIteration_3:0
0inference/lstm_layer/rnn/while/NextIteration_4:0
-inference/lstm_layer/rnn/while/Select/Enter:0
'inference/lstm_layer/rnn/while/Select:0
)inference/lstm_layer/rnn/while/Select_1:0
)inference/lstm_layer/rnn/while/Select_2:0
'inference/lstm_layer/rnn/while/Switch:0
'inference/lstm_layer/rnn/while/Switch:1
)inference/lstm_layer/rnn/while/Switch_1:0
)inference/lstm_layer/rnn/while/Switch_1:1
)inference/lstm_layer/rnn/while/Switch_2:0
)inference/lstm_layer/rnn/while/Switch_2:1
)inference/lstm_layer/rnn/while/Switch_3:0
)inference/lstm_layer/rnn/while/Switch_3:1
)inference/lstm_layer/rnn/while/Switch_4:0
)inference/lstm_layer/rnn/while/Switch_4:1
8inference/lstm_layer/rnn/while/TensorArrayReadV3/Enter:0
:inference/lstm_layer/rnn/while/TensorArrayReadV3/Enter_1:0
2inference/lstm_layer/rnn/while/TensorArrayReadV3:0
Jinference/lstm_layer/rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0
Dinference/lstm_layer/rnn/while/TensorArrayWrite/TensorArrayWriteV3:0
&inference/lstm_layer/rnn/while/add/y:0
$inference/lstm_layer/rnn/while/add:0
(inference/lstm_layer/rnn/while/add_1/y:0
&inference/lstm_layer/rnn/while/add_1:0
.inference/lstm_layer/rnn/while/dropout/Floor:0
.inference/lstm_layer/rnn/while/dropout/Shape:0
2inference/lstm_layer/rnn/while/dropout/add/Enter:0
,inference/lstm_layer/rnn/while/dropout/add:0
,inference/lstm_layer/rnn/while/dropout/div:0
,inference/lstm_layer/rnn/while/dropout/mul:0
Einference/lstm_layer/rnn/while/dropout/random_uniform/RandomUniform:0
;inference/lstm_layer/rnn/while/dropout/random_uniform/max:0
;inference/lstm_layer/rnn/while/dropout/random_uniform/min:0
;inference/lstm_layer/rnn/while/dropout/random_uniform/mul:0
;inference/lstm_layer/rnn/while/dropout/random_uniform/sub:0
7inference/lstm_layer/rnn/while/dropout/random_uniform:0
0inference/lstm_layer/rnn/while/dropout_1/Floor:0
0inference/lstm_layer/rnn/while/dropout_1/Shape:0
.inference/lstm_layer/rnn/while/dropout_1/add:0
.inference/lstm_layer/rnn/while/dropout_1/div:0
.inference/lstm_layer/rnn/while/dropout_1/mul:0
Ginference/lstm_layer/rnn/while/dropout_1/random_uniform/RandomUniform:0
=inference/lstm_layer/rnn/while/dropout_1/random_uniform/max:0
=inference/lstm_layer/rnn/while/dropout_1/random_uniform/min:0
=inference/lstm_layer/rnn/while/dropout_1/random_uniform/mul:0
=inference/lstm_layer/rnn/while/dropout_1/random_uniform/sub:0
9inference/lstm_layer/rnn/while/dropout_1/random_uniform:0
8inference/lstm_layer/rnn/while/lstm_cell/BiasAdd/Enter:0
2inference/lstm_layer/rnn/while/lstm_cell/BiasAdd:0
0inference/lstm_layer/rnn/while/lstm_cell/Const:0
7inference/lstm_layer/rnn/while/lstm_cell/MatMul/Enter:0
1inference/lstm_layer/rnn/while/lstm_cell/MatMul:0
2inference/lstm_layer/rnn/while/lstm_cell/Sigmoid:0
4inference/lstm_layer/rnn/while/lstm_cell/Sigmoid_1:0
4inference/lstm_layer/rnn/while/lstm_cell/Sigmoid_2:0
/inference/lstm_layer/rnn/while/lstm_cell/Tanh:0
1inference/lstm_layer/rnn/while/lstm_cell/Tanh_1:0
0inference/lstm_layer/rnn/while/lstm_cell/add/y:0
.inference/lstm_layer/rnn/while/lstm_cell/add:0
0inference/lstm_layer/rnn/while/lstm_cell/add_1:0
6inference/lstm_layer/rnn/while/lstm_cell/concat/axis:0
1inference/lstm_layer/rnn/while/lstm_cell/concat:0
.inference/lstm_layer/rnn/while/lstm_cell/mul:0
0inference/lstm_layer/rnn/while/lstm_cell/mul_1:0
0inference/lstm_layer/rnn/while/lstm_cell/mul_2:0
:inference/lstm_layer/rnn/while/lstm_cell/split/split_dim:0
0inference/lstm_layer/rnn/while/lstm_cell/split:0
0inference/lstm_layer/rnn/while/lstm_cell/split:1
0inference/lstm_layer/rnn/while/lstm_cell/split:2
0inference/lstm_layer/rnn/while/lstm_cell/split:3
 inference/lstm_layer/rnn/zeros:0Y
*inference/lstm_layer/rnn/strided_slice_1:0+inference/lstm_layer/rnn/while/Less/Enter:0d
(inference/lstm_layer/rnn/TensorArray_1:08inference/lstm_layer/rnn/while/TensorArrayReadV3/Enter:0
Uinference/lstm_layer/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0:inference/lstm_layer/rnn/while/TensorArrayReadV3/Enter_1:0I
dropout_keep_prob:02inference/lstm_layer/rnn/while/dropout/add/Enter:0k
0inference/lstm_layer/rnn/lstm_cell/kernel/read:07inference/lstm_layer/rnn/while/lstm_cell/MatMul/Enter:0j
.inference/lstm_layer/rnn/lstm_cell/bias/read:08inference/lstm_layer/rnn/while/lstm_cell/BiasAdd/Enter:0]
&inference/lstm_layer/rnn/CheckSeqLen:03inference/lstm_layer/rnn/while/GreaterEqual/Enter:0Q
 inference/lstm_layer/rnn/zeros:0-inference/lstm_layer/rnn/while/Select/Enter:0t
&inference/lstm_layer/rnn/TensorArray:0Jinference/lstm_layer/rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0R&inference/lstm_layer/rnn/while/Enter:0R(inference/lstm_layer/rnn/while/Enter_1:0R(inference/lstm_layer/rnn/while/Enter_2:0R(inference/lstm_layer/rnn/while/Enter_3:0R(inference/lstm_layer/rnn/while/Enter_4:0Z*inference/lstm_layer/rnn/strided_slice_1:0* 
predict_probability
.
inputs$
Placeholder:0’’’’’’’’’N:
scores0
inference/probabilities:0’’’’’’’’’tensorflow/serving/predict