»é
Ī..
:
Add
x"T
y"T
z"T"
Ttype:
2	
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
2	"-
data_formatstringNHWC:
NHWCNCHW
S
	Bucketize

input"T

output"
Ttype:
2	"

boundarieslist(float)
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
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
B
Equal
x"T
y"T
z
"
Ttype:
2	

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
p
GatherNd
params"Tparams
indices"Tindices
output"Tparams"
Tparamstype"
Tindicestype:
2	

GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
”
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype
.
Identity

input"T
output"T"	
Ttype
É
InitializeTableFromTextFileV2
table_handle
filename"
	key_indexint(0ž’’’’’’’’"
value_indexint(0ž’’’’’’’’"+

vocab_sizeint’’’’’’’’’(0’’’’’’’’’"
	delimiterstring	
b
InitializeTableV2
table_handle
keys"Tkey
values"Tval"
Tkeytype"
Tvaltype
2
L2Loss
t"T
output"T"
Ttype:
2
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype
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

NoOp
E
NotEqual
x"T
y"T
z
"
Ttype:
2	

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

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
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
list(type)(0
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
t

SegmentMax	
data"T
segment_ids"Tindices
output"T"
Ttype:
2	"
Tindicestype:
2	
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

2
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
·
SparseFillEmptyRows
indices	
values"T
dense_shape	
default_value"T
output_indices	
output_values"T
empty_row_indicator

reverse_index_map	"	
Ttype
h
SparseReshape
input_indices	
input_shape	
	new_shape	
output_indices	
output_shape	
z
SparseSegmentMean	
data"T
indices"Tidx
segment_ids
output"T"
Ttype:
2"
Tidxtype0:
2	
¼
SparseToDense
sparse_indices"Tindices
output_shape"Tindices
sparse_values"T
default_value"T

dense"T"
validate_indicesbool("	
Ttype"
Tindicestype:
2	
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

TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
P
Unique
x"T
y"T
idx"out_idx"	
Ttype"
out_idxtype0:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring 
E
Where

input"T	
index	"%
Ttype0
:
2	

&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.11.02v1.11.0-rc2-4-gc19e29306c8ę

global_step/Initializer/zerosConst*
value	B	 R *
_class
loc:@global_step*
dtype0	*
_output_shapes
: 
k
global_step
VariableV2*
shape: *
dtype0	*
_output_shapes
: *
_class
loc:@global_step

global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
T0	*
_class
loc:@global_step*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
T0	*
_class
loc:@global_step*
_output_shapes
: 
f
PlaceholderPlaceholder*
dtype0*#
_output_shapes
:’’’’’’’’’*
shape:’’’’’’’’’
h
Placeholder_1Placeholder*
dtype0*#
_output_shapes
:’’’’’’’’’*
shape:’’’’’’’’’
h
Placeholder_2Placeholder*
shape:’’’’’’’’’*
dtype0*#
_output_shapes
:’’’’’’’’’
h
Placeholder_3Placeholder*#
_output_shapes
:’’’’’’’’’*
shape:’’’’’’’’’*
dtype0
h
Placeholder_4Placeholder*
dtype0*#
_output_shapes
:’’’’’’’’’*
shape:’’’’’’’’’
h
Placeholder_5Placeholder*
shape:’’’’’’’’’*
dtype0*#
_output_shapes
:’’’’’’’’’
h
Placeholder_6Placeholder*
dtype0*#
_output_shapes
:’’’’’’’’’*
shape:’’’’’’’’’
h
Placeholder_7Placeholder*
dtype0*#
_output_shapes
:’’’’’’’’’*
shape:’’’’’’’’’
h
Placeholder_8Placeholder*#
_output_shapes
:’’’’’’’’’*
shape:’’’’’’’’’*
dtype0
r
key_value_init/keysConst*+
value"B BfBeBdBsBaBrBwBk*
dtype0*
_output_shapes
:
|
key_value_init/valuesConst*
_output_shapes
:*3
value*B(Ba1Ba2Ba2Ba3Ba1Ba4Ba5Ba5*
dtype0
U

hash_tableHashTableV2*
	key_dtype0*
value_dtype0*
_output_shapes
: 
R
hash_table/ConstConst*
value	B B-*
dtype0*
_output_shapes
: 
s
key_value_initInitializeTableV2
hash_tablekey_value_init/keyskey_value_init/values*

Tkey0*

Tval0
t
key_value_init_1/keysConst*
dtype0*
_output_shapes
:*+
value"B BfBeBdBsBaBrBwBk
~
key_value_init_1/valuesConst*3
value*B(Bb1Bb4Bb2Bb8Bb3Bb5Bb7Bb7*
dtype0*
_output_shapes
:
W
hash_table_1HashTableV2*
value_dtype0*
_output_shapes
: *
	key_dtype0
T
hash_table_1/ConstConst*
dtype0*
_output_shapes
: *
value	B B-
{
key_value_init_1InitializeTableV2hash_table_1key_value_init_1/keyskey_value_init_1/values*

Tkey0*

Tval0

hash_table_LookupLookupTableFindV2
hash_tablePlaceholder_5hash_table/Const*	
Tin0*#
_output_shapes
:’’’’’’’’’*

Tout0

hash_table_1_LookupLookupTableFindV2hash_table_1Placeholder_5hash_table_1/Const*	
Tin0*#
_output_shapes
:’’’’’’’’’*

Tout0
t
key_value_init_2/keysConst*
dtype0*
_output_shapes
:*+
value"B BfBeBdBsBaBrBwBk
~
key_value_init_2/valuesConst*3
value*B(Ba1Ba2Ba2Ba3Ba1Ba4Ba5Ba5*
dtype0*
_output_shapes
:
W
hash_table_2HashTableV2*
value_dtype0*
_output_shapes
: *
	key_dtype0
T
hash_table_2/ConstConst*
value	B B-*
dtype0*
_output_shapes
: 
{
key_value_init_2InitializeTableV2hash_table_2key_value_init_2/keyskey_value_init_2/values*

Tkey0*

Tval0
t
key_value_init_3/keysConst*+
value"B BfBeBdBsBaBrBwBk*
dtype0*
_output_shapes
:
~
key_value_init_3/valuesConst*3
value*B(Bb1Bb4Bb2Bb8Bb3Bb5Bb7Bb7*
dtype0*
_output_shapes
:
W
hash_table_3HashTableV2*
	key_dtype0*
value_dtype0*
_output_shapes
: 
T
hash_table_3/ConstConst*
value	B B-*
dtype0*
_output_shapes
: 
{
key_value_init_3InitializeTableV2hash_table_3key_value_init_3/keyskey_value_init_3/values*

Tkey0*

Tval0

hash_table_2_LookupLookupTableFindV2hash_table_2Placeholder_6hash_table_2/Const*	
Tin0*#
_output_shapes
:’’’’’’’’’*

Tout0

hash_table_3_LookupLookupTableFindV2hash_table_3Placeholder_6hash_table_3/Const*	
Tin0*#
_output_shapes
:’’’’’’’’’*

Tout0
j
input_layer/col1/ExpandDims/dimConst*
valueB :
’’’’’’’’’*
dtype0*
_output_shapes
: 

input_layer/col1/ExpandDims
ExpandDimsPlaceholderinput_layer/col1/ExpandDims/dim*
T0*'
_output_shapes
:’’’’’’’’’
a
input_layer/col1/ShapeShapeinput_layer/col1/ExpandDims*
T0*
_output_shapes
:
n
$input_layer/col1/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
p
&input_layer/col1/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
p
&input_layer/col1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

input_layer/col1/strided_sliceStridedSliceinput_layer/col1/Shape$input_layer/col1/strided_slice/stack&input_layer/col1/strided_slice/stack_1&input_layer/col1/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
_output_shapes
: 
b
 input_layer/col1/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 

input_layer/col1/Reshape/shapePackinput_layer/col1/strided_slice input_layer/col1/Reshape/shape/1*
T0*
N*
_output_shapes
:

input_layer/col1/ReshapeReshapeinput_layer/col1/ExpandDimsinput_layer/col1/Reshape/shape*
T0*'
_output_shapes
:’’’’’’’’’
j
input_layer/col3/ExpandDims/dimConst*
valueB :
’’’’’’’’’*
dtype0*
_output_shapes
: 

input_layer/col3/ExpandDims
ExpandDimsPlaceholder_2input_layer/col3/ExpandDims/dim*
T0*'
_output_shapes
:’’’’’’’’’
a
input_layer/col3/ShapeShapeinput_layer/col3/ExpandDims*
_output_shapes
:*
T0
n
$input_layer/col3/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
p
&input_layer/col3/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
p
&input_layer/col3/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

input_layer/col3/strided_sliceStridedSliceinput_layer/col3/Shape$input_layer/col3/strided_slice/stack&input_layer/col3/strided_slice/stack_1&input_layer/col3/strided_slice/stack_2*
shrink_axis_mask*
_output_shapes
: *
T0*
Index0
b
 input_layer/col3/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 

input_layer/col3/Reshape/shapePackinput_layer/col3/strided_slice input_layer/col3/Reshape/shape/1*
T0*
N*
_output_shapes
:

input_layer/col3/ReshapeReshapeinput_layer/col3/ExpandDimsinput_layer/col3/Reshape/shape*
T0*'
_output_shapes
:’’’’’’’’’
j
input_layer/col5/ExpandDims/dimConst*
_output_shapes
: *
valueB :
’’’’’’’’’*
dtype0

input_layer/col5/ExpandDims
ExpandDimsPlaceholder_4input_layer/col5/ExpandDims/dim*
T0*'
_output_shapes
:’’’’’’’’’
a
input_layer/col5/ShapeShapeinput_layer/col5/ExpandDims*
_output_shapes
:*
T0
n
$input_layer/col5/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
p
&input_layer/col5/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
p
&input_layer/col5/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0

input_layer/col5/strided_sliceStridedSliceinput_layer/col5/Shape$input_layer/col5/strided_slice/stack&input_layer/col5/strided_slice/stack_1&input_layer/col5/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
_output_shapes
: 
b
 input_layer/col5/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 

input_layer/col5/Reshape/shapePackinput_layer/col5/strided_slice input_layer/col5/Reshape/shape/1*
N*
_output_shapes
:*
T0

input_layer/col5/ReshapeReshapeinput_layer/col5/ExpandDimsinput_layer/col5/Reshape/shape*
T0*'
_output_shapes
:’’’’’’’’’
Y
input_layer/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
Ą
input_layer/concatConcatV2input_layer/col1/Reshapeinput_layer/col3/Reshapeinput_layer/col5/Reshapeinput_layer/concat/axis*
N*'
_output_shapes
:’’’’’’’’’*
T0
l
!input_layer_1/col1/ExpandDims/dimConst*
valueB :
’’’’’’’’’*
dtype0*
_output_shapes
: 

input_layer_1/col1/ExpandDims
ExpandDimsPlaceholder!input_layer_1/col1/ExpandDims/dim*
T0*'
_output_shapes
:’’’’’’’’’
e
input_layer_1/col1/ShapeShapeinput_layer_1/col1/ExpandDims*
T0*
_output_shapes
:
p
&input_layer_1/col1/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
r
(input_layer_1/col1/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
r
(input_layer_1/col1/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:

 input_layer_1/col1/strided_sliceStridedSliceinput_layer_1/col1/Shape&input_layer_1/col1/strided_slice/stack(input_layer_1/col1/strided_slice/stack_1(input_layer_1/col1/strided_slice/stack_2*
shrink_axis_mask*
_output_shapes
: *
T0*
Index0
d
"input_layer_1/col1/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 

 input_layer_1/col1/Reshape/shapePack input_layer_1/col1/strided_slice"input_layer_1/col1/Reshape/shape/1*
_output_shapes
:*
T0*
N

input_layer_1/col1/ReshapeReshapeinput_layer_1/col1/ExpandDims input_layer_1/col1/Reshape/shape*
T0*'
_output_shapes
:’’’’’’’’’
a
input_layer_1/concat/concat_dimConst*
value	B :*
dtype0*
_output_shapes
: 
n
input_layer_1/concatIdentityinput_layer_1/col1/Reshape*
T0*'
_output_shapes
:’’’’’’’’’
l
!input_layer_2/col3/ExpandDims/dimConst*
valueB :
’’’’’’’’’*
dtype0*
_output_shapes
: 

input_layer_2/col3/ExpandDims
ExpandDimsPlaceholder_2!input_layer_2/col3/ExpandDims/dim*
T0*'
_output_shapes
:’’’’’’’’’
e
input_layer_2/col3/ShapeShapeinput_layer_2/col3/ExpandDims*
_output_shapes
:*
T0
p
&input_layer_2/col3/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
r
(input_layer_2/col3/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
r
(input_layer_2/col3/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

 input_layer_2/col3/strided_sliceStridedSliceinput_layer_2/col3/Shape&input_layer_2/col3/strided_slice/stack(input_layer_2/col3/strided_slice/stack_1(input_layer_2/col3/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*
_output_shapes
: 
d
"input_layer_2/col3/Reshape/shape/1Const*
dtype0*
_output_shapes
: *
value	B :

 input_layer_2/col3/Reshape/shapePack input_layer_2/col3/strided_slice"input_layer_2/col3/Reshape/shape/1*
T0*
N*
_output_shapes
:

input_layer_2/col3/ReshapeReshapeinput_layer_2/col3/ExpandDims input_layer_2/col3/Reshape/shape*
T0*'
_output_shapes
:’’’’’’’’’
a
input_layer_2/concat/concat_dimConst*
value	B :*
dtype0*
_output_shapes
: 
n
input_layer_2/concatIdentityinput_layer_2/col3/Reshape*
T0*'
_output_shapes
:’’’’’’’’’
l
!input_layer_3/col5/ExpandDims/dimConst*
_output_shapes
: *
valueB :
’’’’’’’’’*
dtype0

input_layer_3/col5/ExpandDims
ExpandDimsPlaceholder_4!input_layer_3/col5/ExpandDims/dim*'
_output_shapes
:’’’’’’’’’*
T0
e
input_layer_3/col5/ShapeShapeinput_layer_3/col5/ExpandDims*
T0*
_output_shapes
:
p
&input_layer_3/col5/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
r
(input_layer_3/col5/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
r
(input_layer_3/col5/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0

 input_layer_3/col5/strided_sliceStridedSliceinput_layer_3/col5/Shape&input_layer_3/col5/strided_slice/stack(input_layer_3/col5/strided_slice/stack_1(input_layer_3/col5/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*
_output_shapes
: 
d
"input_layer_3/col5/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 

 input_layer_3/col5/Reshape/shapePack input_layer_3/col5/strided_slice"input_layer_3/col5/Reshape/shape/1*
T0*
N*
_output_shapes
:

input_layer_3/col5/ReshapeReshapeinput_layer_3/col5/ExpandDims input_layer_3/col5/Reshape/shape*
T0*'
_output_shapes
:’’’’’’’’’
a
input_layer_3/concat/concat_dimConst*
value	B :*
dtype0*
_output_shapes
: 
n
input_layer_3/concatIdentityinput_layer_3/col5/Reshape*'
_output_shapes
:’’’’’’’’’*
T0
w
,input_layer_4/col2_bucketized/ExpandDims/dimConst*
valueB :
’’’’’’’’’*
dtype0*
_output_shapes
: 
„
(input_layer_4/col2_bucketized/ExpandDims
ExpandDimsPlaceholder_1,input_layer_4/col2_bucketized/ExpandDims/dim*
T0*'
_output_shapes
:’’’’’’’’’
°
'input_layer_4/col2_bucketized/Bucketize	Bucketize(input_layer_4/col2_bucketized/ExpandDims*'
_output_shapes
:’’’’’’’’’*
T0*

boundaries
"       @   A

%input_layer_4/col2_bucketized/ToInt64Cast'input_layer_4/col2_bucketized/Bucketize*

DstT0	*'
_output_shapes
:’’’’’’’’’*

SrcT0
p
+input_layer_4/col2_bucketized/one_hot/ConstConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
r
-input_layer_4/col2_bucketized/one_hot/Const_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
m
+input_layer_4/col2_bucketized/one_hot/depthConst*
dtype0*
_output_shapes
: *
value	B :
s
.input_layer_4/col2_bucketized/one_hot/on_valueConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
t
/input_layer_4/col2_bucketized/one_hot/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 

%input_layer_4/col2_bucketized/one_hotOneHot%input_layer_4/col2_bucketized/ToInt64+input_layer_4/col2_bucketized/one_hot/depth.input_layer_4/col2_bucketized/one_hot/on_value/input_layer_4/col2_bucketized/one_hot/off_value*+
_output_shapes
:’’’’’’’’’*
T0
x
#input_layer_4/col2_bucketized/ShapeShape%input_layer_4/col2_bucketized/one_hot*
_output_shapes
:*
T0
{
1input_layer_4/col2_bucketized/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0
}
3input_layer_4/col2_bucketized/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
}
3input_layer_4/col2_bucketized/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ć
+input_layer_4/col2_bucketized/strided_sliceStridedSlice#input_layer_4/col2_bucketized/Shape1input_layer_4/col2_bucketized/strided_slice/stack3input_layer_4/col2_bucketized/strided_slice/stack_13input_layer_4/col2_bucketized/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*
_output_shapes
: 
o
-input_layer_4/col2_bucketized/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
½
+input_layer_4/col2_bucketized/Reshape/shapePack+input_layer_4/col2_bucketized/strided_slice-input_layer_4/col2_bucketized/Reshape/shape/1*
T0*
N*
_output_shapes
:
¶
%input_layer_4/col2_bucketized/ReshapeReshape%input_layer_4/col2_bucketized/one_hot+input_layer_4/col2_bucketized/Reshape/shape*
T0*'
_output_shapes
:’’’’’’’’’
a
input_layer_4/concat/concat_dimConst*
dtype0*
_output_shapes
: *
value	B :
y
input_layer_4/concatIdentity%input_layer_4/col2_bucketized/Reshape*'
_output_shapes
:’’’’’’’’’*
T0
w
,input_layer_5/col2_bucketized/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
valueB :
’’’’’’’’’
„
(input_layer_5/col2_bucketized/ExpandDims
ExpandDimsPlaceholder_1,input_layer_5/col2_bucketized/ExpandDims/dim*
T0*'
_output_shapes
:’’’’’’’’’
°
'input_layer_5/col2_bucketized/Bucketize	Bucketize(input_layer_5/col2_bucketized/ExpandDims*'
_output_shapes
:’’’’’’’’’*
T0*

boundaries
"       @   A

%input_layer_5/col2_bucketized/ToInt64Cast'input_layer_5/col2_bucketized/Bucketize*

DstT0	*'
_output_shapes
:’’’’’’’’’*

SrcT0
p
+input_layer_5/col2_bucketized/one_hot/ConstConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
r
-input_layer_5/col2_bucketized/one_hot/Const_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
m
+input_layer_5/col2_bucketized/one_hot/depthConst*
dtype0*
_output_shapes
: *
value	B :
s
.input_layer_5/col2_bucketized/one_hot/on_valueConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
t
/input_layer_5/col2_bucketized/one_hot/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 

%input_layer_5/col2_bucketized/one_hotOneHot%input_layer_5/col2_bucketized/ToInt64+input_layer_5/col2_bucketized/one_hot/depth.input_layer_5/col2_bucketized/one_hot/on_value/input_layer_5/col2_bucketized/one_hot/off_value*
T0*+
_output_shapes
:’’’’’’’’’
x
#input_layer_5/col2_bucketized/ShapeShape%input_layer_5/col2_bucketized/one_hot*
_output_shapes
:*
T0
{
1input_layer_5/col2_bucketized/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
}
3input_layer_5/col2_bucketized/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
}
3input_layer_5/col2_bucketized/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Ć
+input_layer_5/col2_bucketized/strided_sliceStridedSlice#input_layer_5/col2_bucketized/Shape1input_layer_5/col2_bucketized/strided_slice/stack3input_layer_5/col2_bucketized/strided_slice/stack_13input_layer_5/col2_bucketized/strided_slice/stack_2*
shrink_axis_mask*
_output_shapes
: *
T0*
Index0
o
-input_layer_5/col2_bucketized/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
½
+input_layer_5/col2_bucketized/Reshape/shapePack+input_layer_5/col2_bucketized/strided_slice-input_layer_5/col2_bucketized/Reshape/shape/1*
T0*
N*
_output_shapes
:
¶
%input_layer_5/col2_bucketized/ReshapeReshape%input_layer_5/col2_bucketized/one_hot+input_layer_5/col2_bucketized/Reshape/shape*
T0*'
_output_shapes
:’’’’’’’’’
a
input_layer_5/concat/concat_dimConst*
dtype0*
_output_shapes
: *
value	B :
y
input_layer_5/concatIdentity%input_layer_5/col2_bucketized/Reshape*
T0*'
_output_shapes
:’’’’’’’’’
v
+input_layer_6/col4_embedding/ExpandDims/dimConst*
valueB :
’’’’’’’’’*
dtype0*
_output_shapes
: 
£
'input_layer_6/col4_embedding/ExpandDims
ExpandDimsPlaceholder_3+input_layer_6/col4_embedding/ExpandDims/dim*'
_output_shapes
:’’’’’’’’’*
T0
|
;input_layer_6/col4_embedding/to_sparse_input/ignore_value/xConst*
valueB B *
dtype0*
_output_shapes
: 
Ł
5input_layer_6/col4_embedding/to_sparse_input/NotEqualNotEqual'input_layer_6/col4_embedding/ExpandDims;input_layer_6/col4_embedding/to_sparse_input/ignore_value/x*
T0*'
_output_shapes
:’’’’’’’’’

4input_layer_6/col4_embedding/to_sparse_input/indicesWhere5input_layer_6/col4_embedding/to_sparse_input/NotEqual*'
_output_shapes
:’’’’’’’’’
ā
3input_layer_6/col4_embedding/to_sparse_input/valuesGatherNd'input_layer_6/col4_embedding/ExpandDims4input_layer_6/col4_embedding/to_sparse_input/indices*
Tindices0	*
Tparams0*#
_output_shapes
:’’’’’’’’’

8input_layer_6/col4_embedding/to_sparse_input/dense_shapeShape'input_layer_6/col4_embedding/ExpandDims*
T0*
out_type0	*
_output_shapes
:
Ę
3input_layer_6/col4_embedding/col4_lookup/hash_tableHashTableV2*
value_dtype0	*
_output_shapes
: *F
shared_name75hash_table_../data/vocabulary/vocabulary_col4_4_-2_-1*
	key_dtype0

9input_layer_6/col4_embedding/col4_lookup/hash_table/ConstConst*
valueB	 R
’’’’’’’’’*
dtype0	*
_output_shapes
: 
°
Minput_layer_6/col4_embedding/col4_lookup/hash_table/table_init/asset_filepathConst*3
value*B( B"../data/vocabulary/vocabulary_col4*
dtype0*
_output_shapes
: 
«
>input_layer_6/col4_embedding/col4_lookup/hash_table/table_initInitializeTableFromTextFileV23input_layer_6/col4_embedding/col4_lookup/hash_tableMinput_layer_6/col4_embedding/col4_lookup/hash_table/table_init/asset_filepath*
	key_indexž’’’’’’’’*
value_index’’’’’’’’’*

vocab_size
¤
.input_layer_6/col4_embedding/hash_table_LookupLookupTableFindV23input_layer_6/col4_embedding/col4_lookup/hash_table3input_layer_6/col4_embedding/to_sparse_input/values9input_layer_6/col4_embedding/col4_lookup/hash_table/Const*	
Tin0*#
_output_shapes
:’’’’’’’’’*

Tout0	
å
Qinput_layer_6/col4_embedding/embedding_weights/Initializer/truncated_normal/shapeConst*
valueB"      *A
_class7
53loc:@input_layer_6/col4_embedding/embedding_weights*
dtype0*
_output_shapes
:
Ų
Pinput_layer_6/col4_embedding/embedding_weights/Initializer/truncated_normal/meanConst*
valueB
 *    *A
_class7
53loc:@input_layer_6/col4_embedding/embedding_weights*
dtype0*
_output_shapes
: 
Ś
Rinput_layer_6/col4_embedding/embedding_weights/Initializer/truncated_normal/stddevConst*
valueB
 *   ?*A
_class7
53loc:@input_layer_6/col4_embedding/embedding_weights*
dtype0*
_output_shapes
: 
ŗ
[input_layer_6/col4_embedding/embedding_weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalQinput_layer_6/col4_embedding/embedding_weights/Initializer/truncated_normal/shape*
dtype0*
_output_shapes

:*
T0*A
_class7
53loc:@input_layer_6/col4_embedding/embedding_weights
ó
Oinput_layer_6/col4_embedding/embedding_weights/Initializer/truncated_normal/mulMul[input_layer_6/col4_embedding/embedding_weights/Initializer/truncated_normal/TruncatedNormalRinput_layer_6/col4_embedding/embedding_weights/Initializer/truncated_normal/stddev*
T0*A
_class7
53loc:@input_layer_6/col4_embedding/embedding_weights*
_output_shapes

:
į
Kinput_layer_6/col4_embedding/embedding_weights/Initializer/truncated_normalAddOinput_layer_6/col4_embedding/embedding_weights/Initializer/truncated_normal/mulPinput_layer_6/col4_embedding/embedding_weights/Initializer/truncated_normal/mean*
_output_shapes

:*
T0*A
_class7
53loc:@input_layer_6/col4_embedding/embedding_weights
Į
.input_layer_6/col4_embedding/embedding_weights
VariableV2*
dtype0*
_output_shapes

:*A
_class7
53loc:@input_layer_6/col4_embedding/embedding_weights*
shape
:
Ø
5input_layer_6/col4_embedding/embedding_weights/AssignAssign.input_layer_6/col4_embedding/embedding_weightsKinput_layer_6/col4_embedding/embedding_weights/Initializer/truncated_normal*
T0*A
_class7
53loc:@input_layer_6/col4_embedding/embedding_weights*
_output_shapes

:
Ū
3input_layer_6/col4_embedding/embedding_weights/readIdentity.input_layer_6/col4_embedding/embedding_weights*
_output_shapes

:*
T0*A
_class7
53loc:@input_layer_6/col4_embedding/embedding_weights

?input_layer_6/col4_embedding/col4_embedding_weights/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:

>input_layer_6/col4_embedding/col4_embedding_weights/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
Æ
9input_layer_6/col4_embedding/col4_embedding_weights/SliceSlice8input_layer_6/col4_embedding/to_sparse_input/dense_shape?input_layer_6/col4_embedding/col4_embedding_weights/Slice/begin>input_layer_6/col4_embedding/col4_embedding_weights/Slice/size*
T0	*
Index0*
_output_shapes
:

9input_layer_6/col4_embedding/col4_embedding_weights/ConstConst*
valueB: *
dtype0*
_output_shapes
:
×
8input_layer_6/col4_embedding/col4_embedding_weights/ProdProd9input_layer_6/col4_embedding/col4_embedding_weights/Slice9input_layer_6/col4_embedding/col4_embedding_weights/Const*
_output_shapes
: *
T0	

Dinput_layer_6/col4_embedding/col4_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
value	B :*
dtype0

Ainput_layer_6/col4_embedding/col4_embedding_weights/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ļ
<input_layer_6/col4_embedding/col4_embedding_weights/GatherV2GatherV28input_layer_6/col4_embedding/to_sparse_input/dense_shapeDinput_layer_6/col4_embedding/col4_embedding_weights/GatherV2/indicesAinput_layer_6/col4_embedding/col4_embedding_weights/GatherV2/axis*
_output_shapes
: *
Taxis0*
Tindices0*
Tparams0	
č
:input_layer_6/col4_embedding/col4_embedding_weights/Cast/xPack8input_layer_6/col4_embedding/col4_embedding_weights/Prod<input_layer_6/col4_embedding/col4_embedding_weights/GatherV2*
_output_shapes
:*
T0	*
N
­
Ainput_layer_6/col4_embedding/col4_embedding_weights/SparseReshapeSparseReshape4input_layer_6/col4_embedding/to_sparse_input/indices8input_layer_6/col4_embedding/to_sparse_input/dense_shape:input_layer_6/col4_embedding/col4_embedding_weights/Cast/x*-
_output_shapes
:’’’’’’’’’:
“
Jinput_layer_6/col4_embedding/col4_embedding_weights/SparseReshape/IdentityIdentity.input_layer_6/col4_embedding/hash_table_Lookup*
T0	*#
_output_shapes
:’’’’’’’’’

Binput_layer_6/col4_embedding/col4_embedding_weights/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 

@input_layer_6/col4_embedding/col4_embedding_weights/GreaterEqualGreaterEqualJinput_layer_6/col4_embedding/col4_embedding_weights/SparseReshape/IdentityBinput_layer_6/col4_embedding/col4_embedding_weights/GreaterEqual/y*#
_output_shapes
:’’’’’’’’’*
T0	
­
9input_layer_6/col4_embedding/col4_embedding_weights/WhereWhere@input_layer_6/col4_embedding/col4_embedding_weights/GreaterEqual*'
_output_shapes
:’’’’’’’’’

Ainput_layer_6/col4_embedding/col4_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
valueB:
’’’’’’’’’*
dtype0
ņ
;input_layer_6/col4_embedding/col4_embedding_weights/ReshapeReshape9input_layer_6/col4_embedding/col4_embedding_weights/WhereAinput_layer_6/col4_embedding/col4_embedding_weights/Reshape/shape*
T0	*#
_output_shapes
:’’’’’’’’’

Cinput_layer_6/col4_embedding/col4_embedding_weights/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ä
>input_layer_6/col4_embedding/col4_embedding_weights/GatherV2_1GatherV2Ainput_layer_6/col4_embedding/col4_embedding_weights/SparseReshape;input_layer_6/col4_embedding/col4_embedding_weights/ReshapeCinput_layer_6/col4_embedding/col4_embedding_weights/GatherV2_1/axis*'
_output_shapes
:’’’’’’’’’*
Taxis0*
Tindices0	*
Tparams0	

Cinput_layer_6/col4_embedding/col4_embedding_weights/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
é
>input_layer_6/col4_embedding/col4_embedding_weights/GatherV2_2GatherV2Jinput_layer_6/col4_embedding/col4_embedding_weights/SparseReshape/Identity;input_layer_6/col4_embedding/col4_embedding_weights/ReshapeCinput_layer_6/col4_embedding/col4_embedding_weights/GatherV2_2/axis*
Tindices0	*
Tparams0	*#
_output_shapes
:’’’’’’’’’*
Taxis0
²
<input_layer_6/col4_embedding/col4_embedding_weights/IdentityIdentityCinput_layer_6/col4_embedding/col4_embedding_weights/SparseReshape:1*
_output_shapes
:*
T0	

Minput_layer_6/col4_embedding/col4_embedding_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
value	B	 R *
dtype0	
Ž
[input_layer_6/col4_embedding/col4_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows>input_layer_6/col4_embedding/col4_embedding_weights/GatherV2_1>input_layer_6/col4_embedding/col4_embedding_weights/GatherV2_2<input_layer_6/col4_embedding/col4_embedding_weights/IdentityMinput_layer_6/col4_embedding/col4_embedding_weights/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’
°
_input_layer_6/col4_embedding/col4_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
²
ainput_layer_6/col4_embedding/col4_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
²
ainput_layer_6/col4_embedding/col4_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
ā
Yinput_layer_6/col4_embedding/col4_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlice[input_layer_6/col4_embedding/col4_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows_input_layer_6/col4_embedding/col4_embedding_weights/embedding_lookup_sparse/strided_slice/stackainput_layer_6/col4_embedding/col4_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1ainput_layer_6/col4_embedding/col4_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2*
shrink_axis_mask*

begin_mask*
end_mask*#
_output_shapes
:’’’’’’’’’*
Index0*
T0	
š
Pinput_layer_6/col4_embedding/col4_embedding_weights/embedding_lookup_sparse/CastCastYinput_layer_6/col4_embedding/col4_embedding_weights/embedding_lookup_sparse/strided_slice*

SrcT0	*

DstT0*#
_output_shapes
:’’’’’’’’’
ų
Rinput_layer_6/col4_embedding/col4_embedding_weights/embedding_lookup_sparse/UniqueUnique]input_layer_6/col4_embedding/col4_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
ę
ainput_layer_6/col4_embedding/col4_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*
dtype0*
_output_shapes
: *
value	B : *A
_class7
53loc:@input_layer_6/col4_embedding/embedding_weights
ģ
\input_layer_6/col4_embedding/col4_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV23input_layer_6/col4_embedding/embedding_weights/readRinput_layer_6/col4_embedding/col4_embedding_weights/embedding_lookup_sparse/Uniqueainput_layer_6/col4_embedding/col4_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis*
Taxis0*
Tindices0	*
Tparams0*A
_class7
53loc:@input_layer_6/col4_embedding/embedding_weights*'
_output_shapes
:’’’’’’’’’

einput_layer_6/col4_embedding/col4_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentity\input_layer_6/col4_embedding/col4_embedding_weights/embedding_lookup_sparse/embedding_lookup*'
_output_shapes
:’’’’’’’’’*
T0
”
Kinput_layer_6/col4_embedding/col4_embedding_weights/embedding_lookup_sparseSparseSegmentMeaneinput_layer_6/col4_embedding/col4_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityTinput_layer_6/col4_embedding/col4_embedding_weights/embedding_lookup_sparse/Unique:1Pinput_layer_6/col4_embedding/col4_embedding_weights/embedding_lookup_sparse/Cast*'
_output_shapes
:’’’’’’’’’*
T0

Cinput_layer_6/col4_embedding/col4_embedding_weights/Reshape_1/shapeConst*
valueB"’’’’   *
dtype0*
_output_shapes
:

=input_layer_6/col4_embedding/col4_embedding_weights/Reshape_1Reshape]input_layer_6/col4_embedding/col4_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:2Cinput_layer_6/col4_embedding/col4_embedding_weights/Reshape_1/shape*
T0
*'
_output_shapes
:’’’’’’’’’
“
9input_layer_6/col4_embedding/col4_embedding_weights/ShapeShapeKinput_layer_6/col4_embedding/col4_embedding_weights/embedding_lookup_sparse*
T0*
_output_shapes
:

Ginput_layer_6/col4_embedding/col4_embedding_weights/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:

Iinput_layer_6/col4_embedding/col4_embedding_weights/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:

Iinput_layer_6/col4_embedding/col4_embedding_weights/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
±
Ainput_layer_6/col4_embedding/col4_embedding_weights/strided_sliceStridedSlice9input_layer_6/col4_embedding/col4_embedding_weights/ShapeGinput_layer_6/col4_embedding/col4_embedding_weights/strided_slice/stackIinput_layer_6/col4_embedding/col4_embedding_weights/strided_slice/stack_1Iinput_layer_6/col4_embedding/col4_embedding_weights/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
_output_shapes
: 
}
;input_layer_6/col4_embedding/col4_embedding_weights/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
ļ
9input_layer_6/col4_embedding/col4_embedding_weights/stackPack;input_layer_6/col4_embedding/col4_embedding_weights/stack/0Ainput_layer_6/col4_embedding/col4_embedding_weights/strided_slice*
T0*
N*
_output_shapes
:
õ
8input_layer_6/col4_embedding/col4_embedding_weights/TileTile=input_layer_6/col4_embedding/col4_embedding_weights/Reshape_19input_layer_6/col4_embedding/col4_embedding_weights/stack*
T0
*0
_output_shapes
:’’’’’’’’’’’’’’’’’’
Ź
>input_layer_6/col4_embedding/col4_embedding_weights/zeros_like	ZerosLikeKinput_layer_6/col4_embedding/col4_embedding_weights/embedding_lookup_sparse*'
_output_shapes
:’’’’’’’’’*
T0
¶
3input_layer_6/col4_embedding/col4_embedding_weightsSelect8input_layer_6/col4_embedding/col4_embedding_weights/Tile>input_layer_6/col4_embedding/col4_embedding_weights/zeros_likeKinput_layer_6/col4_embedding/col4_embedding_weights/embedding_lookup_sparse*'
_output_shapes
:’’’’’’’’’*
T0
°
:input_layer_6/col4_embedding/col4_embedding_weights/Cast_1Cast8input_layer_6/col4_embedding/to_sparse_input/dense_shape*

SrcT0	*

DstT0*
_output_shapes
:

Ainput_layer_6/col4_embedding/col4_embedding_weights/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:

@input_layer_6/col4_embedding/col4_embedding_weights/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
·
;input_layer_6/col4_embedding/col4_embedding_weights/Slice_1Slice:input_layer_6/col4_embedding/col4_embedding_weights/Cast_1Ainput_layer_6/col4_embedding/col4_embedding_weights/Slice_1/begin@input_layer_6/col4_embedding/col4_embedding_weights/Slice_1/size*
_output_shapes
:*
T0*
Index0

;input_layer_6/col4_embedding/col4_embedding_weights/Shape_1Shape3input_layer_6/col4_embedding/col4_embedding_weights*
T0*
_output_shapes
:

Ainput_layer_6/col4_embedding/col4_embedding_weights/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:

@input_layer_6/col4_embedding/col4_embedding_weights/Slice_2/sizeConst*
valueB:
’’’’’’’’’*
dtype0*
_output_shapes
:
ø
;input_layer_6/col4_embedding/col4_embedding_weights/Slice_2Slice;input_layer_6/col4_embedding/col4_embedding_weights/Shape_1Ainput_layer_6/col4_embedding/col4_embedding_weights/Slice_2/begin@input_layer_6/col4_embedding/col4_embedding_weights/Slice_2/size*
T0*
Index0*
_output_shapes
:

?input_layer_6/col4_embedding/col4_embedding_weights/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Æ
:input_layer_6/col4_embedding/col4_embedding_weights/concatConcatV2;input_layer_6/col4_embedding/col4_embedding_weights/Slice_1;input_layer_6/col4_embedding/col4_embedding_weights/Slice_2?input_layer_6/col4_embedding/col4_embedding_weights/concat/axis*
N*
_output_shapes
:*
T0
ė
=input_layer_6/col4_embedding/col4_embedding_weights/Reshape_2Reshape3input_layer_6/col4_embedding/col4_embedding_weights:input_layer_6/col4_embedding/col4_embedding_weights/concat*
T0*'
_output_shapes
:’’’’’’’’’

"input_layer_6/col4_embedding/ShapeShape=input_layer_6/col4_embedding/col4_embedding_weights/Reshape_2*
_output_shapes
:*
T0
z
0input_layer_6/col4_embedding/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
|
2input_layer_6/col4_embedding/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
|
2input_layer_6/col4_embedding/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
¾
*input_layer_6/col4_embedding/strided_sliceStridedSlice"input_layer_6/col4_embedding/Shape0input_layer_6/col4_embedding/strided_slice/stack2input_layer_6/col4_embedding/strided_slice/stack_12input_layer_6/col4_embedding/strided_slice/stack_2*
shrink_axis_mask*
_output_shapes
: *
T0*
Index0
n
,input_layer_6/col4_embedding/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
ŗ
*input_layer_6/col4_embedding/Reshape/shapePack*input_layer_6/col4_embedding/strided_slice,input_layer_6/col4_embedding/Reshape/shape/1*
T0*
N*
_output_shapes
:
Ģ
$input_layer_6/col4_embedding/ReshapeReshape=input_layer_6/col4_embedding/col4_embedding_weights/Reshape_2*input_layer_6/col4_embedding/Reshape/shape*'
_output_shapes
:’’’’’’’’’*
T0
a
input_layer_6/concat/concat_dimConst*
value	B :*
dtype0*
_output_shapes
: 
x
input_layer_6/concatIdentity$input_layer_6/col4_embedding/Reshape*
T0*'
_output_shapes
:’’’’’’’’’

4input_layer_7/col7_extend_1_embedding/ExpandDims/dimConst*
valueB :
’’’’’’’’’*
dtype0*
_output_shapes
: 
»
0input_layer_7/col7_extend_1_embedding/ExpandDims
ExpandDimshash_table_2_Lookup4input_layer_7/col7_extend_1_embedding/ExpandDims/dim*
T0*'
_output_shapes
:’’’’’’’’’

Dinput_layer_7/col7_extend_1_embedding/to_sparse_input/ignore_value/xConst*
dtype0*
_output_shapes
: *
valueB B 
ō
>input_layer_7/col7_extend_1_embedding/to_sparse_input/NotEqualNotEqual0input_layer_7/col7_extend_1_embedding/ExpandDimsDinput_layer_7/col7_extend_1_embedding/to_sparse_input/ignore_value/x*
T0*'
_output_shapes
:’’’’’’’’’
Æ
=input_layer_7/col7_extend_1_embedding/to_sparse_input/indicesWhere>input_layer_7/col7_extend_1_embedding/to_sparse_input/NotEqual*'
_output_shapes
:’’’’’’’’’
ż
<input_layer_7/col7_extend_1_embedding/to_sparse_input/valuesGatherNd0input_layer_7/col7_extend_1_embedding/ExpandDims=input_layer_7/col7_extend_1_embedding/to_sparse_input/indices*#
_output_shapes
:’’’’’’’’’*
Tindices0	*
Tparams0
±
Ainput_layer_7/col7_extend_1_embedding/to_sparse_input/dense_shapeShape0input_layer_7/col7_extend_1_embedding/ExpandDims*
T0*
out_type0	*
_output_shapes
:
Ü
Einput_layer_7/col7_extend_1_embedding/col7_extend_1_lookup/hash_tableHashTableV2*
value_dtype0	*
_output_shapes
: *J
shared_name;9hash_table_../data/vocabulary/vocabulary_extend_1_3_-2_-1*
	key_dtype0

Kinput_layer_7/col7_extend_1_embedding/col7_extend_1_lookup/hash_table/ConstConst*
valueB	 R
’’’’’’’’’*
dtype0	*
_output_shapes
: 
Ę
_input_layer_7/col7_extend_1_embedding/col7_extend_1_lookup/hash_table/table_init/asset_filepathConst*7
value.B, B&../data/vocabulary/vocabulary_extend_1*
dtype0*
_output_shapes
: 
į
Pinput_layer_7/col7_extend_1_embedding/col7_extend_1_lookup/hash_table/table_initInitializeTableFromTextFileV2Einput_layer_7/col7_extend_1_embedding/col7_extend_1_lookup/hash_table_input_layer_7/col7_extend_1_embedding/col7_extend_1_lookup/hash_table/table_init/asset_filepath*
	key_indexž’’’’’’’’*
value_index’’’’’’’’’*

vocab_size
Ś
7input_layer_7/col7_extend_1_embedding/hash_table_LookupLookupTableFindV2Einput_layer_7/col7_extend_1_embedding/col7_extend_1_lookup/hash_table<input_layer_7/col7_extend_1_embedding/to_sparse_input/valuesKinput_layer_7/col7_extend_1_embedding/col7_extend_1_lookup/hash_table/Const*	
Tin0*#
_output_shapes
:’’’’’’’’’*

Tout0	
÷
Zinput_layer_7/col7_extend_1_embedding/embedding_weights/Initializer/truncated_normal/shapeConst*
valueB"      *J
_class@
><loc:@input_layer_7/col7_extend_1_embedding/embedding_weights*
dtype0*
_output_shapes
:
ź
Yinput_layer_7/col7_extend_1_embedding/embedding_weights/Initializer/truncated_normal/meanConst*
valueB
 *    *J
_class@
><loc:@input_layer_7/col7_extend_1_embedding/embedding_weights*
dtype0*
_output_shapes
: 
ģ
[input_layer_7/col7_extend_1_embedding/embedding_weights/Initializer/truncated_normal/stddevConst*
_output_shapes
: *
valueB
 *   ?*J
_class@
><loc:@input_layer_7/col7_extend_1_embedding/embedding_weights*
dtype0
Õ
dinput_layer_7/col7_extend_1_embedding/embedding_weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalZinput_layer_7/col7_extend_1_embedding/embedding_weights/Initializer/truncated_normal/shape*
_output_shapes

:*
T0*J
_class@
><loc:@input_layer_7/col7_extend_1_embedding/embedding_weights*
dtype0

Xinput_layer_7/col7_extend_1_embedding/embedding_weights/Initializer/truncated_normal/mulMuldinput_layer_7/col7_extend_1_embedding/embedding_weights/Initializer/truncated_normal/TruncatedNormal[input_layer_7/col7_extend_1_embedding/embedding_weights/Initializer/truncated_normal/stddev*
T0*J
_class@
><loc:@input_layer_7/col7_extend_1_embedding/embedding_weights*
_output_shapes

:

Tinput_layer_7/col7_extend_1_embedding/embedding_weights/Initializer/truncated_normalAddXinput_layer_7/col7_extend_1_embedding/embedding_weights/Initializer/truncated_normal/mulYinput_layer_7/col7_extend_1_embedding/embedding_weights/Initializer/truncated_normal/mean*
_output_shapes

:*
T0*J
_class@
><loc:@input_layer_7/col7_extend_1_embedding/embedding_weights
Ó
7input_layer_7/col7_extend_1_embedding/embedding_weights
VariableV2*
dtype0*
_output_shapes

:*J
_class@
><loc:@input_layer_7/col7_extend_1_embedding/embedding_weights*
shape
:
Ģ
>input_layer_7/col7_extend_1_embedding/embedding_weights/AssignAssign7input_layer_7/col7_extend_1_embedding/embedding_weightsTinput_layer_7/col7_extend_1_embedding/embedding_weights/Initializer/truncated_normal*
T0*J
_class@
><loc:@input_layer_7/col7_extend_1_embedding/embedding_weights*
_output_shapes

:
ö
<input_layer_7/col7_extend_1_embedding/embedding_weights/readIdentity7input_layer_7/col7_extend_1_embedding/embedding_weights*
T0*J
_class@
><loc:@input_layer_7/col7_extend_1_embedding/embedding_weights*
_output_shapes

:

Qinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/Slice/beginConst*
_output_shapes
:*
valueB: *
dtype0

Pinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
ī
Kinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/SliceSliceAinput_layer_7/col7_extend_1_embedding/to_sparse_input/dense_shapeQinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/Slice/beginPinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/Slice/size*
_output_shapes
:*
T0	*
Index0

Kinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/ConstConst*
valueB: *
dtype0*
_output_shapes
:

Jinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/ProdProdKinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/SliceKinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/Const*
_output_shapes
: *
T0	

Vinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/GatherV2/indicesConst*
dtype0*
_output_shapes
: *
value	B :

Sinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 

Ninput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/GatherV2GatherV2Ainput_layer_7/col7_extend_1_embedding/to_sparse_input/dense_shapeVinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/GatherV2/indicesSinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 

Linput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/Cast/xPackJinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/ProdNinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/GatherV2*
T0	*
N*
_output_shapes
:
ć
Sinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/SparseReshapeSparseReshape=input_layer_7/col7_extend_1_embedding/to_sparse_input/indicesAinput_layer_7/col7_extend_1_embedding/to_sparse_input/dense_shapeLinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/Cast/x*-
_output_shapes
:’’’’’’’’’:
Ļ
\input_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/SparseReshape/IdentityIdentity7input_layer_7/col7_extend_1_embedding/hash_table_Lookup*
T0	*#
_output_shapes
:’’’’’’’’’

Tinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
Ä
Rinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/GreaterEqualGreaterEqual\input_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/SparseReshape/IdentityTinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/GreaterEqual/y*
T0	*#
_output_shapes
:’’’’’’’’’
Ń
Kinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/WhereWhereRinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/GreaterEqual*'
_output_shapes
:’’’’’’’’’
¦
Sinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/Reshape/shapeConst*
valueB:
’’’’’’’’’*
dtype0*
_output_shapes
:
Ø
Minput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/ReshapeReshapeKinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/WhereSinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/Reshape/shape*
T0	*#
_output_shapes
:’’’’’’’’’

Uinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
¬
Pinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/GatherV2_1GatherV2Sinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/SparseReshapeMinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/ReshapeUinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/GatherV2_1/axis*
Tparams0	*'
_output_shapes
:’’’’’’’’’*
Taxis0*
Tindices0	

Uinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
±
Pinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/GatherV2_2GatherV2\input_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/SparseReshape/IdentityMinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/ReshapeUinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/GatherV2_2/axis*
Tparams0	*#
_output_shapes
:’’’’’’’’’*
Taxis0*
Tindices0	
Ö
Ninput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/IdentityIdentityUinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/SparseReshape:1*
_output_shapes
:*
T0	
”
_input_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
ø
minput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsPinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/GatherV2_1Pinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/GatherV2_2Ninput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/Identity_input_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’
Ā
qinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
Ä
sinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
Ä
sinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
¼
kinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSliceminput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsqinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/embedding_lookup_sparse/strided_slice/stacksinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1sinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2*
shrink_axis_mask*

begin_mask*
end_mask*#
_output_shapes
:’’’’’’’’’*
Index0*
T0	

binput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/embedding_lookup_sparse/CastCastkinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/embedding_lookup_sparse/strided_slice*

SrcT0	*

DstT0*#
_output_shapes
:’’’’’’’’’

dinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/embedding_lookup_sparse/UniqueUniqueoinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’

sinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*
value	B : *J
_class@
><loc:@input_layer_7/col7_extend_1_embedding/embedding_weights*
dtype0*
_output_shapes
: 
“
ninput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV2<input_layer_7/col7_extend_1_embedding/embedding_weights/readdinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/embedding_lookup_sparse/Uniquesinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis*'
_output_shapes
:’’’’’’’’’*
Taxis0*
Tindices0	*
Tparams0*J
_class@
><loc:@input_layer_7/col7_extend_1_embedding/embedding_weights
„
winput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentityninput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/embedding_lookup_sparse/embedding_lookup*
T0*'
_output_shapes
:’’’’’’’’’
é
]input_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/embedding_lookup_sparseSparseSegmentMeanwinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identityfinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/embedding_lookup_sparse/Unique:1binput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/embedding_lookup_sparse/Cast*'
_output_shapes
:’’’’’’’’’*
T0
¦
Uinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB"’’’’   
Ō
Oinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/Reshape_1Reshapeoinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:2Uinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/Reshape_1/shape*
T0
*'
_output_shapes
:’’’’’’’’’
Ų
Kinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/ShapeShape]input_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/embedding_lookup_sparse*
T0*
_output_shapes
:
£
Yinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
„
[input_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
„
[input_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

Sinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/strided_sliceStridedSliceKinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/ShapeYinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/strided_slice/stack[input_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/strided_slice/stack_1[input_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/strided_slice/stack_2*
shrink_axis_mask*
_output_shapes
: *
Index0*
T0

Minput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
„
Kinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/stackPackMinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/stack/0Sinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/strided_slice*
N*
_output_shapes
:*
T0
«
Jinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/TileTileOinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/Reshape_1Kinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/stack*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
T0

ī
Pinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/zeros_like	ZerosLike]input_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/embedding_lookup_sparse*'
_output_shapes
:’’’’’’’’’*
T0
ž
Einput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weightsSelectJinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/TilePinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/zeros_like]input_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:’’’’’’’’’
Ė
Linput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/Cast_1CastAinput_layer_7/col7_extend_1_embedding/to_sparse_input/dense_shape*

SrcT0	*

DstT0*
_output_shapes
:

Sinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/Slice_1/beginConst*
dtype0*
_output_shapes
:*
valueB: 

Rinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
’
Minput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/Slice_1SliceLinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/Cast_1Sinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/Slice_1/beginRinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/Slice_1/size*
_output_shapes
:*
T0*
Index0
Ā
Minput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/Shape_1ShapeEinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights*
_output_shapes
:*
T0

Sinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/Slice_2/beginConst*
_output_shapes
:*
valueB:*
dtype0
„
Rinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/Slice_2/sizeConst*
valueB:
’’’’’’’’’*
dtype0*
_output_shapes
:

Minput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/Slice_2SliceMinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/Shape_1Sinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/Slice_2/beginRinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/Slice_2/size*
_output_shapes
:*
T0*
Index0

Qinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/concat/axisConst*
_output_shapes
: *
value	B : *
dtype0
÷
Linput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/concatConcatV2Minput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/Slice_1Minput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/Slice_2Qinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/concat/axis*
N*
_output_shapes
:*
T0
”
Oinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/Reshape_2ReshapeEinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weightsLinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/concat*
T0*'
_output_shapes
:’’’’’’’’’
Ŗ
+input_layer_7/col7_extend_1_embedding/ShapeShapeOinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/Reshape_2*
_output_shapes
:*
T0

9input_layer_7/col7_extend_1_embedding/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

;input_layer_7/col7_extend_1_embedding/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

;input_layer_7/col7_extend_1_embedding/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ė
3input_layer_7/col7_extend_1_embedding/strided_sliceStridedSlice+input_layer_7/col7_extend_1_embedding/Shape9input_layer_7/col7_extend_1_embedding/strided_slice/stack;input_layer_7/col7_extend_1_embedding/strided_slice/stack_1;input_layer_7/col7_extend_1_embedding/strided_slice/stack_2*
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
w
5input_layer_7/col7_extend_1_embedding/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
Õ
3input_layer_7/col7_extend_1_embedding/Reshape/shapePack3input_layer_7/col7_extend_1_embedding/strided_slice5input_layer_7/col7_extend_1_embedding/Reshape/shape/1*
T0*
N*
_output_shapes
:
š
-input_layer_7/col7_extend_1_embedding/ReshapeReshapeOinput_layer_7/col7_extend_1_embedding/col7_extend_1_embedding_weights/Reshape_23input_layer_7/col7_extend_1_embedding/Reshape/shape*
T0*'
_output_shapes
:’’’’’’’’’
a
input_layer_7/concat/concat_dimConst*
value	B :*
dtype0*
_output_shapes
: 

input_layer_7/concatIdentity-input_layer_7/col7_extend_1_embedding/Reshape*
T0*'
_output_shapes
:’’’’’’’’’

4input_layer_8/col7_extend_2_embedding/ExpandDims/dimConst*
valueB :
’’’’’’’’’*
dtype0*
_output_shapes
: 
»
0input_layer_8/col7_extend_2_embedding/ExpandDims
ExpandDimshash_table_3_Lookup4input_layer_8/col7_extend_2_embedding/ExpandDims/dim*
T0*'
_output_shapes
:’’’’’’’’’

Dinput_layer_8/col7_extend_2_embedding/to_sparse_input/ignore_value/xConst*
valueB B *
dtype0*
_output_shapes
: 
ō
>input_layer_8/col7_extend_2_embedding/to_sparse_input/NotEqualNotEqual0input_layer_8/col7_extend_2_embedding/ExpandDimsDinput_layer_8/col7_extend_2_embedding/to_sparse_input/ignore_value/x*
T0*'
_output_shapes
:’’’’’’’’’
Æ
=input_layer_8/col7_extend_2_embedding/to_sparse_input/indicesWhere>input_layer_8/col7_extend_2_embedding/to_sparse_input/NotEqual*'
_output_shapes
:’’’’’’’’’
ż
<input_layer_8/col7_extend_2_embedding/to_sparse_input/valuesGatherNd0input_layer_8/col7_extend_2_embedding/ExpandDims=input_layer_8/col7_extend_2_embedding/to_sparse_input/indices*#
_output_shapes
:’’’’’’’’’*
Tindices0	*
Tparams0
±
Ainput_layer_8/col7_extend_2_embedding/to_sparse_input/dense_shapeShape0input_layer_8/col7_extend_2_embedding/ExpandDims*
T0*
out_type0	*
_output_shapes
:
Ü
Einput_layer_8/col7_extend_2_embedding/col7_extend_2_lookup/hash_tableHashTableV2*
value_dtype0	*
_output_shapes
: *J
shared_name;9hash_table_../data/vocabulary/vocabulary_extend_2_5_-2_-1*
	key_dtype0

Kinput_layer_8/col7_extend_2_embedding/col7_extend_2_lookup/hash_table/ConstConst*
valueB	 R
’’’’’’’’’*
dtype0	*
_output_shapes
: 
Ę
_input_layer_8/col7_extend_2_embedding/col7_extend_2_lookup/hash_table/table_init/asset_filepathConst*7
value.B, B&../data/vocabulary/vocabulary_extend_2*
dtype0*
_output_shapes
: 
į
Pinput_layer_8/col7_extend_2_embedding/col7_extend_2_lookup/hash_table/table_initInitializeTableFromTextFileV2Einput_layer_8/col7_extend_2_embedding/col7_extend_2_lookup/hash_table_input_layer_8/col7_extend_2_embedding/col7_extend_2_lookup/hash_table/table_init/asset_filepath*
	key_indexž’’’’’’’’*
value_index’’’’’’’’’*

vocab_size
Ś
7input_layer_8/col7_extend_2_embedding/hash_table_LookupLookupTableFindV2Einput_layer_8/col7_extend_2_embedding/col7_extend_2_lookup/hash_table<input_layer_8/col7_extend_2_embedding/to_sparse_input/valuesKinput_layer_8/col7_extend_2_embedding/col7_extend_2_lookup/hash_table/Const*	
Tin0*#
_output_shapes
:’’’’’’’’’*

Tout0	
÷
Zinput_layer_8/col7_extend_2_embedding/embedding_weights/Initializer/truncated_normal/shapeConst*
valueB"      *J
_class@
><loc:@input_layer_8/col7_extend_2_embedding/embedding_weights*
dtype0*
_output_shapes
:
ź
Yinput_layer_8/col7_extend_2_embedding/embedding_weights/Initializer/truncated_normal/meanConst*
_output_shapes
: *
valueB
 *    *J
_class@
><loc:@input_layer_8/col7_extend_2_embedding/embedding_weights*
dtype0
ģ
[input_layer_8/col7_extend_2_embedding/embedding_weights/Initializer/truncated_normal/stddevConst*
valueB
 *   ?*J
_class@
><loc:@input_layer_8/col7_extend_2_embedding/embedding_weights*
dtype0*
_output_shapes
: 
Õ
dinput_layer_8/col7_extend_2_embedding/embedding_weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalZinput_layer_8/col7_extend_2_embedding/embedding_weights/Initializer/truncated_normal/shape*
dtype0*
_output_shapes

:*
T0*J
_class@
><loc:@input_layer_8/col7_extend_2_embedding/embedding_weights

Xinput_layer_8/col7_extend_2_embedding/embedding_weights/Initializer/truncated_normal/mulMuldinput_layer_8/col7_extend_2_embedding/embedding_weights/Initializer/truncated_normal/TruncatedNormal[input_layer_8/col7_extend_2_embedding/embedding_weights/Initializer/truncated_normal/stddev*J
_class@
><loc:@input_layer_8/col7_extend_2_embedding/embedding_weights*
_output_shapes

:*
T0

Tinput_layer_8/col7_extend_2_embedding/embedding_weights/Initializer/truncated_normalAddXinput_layer_8/col7_extend_2_embedding/embedding_weights/Initializer/truncated_normal/mulYinput_layer_8/col7_extend_2_embedding/embedding_weights/Initializer/truncated_normal/mean*
T0*J
_class@
><loc:@input_layer_8/col7_extend_2_embedding/embedding_weights*
_output_shapes

:
Ó
7input_layer_8/col7_extend_2_embedding/embedding_weights
VariableV2*J
_class@
><loc:@input_layer_8/col7_extend_2_embedding/embedding_weights*
shape
:*
dtype0*
_output_shapes

:
Ģ
>input_layer_8/col7_extend_2_embedding/embedding_weights/AssignAssign7input_layer_8/col7_extend_2_embedding/embedding_weightsTinput_layer_8/col7_extend_2_embedding/embedding_weights/Initializer/truncated_normal*
T0*J
_class@
><loc:@input_layer_8/col7_extend_2_embedding/embedding_weights*
_output_shapes

:
ö
<input_layer_8/col7_extend_2_embedding/embedding_weights/readIdentity7input_layer_8/col7_extend_2_embedding/embedding_weights*
T0*J
_class@
><loc:@input_layer_8/col7_extend_2_embedding/embedding_weights*
_output_shapes

:

Qinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:

Pinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
ī
Kinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/SliceSliceAinput_layer_8/col7_extend_2_embedding/to_sparse_input/dense_shapeQinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/Slice/beginPinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/Slice/size*
_output_shapes
:*
T0	*
Index0

Kinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/ConstConst*
_output_shapes
:*
valueB: *
dtype0

Jinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/ProdProdKinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/SliceKinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/Const*
T0	*
_output_shapes
: 

Vinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/GatherV2/indicesConst*
_output_shapes
: *
value	B :*
dtype0

Sinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 

Ninput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/GatherV2GatherV2Ainput_layer_8/col7_extend_2_embedding/to_sparse_input/dense_shapeVinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/GatherV2/indicesSinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/GatherV2/axis*
_output_shapes
: *
Taxis0*
Tindices0*
Tparams0	

Linput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/Cast/xPackJinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/ProdNinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/GatherV2*
T0	*
N*
_output_shapes
:
ć
Sinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/SparseReshapeSparseReshape=input_layer_8/col7_extend_2_embedding/to_sparse_input/indicesAinput_layer_8/col7_extend_2_embedding/to_sparse_input/dense_shapeLinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/Cast/x*-
_output_shapes
:’’’’’’’’’:
Ļ
\input_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/SparseReshape/IdentityIdentity7input_layer_8/col7_extend_2_embedding/hash_table_Lookup*
T0	*#
_output_shapes
:’’’’’’’’’

Tinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
Ä
Rinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/GreaterEqualGreaterEqual\input_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/SparseReshape/IdentityTinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/GreaterEqual/y*#
_output_shapes
:’’’’’’’’’*
T0	
Ń
Kinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/WhereWhereRinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/GreaterEqual*'
_output_shapes
:’’’’’’’’’
¦
Sinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/Reshape/shapeConst*
valueB:
’’’’’’’’’*
dtype0*
_output_shapes
:
Ø
Minput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/ReshapeReshapeKinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/WhereSinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/Reshape/shape*
T0	*#
_output_shapes
:’’’’’’’’’

Uinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
¬
Pinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/GatherV2_1GatherV2Sinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/SparseReshapeMinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/ReshapeUinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/GatherV2_1/axis*
Tindices0	*
Tparams0	*'
_output_shapes
:’’’’’’’’’*
Taxis0

Uinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
±
Pinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/GatherV2_2GatherV2\input_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/SparseReshape/IdentityMinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/ReshapeUinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/GatherV2_2/axis*
Tindices0	*
Tparams0	*#
_output_shapes
:’’’’’’’’’*
Taxis0
Ö
Ninput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/IdentityIdentityUinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/SparseReshape:1*
T0	*
_output_shapes
:
”
_input_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
ø
minput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsPinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/GatherV2_1Pinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/GatherV2_2Ninput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/Identity_input_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/SparseFillEmptyRows/Const*T
_output_shapesB
@:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
T0	
Ā
qinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB"        
Ä
sinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
Ä
sinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
¼
kinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSliceminput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsqinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/embedding_lookup_sparse/strided_slice/stacksinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1sinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2*
end_mask*#
_output_shapes
:’’’’’’’’’*
Index0*
T0	*
shrink_axis_mask*

begin_mask

binput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/embedding_lookup_sparse/CastCastkinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/embedding_lookup_sparse/strided_slice*

SrcT0	*

DstT0*#
_output_shapes
:’’’’’’’’’

dinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/embedding_lookup_sparse/UniqueUniqueoinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’

sinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*
value	B : *J
_class@
><loc:@input_layer_8/col7_extend_2_embedding/embedding_weights*
dtype0*
_output_shapes
: 
“
ninput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV2<input_layer_8/col7_extend_2_embedding/embedding_weights/readdinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/embedding_lookup_sparse/Uniquesinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis*'
_output_shapes
:’’’’’’’’’*
Taxis0*
Tindices0	*
Tparams0*J
_class@
><loc:@input_layer_8/col7_extend_2_embedding/embedding_weights
„
winput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentityninput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/embedding_lookup_sparse/embedding_lookup*'
_output_shapes
:’’’’’’’’’*
T0
é
]input_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/embedding_lookup_sparseSparseSegmentMeanwinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identityfinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/embedding_lookup_sparse/Unique:1binput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:’’’’’’’’’
¦
Uinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
valueB"’’’’   *
dtype0
Ō
Oinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/Reshape_1Reshapeoinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:2Uinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/Reshape_1/shape*'
_output_shapes
:’’’’’’’’’*
T0

Ų
Kinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/ShapeShape]input_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/embedding_lookup_sparse*
T0*
_output_shapes
:
£
Yinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/strided_slice/stackConst*
_output_shapes
:*
valueB:*
dtype0
„
[input_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
„
[input_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

Sinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/strided_sliceStridedSliceKinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/ShapeYinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/strided_slice/stack[input_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/strided_slice/stack_1[input_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
_output_shapes
: 

Minput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
„
Kinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/stackPackMinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/stack/0Sinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/strided_slice*
T0*
N*
_output_shapes
:
«
Jinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/TileTileOinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/Reshape_1Kinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/stack*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
T0

ī
Pinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/zeros_like	ZerosLike]input_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:’’’’’’’’’
ž
Einput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weightsSelectJinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/TilePinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/zeros_like]input_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:’’’’’’’’’
Ė
Linput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/Cast_1CastAinput_layer_8/col7_extend_2_embedding/to_sparse_input/dense_shape*

SrcT0	*

DstT0*
_output_shapes
:

Sinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:

Rinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/Slice_1/sizeConst*
dtype0*
_output_shapes
:*
valueB:
’
Minput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/Slice_1SliceLinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/Cast_1Sinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/Slice_1/beginRinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/Slice_1/size*
T0*
Index0*
_output_shapes
:
Ā
Minput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/Shape_1ShapeEinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights*
T0*
_output_shapes
:

Sinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
„
Rinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/Slice_2/sizeConst*
valueB:
’’’’’’’’’*
dtype0*
_output_shapes
:

Minput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/Slice_2SliceMinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/Shape_1Sinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/Slice_2/beginRinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/Slice_2/size*
T0*
Index0*
_output_shapes
:

Qinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
÷
Linput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/concatConcatV2Minput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/Slice_1Minput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/Slice_2Qinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/concat/axis*
T0*
N*
_output_shapes
:
”
Oinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/Reshape_2ReshapeEinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weightsLinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/concat*
T0*'
_output_shapes
:’’’’’’’’’
Ŗ
+input_layer_8/col7_extend_2_embedding/ShapeShapeOinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/Reshape_2*
_output_shapes
:*
T0

9input_layer_8/col7_extend_2_embedding/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 

;input_layer_8/col7_extend_2_embedding/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

;input_layer_8/col7_extend_2_embedding/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ė
3input_layer_8/col7_extend_2_embedding/strided_sliceStridedSlice+input_layer_8/col7_extend_2_embedding/Shape9input_layer_8/col7_extend_2_embedding/strided_slice/stack;input_layer_8/col7_extend_2_embedding/strided_slice/stack_1;input_layer_8/col7_extend_2_embedding/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
_output_shapes
: 
w
5input_layer_8/col7_extend_2_embedding/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
Õ
3input_layer_8/col7_extend_2_embedding/Reshape/shapePack3input_layer_8/col7_extend_2_embedding/strided_slice5input_layer_8/col7_extend_2_embedding/Reshape/shape/1*
N*
_output_shapes
:*
T0
š
-input_layer_8/col7_extend_2_embedding/ReshapeReshapeOinput_layer_8/col7_extend_2_embedding/col7_extend_2_embedding_weights/Reshape_23input_layer_8/col7_extend_2_embedding/Reshape/shape*
T0*'
_output_shapes
:’’’’’’’’’
a
input_layer_8/concat/concat_dimConst*
value	B :*
dtype0*
_output_shapes
: 

input_layer_8/concatIdentity-input_layer_8/col7_extend_2_embedding/Reshape*
T0*'
_output_shapes
:’’’’’’’’’
}
2sequence_input_layer/col8_embedding/ExpandDims/dimConst*
valueB :
’’’’’’’’’*
dtype0*
_output_shapes
: 
±
.sequence_input_layer/col8_embedding/ExpandDims
ExpandDimsPlaceholder_72sequence_input_layer/col8_embedding/ExpandDims/dim*
T0*'
_output_shapes
:’’’’’’’’’

Bsequence_input_layer/col8_embedding/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
valueB B *
dtype0
ī
<sequence_input_layer/col8_embedding/to_sparse_input/NotEqualNotEqual.sequence_input_layer/col8_embedding/ExpandDimsBsequence_input_layer/col8_embedding/to_sparse_input/ignore_value/x*
T0*'
_output_shapes
:’’’’’’’’’
«
;sequence_input_layer/col8_embedding/to_sparse_input/indicesWhere<sequence_input_layer/col8_embedding/to_sparse_input/NotEqual*'
_output_shapes
:’’’’’’’’’
÷
:sequence_input_layer/col8_embedding/to_sparse_input/valuesGatherNd.sequence_input_layer/col8_embedding/ExpandDims;sequence_input_layer/col8_embedding/to_sparse_input/indices*#
_output_shapes
:’’’’’’’’’*
Tindices0	*
Tparams0
­
?sequence_input_layer/col8_embedding/to_sparse_input/dense_shapeShape.sequence_input_layer/col8_embedding/ExpandDims*
T0*
out_type0	*
_output_shapes
:
Ķ
:sequence_input_layer/col8_embedding/col8_lookup/hash_tableHashTableV2*
value_dtype0	*
_output_shapes
: *F
shared_name75hash_table_../data/vocabulary/vocabulary_col8_9_-2_-1*
	key_dtype0

@sequence_input_layer/col8_embedding/col8_lookup/hash_table/ConstConst*
valueB	 R
’’’’’’’’’*
dtype0	*
_output_shapes
: 
·
Tsequence_input_layer/col8_embedding/col8_lookup/hash_table/table_init/asset_filepathConst*3
value*B( B"../data/vocabulary/vocabulary_col8*
dtype0*
_output_shapes
: 
Ą
Esequence_input_layer/col8_embedding/col8_lookup/hash_table/table_initInitializeTableFromTextFileV2:sequence_input_layer/col8_embedding/col8_lookup/hash_tableTsequence_input_layer/col8_embedding/col8_lookup/hash_table/table_init/asset_filepath*

vocab_size	*
	key_indexž’’’’’’’’*
value_index’’’’’’’’’
Ą
5sequence_input_layer/col8_embedding/hash_table_LookupLookupTableFindV2:sequence_input_layer/col8_embedding/col8_lookup/hash_table:sequence_input_layer/col8_embedding/to_sparse_input/values@sequence_input_layer/col8_embedding/col8_lookup/hash_table/Const*	
Tin0*#
_output_shapes
:’’’’’’’’’*

Tout0	

(sequence_input_layer/col8_embedding/RankSize?sequence_input_layer/col8_embedding/to_sparse_input/dense_shape*
T0	*
_output_shapes
: 
«
.sequence_input_layer/col8_embedding/Shape/CastCast?sequence_input_layer/col8_embedding/to_sparse_input/dense_shape*

DstT0*
_output_shapes
:*

SrcT0	
t
2sequence_input_layer/col8_embedding/assert_equal/yConst*
value	B :*
dtype0*
_output_shapes
: 
¾
6sequence_input_layer/col8_embedding/assert_equal/EqualEqual(sequence_input_layer/col8_embedding/Rank2sequence_input_layer/col8_embedding/assert_equal/y*
_output_shapes
: *
T0
y
6sequence_input_layer/col8_embedding/assert_equal/ConstConst*
dtype0*
_output_shapes
: *
valueB 
Ć
4sequence_input_layer/col8_embedding/assert_equal/AllAll6sequence_input_layer/col8_embedding/assert_equal/Equal6sequence_input_layer/col8_embedding/assert_equal/Const*
_output_shapes
: 
Ø
=sequence_input_layer/col8_embedding/assert_equal/Assert/ConstConst*;
value2B0 B*Column col8 expected ID tensor of rank 2. *
dtype0*
_output_shapes
: 

?sequence_input_layer/col8_embedding/assert_equal/Assert/Const_1Const*"
valueB Bid_tensor shape: *
dtype0*
_output_shapes
: 
°
Esequence_input_layer/col8_embedding/assert_equal/Assert/Assert/data_0Const*
_output_shapes
: *;
value2B0 B*Column col8 expected ID tensor of rank 2. *
dtype0

Esequence_input_layer/col8_embedding/assert_equal/Assert/Assert/data_1Const*
_output_shapes
: *"
valueB Bid_tensor shape: *
dtype0
Ź
>sequence_input_layer/col8_embedding/assert_equal/Assert/AssertAssert4sequence_input_layer/col8_embedding/assert_equal/AllEsequence_input_layer/col8_embedding/assert_equal/Assert/Assert/data_0Esequence_input_layer/col8_embedding/assert_equal/Assert/Assert/data_1.sequence_input_layer/col8_embedding/Shape/Cast*
T
2
¾
3sequence_input_layer/col8_embedding/concat/values_1Const?^sequence_input_layer/col8_embedding/assert_equal/Assert/Assert*
valueB	R*
dtype0	*
_output_shapes
:
²
/sequence_input_layer/col8_embedding/concat/axisConst?^sequence_input_layer/col8_embedding/assert_equal/Assert/Assert*
value	B : *
dtype0*
_output_shapes
: 

*sequence_input_layer/col8_embedding/concatConcatV2?sequence_input_layer/col8_embedding/to_sparse_input/dense_shape3sequence_input_layer/col8_embedding/concat/values_1/sequence_input_layer/col8_embedding/concat/axis*
T0	*
N*
_output_shapes
:

1sequence_input_layer/col8_embedding/SparseReshapeSparseReshape;sequence_input_layer/col8_embedding/to_sparse_input/indices?sequence_input_layer/col8_embedding/to_sparse_input/dense_shape*sequence_input_layer/col8_embedding/concat*-
_output_shapes
:’’’’’’’’’:
ģ
:sequence_input_layer/col8_embedding/SparseReshape/IdentityIdentity5sequence_input_layer/col8_embedding/hash_table_Lookup?^sequence_input_layer/col8_embedding/assert_equal/Assert/Assert*
T0	*#
_output_shapes
:’’’’’’’’’
ó
Xsequence_input_layer/col8_embedding/embedding_weights/Initializer/truncated_normal/shapeConst*
valueB"	      *H
_class>
<:loc:@sequence_input_layer/col8_embedding/embedding_weights*
dtype0*
_output_shapes
:
ę
Wsequence_input_layer/col8_embedding/embedding_weights/Initializer/truncated_normal/meanConst*
valueB
 *    *H
_class>
<:loc:@sequence_input_layer/col8_embedding/embedding_weights*
dtype0*
_output_shapes
: 
č
Ysequence_input_layer/col8_embedding/embedding_weights/Initializer/truncated_normal/stddevConst*
valueB
 *   ?*H
_class>
<:loc:@sequence_input_layer/col8_embedding/embedding_weights*
dtype0*
_output_shapes
: 
Ļ
bsequence_input_layer/col8_embedding/embedding_weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalXsequence_input_layer/col8_embedding/embedding_weights/Initializer/truncated_normal/shape*
T0*H
_class>
<:loc:@sequence_input_layer/col8_embedding/embedding_weights*
dtype0*
_output_shapes

:	

Vsequence_input_layer/col8_embedding/embedding_weights/Initializer/truncated_normal/mulMulbsequence_input_layer/col8_embedding/embedding_weights/Initializer/truncated_normal/TruncatedNormalYsequence_input_layer/col8_embedding/embedding_weights/Initializer/truncated_normal/stddev*
T0*H
_class>
<:loc:@sequence_input_layer/col8_embedding/embedding_weights*
_output_shapes

:	
ż
Rsequence_input_layer/col8_embedding/embedding_weights/Initializer/truncated_normalAddVsequence_input_layer/col8_embedding/embedding_weights/Initializer/truncated_normal/mulWsequence_input_layer/col8_embedding/embedding_weights/Initializer/truncated_normal/mean*
T0*H
_class>
<:loc:@sequence_input_layer/col8_embedding/embedding_weights*
_output_shapes

:	
Ļ
5sequence_input_layer/col8_embedding/embedding_weights
VariableV2*
dtype0*
_output_shapes

:	*H
_class>
<:loc:@sequence_input_layer/col8_embedding/embedding_weights*
shape
:	
Ä
<sequence_input_layer/col8_embedding/embedding_weights/AssignAssign5sequence_input_layer/col8_embedding/embedding_weightsRsequence_input_layer/col8_embedding/embedding_weights/Initializer/truncated_normal*
T0*H
_class>
<:loc:@sequence_input_layer/col8_embedding/embedding_weights*
_output_shapes

:	
š
:sequence_input_layer/col8_embedding/embedding_weights/readIdentity5sequence_input_layer/col8_embedding/embedding_weights*
T0*H
_class>
<:loc:@sequence_input_layer/col8_embedding/embedding_weights*
_output_shapes

:	

Fsequence_input_layer/col8_embedding/col8_embedding_weights/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:

Esequence_input_layer/col8_embedding/col8_embedding_weights/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
æ
@sequence_input_layer/col8_embedding/col8_embedding_weights/SliceSlice3sequence_input_layer/col8_embedding/SparseReshape:1Fsequence_input_layer/col8_embedding/col8_embedding_weights/Slice/beginEsequence_input_layer/col8_embedding/col8_embedding_weights/Slice/size*
T0	*
Index0*
_output_shapes
:

@sequence_input_layer/col8_embedding/col8_embedding_weights/ConstConst*
valueB: *
dtype0*
_output_shapes
:
ģ
?sequence_input_layer/col8_embedding/col8_embedding_weights/ProdProd@sequence_input_layer/col8_embedding/col8_embedding_weights/Slice@sequence_input_layer/col8_embedding/col8_embedding_weights/Const*
T0	*
_output_shapes
: 

Ksequence_input_layer/col8_embedding/col8_embedding_weights/GatherV2/indicesConst*
dtype0*
_output_shapes
: *
value	B :

Hsequence_input_layer/col8_embedding/col8_embedding_weights/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ß
Csequence_input_layer/col8_embedding/col8_embedding_weights/GatherV2GatherV23sequence_input_layer/col8_embedding/SparseReshape:1Ksequence_input_layer/col8_embedding/col8_embedding_weights/GatherV2/indicesHsequence_input_layer/col8_embedding/col8_embedding_weights/GatherV2/axis*
_output_shapes
: *
Taxis0*
Tindices0*
Tparams0	
ż
Asequence_input_layer/col8_embedding/col8_embedding_weights/Cast/xPack?sequence_input_layer/col8_embedding/col8_embedding_weights/ProdCsequence_input_layer/col8_embedding/col8_embedding_weights/GatherV2*
T0	*
N*
_output_shapes
:
³
Hsequence_input_layer/col8_embedding/col8_embedding_weights/SparseReshapeSparseReshape1sequence_input_layer/col8_embedding/SparseReshape3sequence_input_layer/col8_embedding/SparseReshape:1Asequence_input_layer/col8_embedding/col8_embedding_weights/Cast/x*-
_output_shapes
:’’’’’’’’’:
Ē
Qsequence_input_layer/col8_embedding/col8_embedding_weights/SparseReshape/IdentityIdentity:sequence_input_layer/col8_embedding/SparseReshape/Identity*
T0	*#
_output_shapes
:’’’’’’’’’

Isequence_input_layer/col8_embedding/col8_embedding_weights/GreaterEqual/yConst*
_output_shapes
: *
value	B	 R *
dtype0	
£
Gsequence_input_layer/col8_embedding/col8_embedding_weights/GreaterEqualGreaterEqualQsequence_input_layer/col8_embedding/col8_embedding_weights/SparseReshape/IdentityIsequence_input_layer/col8_embedding/col8_embedding_weights/GreaterEqual/y*#
_output_shapes
:’’’’’’’’’*
T0	
»
@sequence_input_layer/col8_embedding/col8_embedding_weights/WhereWhereGsequence_input_layer/col8_embedding/col8_embedding_weights/GreaterEqual*'
_output_shapes
:’’’’’’’’’

Hsequence_input_layer/col8_embedding/col8_embedding_weights/Reshape/shapeConst*
valueB:
’’’’’’’’’*
dtype0*
_output_shapes
:

Bsequence_input_layer/col8_embedding/col8_embedding_weights/ReshapeReshape@sequence_input_layer/col8_embedding/col8_embedding_weights/WhereHsequence_input_layer/col8_embedding/col8_embedding_weights/Reshape/shape*
T0	*#
_output_shapes
:’’’’’’’’’

Jsequence_input_layer/col8_embedding/col8_embedding_weights/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 

Esequence_input_layer/col8_embedding/col8_embedding_weights/GatherV2_1GatherV2Hsequence_input_layer/col8_embedding/col8_embedding_weights/SparseReshapeBsequence_input_layer/col8_embedding/col8_embedding_weights/ReshapeJsequence_input_layer/col8_embedding/col8_embedding_weights/GatherV2_1/axis*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:’’’’’’’’’

Jsequence_input_layer/col8_embedding/col8_embedding_weights/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 

Esequence_input_layer/col8_embedding/col8_embedding_weights/GatherV2_2GatherV2Qsequence_input_layer/col8_embedding/col8_embedding_weights/SparseReshape/IdentityBsequence_input_layer/col8_embedding/col8_embedding_weights/ReshapeJsequence_input_layer/col8_embedding/col8_embedding_weights/GatherV2_2/axis*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:’’’’’’’’’
Ą
Csequence_input_layer/col8_embedding/col8_embedding_weights/IdentityIdentityJsequence_input_layer/col8_embedding/col8_embedding_weights/SparseReshape:1*
_output_shapes
:*
T0	

Tsequence_input_layer/col8_embedding/col8_embedding_weights/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 

bsequence_input_layer/col8_embedding/col8_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsEsequence_input_layer/col8_embedding/col8_embedding_weights/GatherV2_1Esequence_input_layer/col8_embedding/col8_embedding_weights/GatherV2_2Csequence_input_layer/col8_embedding/col8_embedding_weights/IdentityTsequence_input_layer/col8_embedding/col8_embedding_weights/SparseFillEmptyRows/Const*T
_output_shapesB
@:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
T0	
·
fsequence_input_layer/col8_embedding/col8_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
¹
hsequence_input_layer/col8_embedding/col8_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
¹
hsequence_input_layer/col8_embedding/col8_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:

`sequence_input_layer/col8_embedding/col8_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicebsequence_input_layer/col8_embedding/col8_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsfsequence_input_layer/col8_embedding/col8_embedding_weights/embedding_lookup_sparse/strided_slice/stackhsequence_input_layer/col8_embedding/col8_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1hsequence_input_layer/col8_embedding/col8_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2*
end_mask*#
_output_shapes
:’’’’’’’’’*
T0	*
Index0*
shrink_axis_mask*

begin_mask
ž
Wsequence_input_layer/col8_embedding/col8_embedding_weights/embedding_lookup_sparse/CastCast`sequence_input_layer/col8_embedding/col8_embedding_weights/embedding_lookup_sparse/strided_slice*

SrcT0	*

DstT0*#
_output_shapes
:’’’’’’’’’

Ysequence_input_layer/col8_embedding/col8_embedding_weights/embedding_lookup_sparse/UniqueUniquedsequence_input_layer/col8_embedding/col8_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
ō
hsequence_input_layer/col8_embedding/col8_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*
value	B : *H
_class>
<:loc:@sequence_input_layer/col8_embedding/embedding_weights*
dtype0*
_output_shapes
: 

csequence_input_layer/col8_embedding/col8_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV2:sequence_input_layer/col8_embedding/embedding_weights/readYsequence_input_layer/col8_embedding/col8_embedding_weights/embedding_lookup_sparse/Uniquehsequence_input_layer/col8_embedding/col8_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis*
Taxis0*
Tindices0	*
Tparams0*H
_class>
<:loc:@sequence_input_layer/col8_embedding/embedding_weights*'
_output_shapes
:’’’’’’’’’

lsequence_input_layer/col8_embedding/col8_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentitycsequence_input_layer/col8_embedding/col8_embedding_weights/embedding_lookup_sparse/embedding_lookup*
T0*'
_output_shapes
:’’’’’’’’’
½
Rsequence_input_layer/col8_embedding/col8_embedding_weights/embedding_lookup_sparseSparseSegmentMeanlsequence_input_layer/col8_embedding/col8_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identity[sequence_input_layer/col8_embedding/col8_embedding_weights/embedding_lookup_sparse/Unique:1Wsequence_input_layer/col8_embedding/col8_embedding_weights/embedding_lookup_sparse/Cast*'
_output_shapes
:’’’’’’’’’*
T0

Jsequence_input_layer/col8_embedding/col8_embedding_weights/Reshape_1/shapeConst*
valueB"’’’’   *
dtype0*
_output_shapes
:
³
Dsequence_input_layer/col8_embedding/col8_embedding_weights/Reshape_1Reshapedsequence_input_layer/col8_embedding/col8_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:2Jsequence_input_layer/col8_embedding/col8_embedding_weights/Reshape_1/shape*
T0
*'
_output_shapes
:’’’’’’’’’
Ā
@sequence_input_layer/col8_embedding/col8_embedding_weights/ShapeShapeRsequence_input_layer/col8_embedding/col8_embedding_weights/embedding_lookup_sparse*
_output_shapes
:*
T0

Nsequence_input_layer/col8_embedding/col8_embedding_weights/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:

Psequence_input_layer/col8_embedding/col8_embedding_weights/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Psequence_input_layer/col8_embedding/col8_embedding_weights/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ō
Hsequence_input_layer/col8_embedding/col8_embedding_weights/strided_sliceStridedSlice@sequence_input_layer/col8_embedding/col8_embedding_weights/ShapeNsequence_input_layer/col8_embedding/col8_embedding_weights/strided_slice/stackPsequence_input_layer/col8_embedding/col8_embedding_weights/strided_slice/stack_1Psequence_input_layer/col8_embedding/col8_embedding_weights/strided_slice/stack_2*
shrink_axis_mask*
_output_shapes
: *
Index0*
T0

Bsequence_input_layer/col8_embedding/col8_embedding_weights/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 

@sequence_input_layer/col8_embedding/col8_embedding_weights/stackPackBsequence_input_layer/col8_embedding/col8_embedding_weights/stack/0Hsequence_input_layer/col8_embedding/col8_embedding_weights/strided_slice*
N*
_output_shapes
:*
T0

?sequence_input_layer/col8_embedding/col8_embedding_weights/TileTileDsequence_input_layer/col8_embedding/col8_embedding_weights/Reshape_1@sequence_input_layer/col8_embedding/col8_embedding_weights/stack*
T0
*0
_output_shapes
:’’’’’’’’’’’’’’’’’’
Ų
Esequence_input_layer/col8_embedding/col8_embedding_weights/zeros_like	ZerosLikeRsequence_input_layer/col8_embedding/col8_embedding_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:’’’’’’’’’
Ņ
:sequence_input_layer/col8_embedding/col8_embedding_weightsSelect?sequence_input_layer/col8_embedding/col8_embedding_weights/TileEsequence_input_layer/col8_embedding/col8_embedding_weights/zeros_likeRsequence_input_layer/col8_embedding/col8_embedding_weights/embedding_lookup_sparse*'
_output_shapes
:’’’’’’’’’*
T0
²
Asequence_input_layer/col8_embedding/col8_embedding_weights/Cast_1Cast3sequence_input_layer/col8_embedding/SparseReshape:1*

DstT0*
_output_shapes
:*

SrcT0	

Hsequence_input_layer/col8_embedding/col8_embedding_weights/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:

Gsequence_input_layer/col8_embedding/col8_embedding_weights/Slice_1/sizeConst*
dtype0*
_output_shapes
:*
valueB:
Ó
Bsequence_input_layer/col8_embedding/col8_embedding_weights/Slice_1SliceAsequence_input_layer/col8_embedding/col8_embedding_weights/Cast_1Hsequence_input_layer/col8_embedding/col8_embedding_weights/Slice_1/beginGsequence_input_layer/col8_embedding/col8_embedding_weights/Slice_1/size*
_output_shapes
:*
T0*
Index0
¬
Bsequence_input_layer/col8_embedding/col8_embedding_weights/Shape_1Shape:sequence_input_layer/col8_embedding/col8_embedding_weights*
_output_shapes
:*
T0

Hsequence_input_layer/col8_embedding/col8_embedding_weights/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:

Gsequence_input_layer/col8_embedding/col8_embedding_weights/Slice_2/sizeConst*
valueB:
’’’’’’’’’*
dtype0*
_output_shapes
:
Ō
Bsequence_input_layer/col8_embedding/col8_embedding_weights/Slice_2SliceBsequence_input_layer/col8_embedding/col8_embedding_weights/Shape_1Hsequence_input_layer/col8_embedding/col8_embedding_weights/Slice_2/beginGsequence_input_layer/col8_embedding/col8_embedding_weights/Slice_2/size*
_output_shapes
:*
T0*
Index0

Fsequence_input_layer/col8_embedding/col8_embedding_weights/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ė
Asequence_input_layer/col8_embedding/col8_embedding_weights/concatConcatV2Bsequence_input_layer/col8_embedding/col8_embedding_weights/Slice_1Bsequence_input_layer/col8_embedding/col8_embedding_weights/Slice_2Fsequence_input_layer/col8_embedding/col8_embedding_weights/concat/axis*
T0*
N*
_output_shapes
:

Dsequence_input_layer/col8_embedding/col8_embedding_weights/Reshape_2Reshape:sequence_input_layer/col8_embedding/col8_embedding_weightsAsequence_input_layer/col8_embedding/col8_embedding_weights/concat*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’*
T0

*sequence_input_layer/col8_embedding/Rank_1Size?sequence_input_layer/col8_embedding/to_sparse_input/dense_shape*
T0	*
_output_shapes
: 
­
0sequence_input_layer/col8_embedding/Shape_1/CastCast?sequence_input_layer/col8_embedding/to_sparse_input/dense_shape*

SrcT0	*

DstT0*
_output_shapes
:
v
4sequence_input_layer/col8_embedding/assert_equal_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
Ä
8sequence_input_layer/col8_embedding/assert_equal_1/EqualEqual*sequence_input_layer/col8_embedding/Rank_14sequence_input_layer/col8_embedding/assert_equal_1/y*
T0*
_output_shapes
: 
{
8sequence_input_layer/col8_embedding/assert_equal_1/ConstConst*
_output_shapes
: *
valueB *
dtype0
É
6sequence_input_layer/col8_embedding/assert_equal_1/AllAll8sequence_input_layer/col8_embedding/assert_equal_1/Equal8sequence_input_layer/col8_embedding/assert_equal_1/Const*
_output_shapes
: 
Ŗ
?sequence_input_layer/col8_embedding/assert_equal_1/Assert/ConstConst*;
value2B0 B*Column col8 expected ID tensor of rank 2. *
dtype0*
_output_shapes
: 

Asequence_input_layer/col8_embedding/assert_equal_1/Assert/Const_1Const*"
valueB Bid_tensor shape: *
dtype0*
_output_shapes
: 
²
Gsequence_input_layer/col8_embedding/assert_equal_1/Assert/Assert/data_0Const*;
value2B0 B*Column col8 expected ID tensor of rank 2. *
dtype0*
_output_shapes
: 

Gsequence_input_layer/col8_embedding/assert_equal_1/Assert/Assert/data_1Const*"
valueB Bid_tensor shape: *
dtype0*
_output_shapes
: 
Ō
@sequence_input_layer/col8_embedding/assert_equal_1/Assert/AssertAssert6sequence_input_layer/col8_embedding/assert_equal_1/AllGsequence_input_layer/col8_embedding/assert_equal_1/Assert/Assert/data_0Gsequence_input_layer/col8_embedding/assert_equal_1/Assert/Assert/data_10sequence_input_layer/col8_embedding/Shape_1/Cast*
T
2
Ā
5sequence_input_layer/col8_embedding/concat_1/values_1ConstA^sequence_input_layer/col8_embedding/assert_equal_1/Assert/Assert*
valueB	R*
dtype0	*
_output_shapes
:
¶
1sequence_input_layer/col8_embedding/concat_1/axisConstA^sequence_input_layer/col8_embedding/assert_equal_1/Assert/Assert*
dtype0*
_output_shapes
: *
value	B : 

,sequence_input_layer/col8_embedding/concat_1ConcatV2?sequence_input_layer/col8_embedding/to_sparse_input/dense_shape5sequence_input_layer/col8_embedding/concat_1/values_11sequence_input_layer/col8_embedding/concat_1/axis*
N*
_output_shapes
:*
T0	

3sequence_input_layer/col8_embedding/SparseReshape_1SparseReshape;sequence_input_layer/col8_embedding/to_sparse_input/indices?sequence_input_layer/col8_embedding/to_sparse_input/dense_shape,sequence_input_layer/col8_embedding/concat_1*-
_output_shapes
:’’’’’’’’’:
š
<sequence_input_layer/col8_embedding/SparseReshape_1/IdentityIdentity5sequence_input_layer/col8_embedding/hash_table_LookupA^sequence_input_layer/col8_embedding/assert_equal_1/Assert/Assert*
T0	*#
_output_shapes
:’’’’’’’’’

Gsequence_input_layer/col8_embedding/sequence_length/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:

Isequence_input_layer/col8_embedding/sequence_length/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:

Isequence_input_layer/col8_embedding/sequence_length/strided_slice/stack_2Const*
_output_shapes
:*
valueB"      *
dtype0
Ś
Asequence_input_layer/col8_embedding/sequence_length/strided_sliceStridedSlice3sequence_input_layer/col8_embedding/SparseReshape_1Gsequence_input_layer/col8_embedding/sequence_length/strided_slice/stackIsequence_input_layer/col8_embedding/sequence_length/strided_slice/stack_1Isequence_input_layer/col8_embedding/sequence_length/strided_slice/stack_2*
shrink_axis_mask*

begin_mask*
end_mask*#
_output_shapes
:’’’’’’’’’*
Index0*
T0	

Isequence_input_layer/col8_embedding/sequence_length/strided_slice_1/stackConst*
valueB"       *
dtype0*
_output_shapes
:

Ksequence_input_layer/col8_embedding/sequence_length/strided_slice_1/stack_1Const*
_output_shapes
:*
valueB"       *
dtype0

Ksequence_input_layer/col8_embedding/sequence_length/strided_slice_1/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
ā
Csequence_input_layer/col8_embedding/sequence_length/strided_slice_1StridedSlice3sequence_input_layer/col8_embedding/SparseReshape_1Isequence_input_layer/col8_embedding/sequence_length/strided_slice_1/stackKsequence_input_layer/col8_embedding/sequence_length/strided_slice_1/stack_1Ksequence_input_layer/col8_embedding/sequence_length/strided_slice_1/stack_2*
end_mask*#
_output_shapes
:’’’’’’’’’*
Index0*
T0	*
shrink_axis_mask*

begin_mask
¶
Csequence_input_layer/col8_embedding/sequence_length/ones_like/ShapeShapeCsequence_input_layer/col8_embedding/sequence_length/strided_slice_1*
T0	*
_output_shapes
:

Csequence_input_layer/col8_embedding/sequence_length/ones_like/ConstConst*
_output_shapes
: *
value	B	 R*
dtype0	
ż
=sequence_input_layer/col8_embedding/sequence_length/ones_likeFillCsequence_input_layer/col8_embedding/sequence_length/ones_like/ShapeCsequence_input_layer/col8_embedding/sequence_length/ones_like/Const*#
_output_shapes
:’’’’’’’’’*
T0	
š
7sequence_input_layer/col8_embedding/sequence_length/addAddCsequence_input_layer/col8_embedding/sequence_length/strided_slice_1=sequence_input_layer/col8_embedding/sequence_length/ones_like*#
_output_shapes
:’’’’’’’’’*
T0	

>sequence_input_layer/col8_embedding/sequence_length/SegmentMax
SegmentMax7sequence_input_layer/col8_embedding/sequence_length/addAsequence_input_layer/col8_embedding/sequence_length/strided_slice*#
_output_shapes
:’’’’’’’’’*
Tindices0	*
T0	

=sequence_input_layer/col8_embedding/sequence_length/truediv/yConst*
dtype0	*
_output_shapes
: *
value	B	 R
Å
@sequence_input_layer/col8_embedding/sequence_length/truediv/CastCast>sequence_input_layer/col8_embedding/sequence_length/SegmentMax*

DstT0*#
_output_shapes
:’’’’’’’’’*

SrcT0	
¹
Bsequence_input_layer/col8_embedding/sequence_length/truediv/Cast_1Cast=sequence_input_layer/col8_embedding/sequence_length/truediv/y*

SrcT0	*

DstT0*
_output_shapes
: 
ś
;sequence_input_layer/col8_embedding/sequence_length/truedivRealDiv@sequence_input_layer/col8_embedding/sequence_length/truediv/CastBsequence_input_layer/col8_embedding/sequence_length/truediv/Cast_1*
T0*#
_output_shapes
:’’’’’’’’’
½
;sequence_input_layer/col8_embedding/sequence_length/ToInt64Cast;sequence_input_layer/col8_embedding/sequence_length/truediv*

SrcT0*

DstT0	*#
_output_shapes
:’’’’’’’’’
±
>sequence_input_layer/col8_embedding/sequence_length/Shape/CastCast5sequence_input_layer/col8_embedding/SparseReshape_1:1*

SrcT0	*

DstT0*
_output_shapes
:

Isequence_input_layer/col8_embedding/sequence_length/strided_slice_2/stackConst*
valueB: *
dtype0*
_output_shapes
:

Ksequence_input_layer/col8_embedding/sequence_length/strided_slice_2/stack_1Const*
dtype0*
_output_shapes
:*
valueB:

Ksequence_input_layer/col8_embedding/sequence_length/strided_slice_2/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
¼
Csequence_input_layer/col8_embedding/sequence_length/strided_slice_2StridedSlice>sequence_input_layer/col8_embedding/sequence_length/Shape/CastIsequence_input_layer/col8_embedding/sequence_length/strided_slice_2/stackKsequence_input_layer/col8_embedding/sequence_length/strided_slice_2/stack_1Ksequence_input_layer/col8_embedding/sequence_length/strided_slice_2/stack_2*
T0*
Index0*

begin_mask*
_output_shapes
:
¦
;sequence_input_layer/col8_embedding/sequence_length/Shape_1Shape;sequence_input_layer/col8_embedding/sequence_length/ToInt64*
_output_shapes
:*
T0	

Isequence_input_layer/col8_embedding/sequence_length/strided_slice_3/stackConst*
valueB: *
dtype0*
_output_shapes
:

Ksequence_input_layer/col8_embedding/sequence_length/strided_slice_3/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Ksequence_input_layer/col8_embedding/sequence_length/strided_slice_3/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
¹
Csequence_input_layer/col8_embedding/sequence_length/strided_slice_3StridedSlice;sequence_input_layer/col8_embedding/sequence_length/Shape_1Isequence_input_layer/col8_embedding/sequence_length/strided_slice_3/stackKsequence_input_layer/col8_embedding/sequence_length/strided_slice_3/stack_1Ksequence_input_layer/col8_embedding/sequence_length/strided_slice_3/stack_2*
Index0*
T0*

begin_mask*
_output_shapes
:
ķ
7sequence_input_layer/col8_embedding/sequence_length/subSubCsequence_input_layer/col8_embedding/sequence_length/strided_slice_2Csequence_input_layer/col8_embedding/sequence_length/strided_slice_3*
T0*
_output_shapes
:

?sequence_input_layer/col8_embedding/sequence_length/zeros/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
é
9sequence_input_layer/col8_embedding/sequence_length/zerosFill7sequence_input_layer/col8_embedding/sequence_length/sub?sequence_input_layer/col8_embedding/sequence_length/zeros/Const*
T0	*#
_output_shapes
:’’’’’’’’’
z
8sequence_input_layer/col8_embedding/sequence_length/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ø
3sequence_input_layer/col8_embedding/sequence_lengthConcatV2;sequence_input_layer/col8_embedding/sequence_length/ToInt649sequence_input_layer/col8_embedding/sequence_length/zeros8sequence_input_layer/col8_embedding/sequence_length/axis*
T0	*
N*#
_output_shapes
:’’’’’’’’’

+sequence_input_layer/col8_embedding/Shape_2ShapeDsequence_input_layer/col8_embedding/col8_embedding_weights/Reshape_2*
T0*
_output_shapes
:

7sequence_input_layer/col8_embedding/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

9sequence_input_layer/col8_embedding/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

9sequence_input_layer/col8_embedding/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
į
1sequence_input_layer/col8_embedding/strided_sliceStridedSlice+sequence_input_layer/col8_embedding/Shape_27sequence_input_layer/col8_embedding/strided_slice/stack9sequence_input_layer/col8_embedding/strided_slice/stack_19sequence_input_layer/col8_embedding/strided_slice/stack_2*
_output_shapes
:*
T0*
Index0*

begin_mask

5sequence_input_layer/col8_embedding/concat_2/values_1Const*
valueB:*
dtype0*
_output_shapes
:
s
1sequence_input_layer/col8_embedding/concat_2/axisConst*
_output_shapes
: *
value	B : *
dtype0

,sequence_input_layer/col8_embedding/concat_2ConcatV21sequence_input_layer/col8_embedding/strided_slice5sequence_input_layer/col8_embedding/concat_2/values_11sequence_input_layer/col8_embedding/concat_2/axis*
T0*
N*
_output_shapes
:
é
+sequence_input_layer/col8_embedding/ReshapeReshapeDsequence_input_layer/col8_embedding/col8_embedding_weights/Reshape_2,sequence_input_layer/col8_embedding/concat_2*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’*
T0
q
&sequence_input_layer/concat/concat_dimConst*
dtype0*
_output_shapes
: *
valueB :
’’’’’’’’’

sequence_input_layer/concatIdentity+sequence_input_layer/col8_embedding/Reshape*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’*
T0

=sequence_input_layer_1/col6_extend_1_embedding/ExpandDims/dimConst*
valueB :
’’’’’’’’’*
dtype0*
_output_shapes
: 
Ė
9sequence_input_layer_1/col6_extend_1_embedding/ExpandDims
ExpandDimshash_table_Lookup=sequence_input_layer_1/col6_extend_1_embedding/ExpandDims/dim*
T0*'
_output_shapes
:’’’’’’’’’

Msequence_input_layer_1/col6_extend_1_embedding/to_sparse_input/ignore_value/xConst*
valueB B *
dtype0*
_output_shapes
: 

Gsequence_input_layer_1/col6_extend_1_embedding/to_sparse_input/NotEqualNotEqual9sequence_input_layer_1/col6_extend_1_embedding/ExpandDimsMsequence_input_layer_1/col6_extend_1_embedding/to_sparse_input/ignore_value/x*'
_output_shapes
:’’’’’’’’’*
T0
Į
Fsequence_input_layer_1/col6_extend_1_embedding/to_sparse_input/indicesWhereGsequence_input_layer_1/col6_extend_1_embedding/to_sparse_input/NotEqual*'
_output_shapes
:’’’’’’’’’

Esequence_input_layer_1/col6_extend_1_embedding/to_sparse_input/valuesGatherNd9sequence_input_layer_1/col6_extend_1_embedding/ExpandDimsFsequence_input_layer_1/col6_extend_1_embedding/to_sparse_input/indices*
Tindices0	*
Tparams0*#
_output_shapes
:’’’’’’’’’
Ć
Jsequence_input_layer_1/col6_extend_1_embedding/to_sparse_input/dense_shapeShape9sequence_input_layer_1/col6_extend_1_embedding/ExpandDims*
_output_shapes
:*
T0*
out_type0	
å
Nsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_lookup/hash_tableHashTableV2*J
shared_name;9hash_table_../data/vocabulary/vocabulary_extend_1_3_-2_-1*
	key_dtype0*
value_dtype0	*
_output_shapes
: 

Tsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_lookup/hash_table/ConstConst*
valueB	 R
’’’’’’’’’*
dtype0	*
_output_shapes
: 
Ļ
hsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_lookup/hash_table/table_init/asset_filepathConst*7
value.B, B&../data/vocabulary/vocabulary_extend_1*
dtype0*
_output_shapes
: 
ü
Ysequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_lookup/hash_table/table_initInitializeTableFromTextFileV2Nsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_lookup/hash_tablehsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_lookup/hash_table/table_init/asset_filepath*
	key_indexž’’’’’’’’*
value_index’’’’’’’’’*

vocab_size
ž
@sequence_input_layer_1/col6_extend_1_embedding/hash_table_LookupLookupTableFindV2Nsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_lookup/hash_tableEsequence_input_layer_1/col6_extend_1_embedding/to_sparse_input/valuesTsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_lookup/hash_table/Const*	
Tin0*#
_output_shapes
:’’’’’’’’’*

Tout0	
Ø
3sequence_input_layer_1/col6_extend_1_embedding/RankSizeJsequence_input_layer_1/col6_extend_1_embedding/to_sparse_input/dense_shape*
T0	*
_output_shapes
: 
Į
9sequence_input_layer_1/col6_extend_1_embedding/Shape/CastCastJsequence_input_layer_1/col6_extend_1_embedding/to_sparse_input/dense_shape*

SrcT0	*

DstT0*
_output_shapes
:

=sequence_input_layer_1/col6_extend_1_embedding/assert_equal/yConst*
value	B :*
dtype0*
_output_shapes
: 
ß
Asequence_input_layer_1/col6_extend_1_embedding/assert_equal/EqualEqual3sequence_input_layer_1/col6_extend_1_embedding/Rank=sequence_input_layer_1/col6_extend_1_embedding/assert_equal/y*
_output_shapes
: *
T0

Asequence_input_layer_1/col6_extend_1_embedding/assert_equal/ConstConst*
valueB *
dtype0*
_output_shapes
: 
ä
?sequence_input_layer_1/col6_extend_1_embedding/assert_equal/AllAllAsequence_input_layer_1/col6_extend_1_embedding/assert_equal/EqualAsequence_input_layer_1/col6_extend_1_embedding/assert_equal/Const*
_output_shapes
: 
¼
Hsequence_input_layer_1/col6_extend_1_embedding/assert_equal/Assert/ConstConst*D
value;B9 B3Column col6_extend_1 expected ID tensor of rank 2. *
dtype0*
_output_shapes
: 

Jsequence_input_layer_1/col6_extend_1_embedding/assert_equal/Assert/Const_1Const*"
valueB Bid_tensor shape: *
dtype0*
_output_shapes
: 
Ä
Psequence_input_layer_1/col6_extend_1_embedding/assert_equal/Assert/Assert/data_0Const*D
value;B9 B3Column col6_extend_1 expected ID tensor of rank 2. *
dtype0*
_output_shapes
: 
¢
Psequence_input_layer_1/col6_extend_1_embedding/assert_equal/Assert/Assert/data_1Const*
_output_shapes
: *"
valueB Bid_tensor shape: *
dtype0

Isequence_input_layer_1/col6_extend_1_embedding/assert_equal/Assert/AssertAssert?sequence_input_layer_1/col6_extend_1_embedding/assert_equal/AllPsequence_input_layer_1/col6_extend_1_embedding/assert_equal/Assert/Assert/data_0Psequence_input_layer_1/col6_extend_1_embedding/assert_equal/Assert/Assert/data_19sequence_input_layer_1/col6_extend_1_embedding/Shape/Cast*
T
2
Ō
>sequence_input_layer_1/col6_extend_1_embedding/concat/values_1ConstJ^sequence_input_layer_1/col6_extend_1_embedding/assert_equal/Assert/Assert*
valueB	R*
dtype0	*
_output_shapes
:
Č
:sequence_input_layer_1/col6_extend_1_embedding/concat/axisConstJ^sequence_input_layer_1/col6_extend_1_embedding/assert_equal/Assert/Assert*
value	B : *
dtype0*
_output_shapes
: 
·
5sequence_input_layer_1/col6_extend_1_embedding/concatConcatV2Jsequence_input_layer_1/col6_extend_1_embedding/to_sparse_input/dense_shape>sequence_input_layer_1/col6_extend_1_embedding/concat/values_1:sequence_input_layer_1/col6_extend_1_embedding/concat/axis*
T0	*
N*
_output_shapes
:
Ē
<sequence_input_layer_1/col6_extend_1_embedding/SparseReshapeSparseReshapeFsequence_input_layer_1/col6_extend_1_embedding/to_sparse_input/indicesJsequence_input_layer_1/col6_extend_1_embedding/to_sparse_input/dense_shape5sequence_input_layer_1/col6_extend_1_embedding/concat*-
_output_shapes
:’’’’’’’’’:

Esequence_input_layer_1/col6_extend_1_embedding/SparseReshape/IdentityIdentity@sequence_input_layer_1/col6_extend_1_embedding/hash_table_LookupJ^sequence_input_layer_1/col6_extend_1_embedding/assert_equal/Assert/Assert*#
_output_shapes
:’’’’’’’’’*
T0	

csequence_input_layer_1/col6_extend_1_embedding/embedding_weights/Initializer/truncated_normal/shapeConst*
valueB"      *S
_classI
GEloc:@sequence_input_layer_1/col6_extend_1_embedding/embedding_weights*
dtype0*
_output_shapes
:
ü
bsequence_input_layer_1/col6_extend_1_embedding/embedding_weights/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    *S
_classI
GEloc:@sequence_input_layer_1/col6_extend_1_embedding/embedding_weights
ž
dsequence_input_layer_1/col6_extend_1_embedding/embedding_weights/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *   ?*S
_classI
GEloc:@sequence_input_layer_1/col6_extend_1_embedding/embedding_weights
š
msequence_input_layer_1/col6_extend_1_embedding/embedding_weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalcsequence_input_layer_1/col6_extend_1_embedding/embedding_weights/Initializer/truncated_normal/shape*
dtype0*
_output_shapes

:*
T0*S
_classI
GEloc:@sequence_input_layer_1/col6_extend_1_embedding/embedding_weights
»
asequence_input_layer_1/col6_extend_1_embedding/embedding_weights/Initializer/truncated_normal/mulMulmsequence_input_layer_1/col6_extend_1_embedding/embedding_weights/Initializer/truncated_normal/TruncatedNormaldsequence_input_layer_1/col6_extend_1_embedding/embedding_weights/Initializer/truncated_normal/stddev*
_output_shapes

:*
T0*S
_classI
GEloc:@sequence_input_layer_1/col6_extend_1_embedding/embedding_weights
©
]sequence_input_layer_1/col6_extend_1_embedding/embedding_weights/Initializer/truncated_normalAddasequence_input_layer_1/col6_extend_1_embedding/embedding_weights/Initializer/truncated_normal/mulbsequence_input_layer_1/col6_extend_1_embedding/embedding_weights/Initializer/truncated_normal/mean*S
_classI
GEloc:@sequence_input_layer_1/col6_extend_1_embedding/embedding_weights*
_output_shapes

:*
T0
å
@sequence_input_layer_1/col6_extend_1_embedding/embedding_weights
VariableV2*S
_classI
GEloc:@sequence_input_layer_1/col6_extend_1_embedding/embedding_weights*
shape
:*
dtype0*
_output_shapes

:
š
Gsequence_input_layer_1/col6_extend_1_embedding/embedding_weights/AssignAssign@sequence_input_layer_1/col6_extend_1_embedding/embedding_weights]sequence_input_layer_1/col6_extend_1_embedding/embedding_weights/Initializer/truncated_normal*
_output_shapes

:*
T0*S
_classI
GEloc:@sequence_input_layer_1/col6_extend_1_embedding/embedding_weights

Esequence_input_layer_1/col6_extend_1_embedding/embedding_weights/readIdentity@sequence_input_layer_1/col6_extend_1_embedding/embedding_weights*S
_classI
GEloc:@sequence_input_layer_1/col6_extend_1_embedding/embedding_weights*
_output_shapes

:*
T0
¤
Zsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:
£
Ysequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/Slice/sizeConst*
dtype0*
_output_shapes
:*
valueB:

Tsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/SliceSlice>sequence_input_layer_1/col6_extend_1_embedding/SparseReshape:1Zsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/Slice/beginYsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/Slice/size*
T0	*
Index0*
_output_shapes
:

Tsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Ø
Ssequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/ProdProdTsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/SliceTsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/Const*
_output_shapes
: *
T0	
”
_sequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 

\sequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/GatherV2/axisConst*
dtype0*
_output_shapes
: *
value	B : 
¦
Wsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/GatherV2GatherV2>sequence_input_layer_1/col6_extend_1_embedding/SparseReshape:1_sequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/GatherV2/indices\sequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/GatherV2/axis*
Tindices0*
Tparams0	*
_output_shapes
: *
Taxis0
¹
Usequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/Cast/xPackSsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/ProdWsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/GatherV2*
T0	*
N*
_output_shapes
:
ń
\sequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/SparseReshapeSparseReshape<sequence_input_layer_1/col6_extend_1_embedding/SparseReshape>sequence_input_layer_1/col6_extend_1_embedding/SparseReshape:1Usequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/Cast/x*-
_output_shapes
:’’’’’’’’’:
ę
esequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/SparseReshape/IdentityIdentityEsequence_input_layer_1/col6_extend_1_embedding/SparseReshape/Identity*
T0	*#
_output_shapes
:’’’’’’’’’

]sequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/GreaterEqual/yConst*
dtype0	*
_output_shapes
: *
value	B	 R 
ß
[sequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/GreaterEqualGreaterEqualesequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/SparseReshape/Identity]sequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/GreaterEqual/y*
T0	*#
_output_shapes
:’’’’’’’’’
ć
Tsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/WhereWhere[sequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/GreaterEqual*'
_output_shapes
:’’’’’’’’’
Æ
\sequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/Reshape/shapeConst*
_output_shapes
:*
valueB:
’’’’’’’’’*
dtype0
Ć
Vsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/ReshapeReshapeTsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/Where\sequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/Reshape/shape*
T0	*#
_output_shapes
:’’’’’’’’’
 
^sequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/GatherV2_1/axisConst*
dtype0*
_output_shapes
: *
value	B : 
Š
Ysequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/GatherV2_1GatherV2\sequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/SparseReshapeVsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/Reshape^sequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/GatherV2_1/axis*
Tindices0	*
Tparams0	*'
_output_shapes
:’’’’’’’’’*
Taxis0
 
^sequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Õ
Ysequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/GatherV2_2GatherV2esequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/SparseReshape/IdentityVsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/Reshape^sequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/GatherV2_2/axis*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:’’’’’’’’’
č
Wsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/IdentityIdentity^sequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/SparseReshape:1*
_output_shapes
:*
T0	
Ŗ
hsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
å
vsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsYsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/GatherV2_1Ysequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/GatherV2_2Wsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/Identityhsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’
Ė
zsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
Ķ
|sequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
Ķ
|sequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
é
tsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicevsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowszsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/embedding_lookup_sparse/strided_slice/stack|sequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1|sequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2*

begin_mask*
end_mask*#
_output_shapes
:’’’’’’’’’*
T0	*
Index0*
shrink_axis_mask
¦
ksequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/embedding_lookup_sparse/CastCasttsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/embedding_lookup_sparse/strided_slice*

SrcT0	*

DstT0*#
_output_shapes
:’’’’’’’’’
®
msequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/embedding_lookup_sparse/UniqueUniquexsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:1*
T0	*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’

|sequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*
value	B : *S
_classI
GEloc:@sequence_input_layer_1/col6_extend_1_embedding/embedding_weights*
dtype0*
_output_shapes
: 
į
wsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV2Esequence_input_layer_1/col6_extend_1_embedding/embedding_weights/readmsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/embedding_lookup_sparse/Unique|sequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis*
Tindices0	*
Tparams0*S
_classI
GEloc:@sequence_input_layer_1/col6_extend_1_embedding/embedding_weights*'
_output_shapes
:’’’’’’’’’*
Taxis0
ø
sequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentitywsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/embedding_lookup_sparse/embedding_lookup*
T0*'
_output_shapes
:’’’’’’’’’

fsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/embedding_lookup_sparseSparseSegmentMeansequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identityosequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/embedding_lookup_sparse/Unique:1ksequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:’’’’’’’’’
Æ
^sequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/Reshape_1/shapeConst*
_output_shapes
:*
valueB"’’’’   *
dtype0
ļ
Xsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/Reshape_1Reshapexsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:2^sequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/Reshape_1/shape*
T0
*'
_output_shapes
:’’’’’’’’’
ź
Tsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/ShapeShapefsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/embedding_lookup_sparse*
_output_shapes
:*
T0
¬
bsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
®
dsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
®
dsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ø
\sequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/strided_sliceStridedSliceTsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/Shapebsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/strided_slice/stackdsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/strided_slice/stack_1dsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/strided_slice/stack_2*
_output_shapes
: *
T0*
Index0*
shrink_axis_mask

Vsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
Ą
Tsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/stackPackVsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/stack/0\sequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/strided_slice*
N*
_output_shapes
:*
T0
Ę
Ssequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/TileTileXsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/Reshape_1Tsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/stack*
T0
*0
_output_shapes
:’’’’’’’’’’’’’’’’’’

Ysequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/zeros_like	ZerosLikefsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/embedding_lookup_sparse*'
_output_shapes
:’’’’’’’’’*
T0
¢
Nsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weightsSelectSsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/TileYsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/zeros_likefsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/embedding_lookup_sparse*'
_output_shapes
:’’’’’’’’’*
T0
Ń
Usequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/Cast_1Cast>sequence_input_layer_1/col6_extend_1_embedding/SparseReshape:1*

DstT0*
_output_shapes
:*

SrcT0	
¦
\sequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/Slice_1/beginConst*
_output_shapes
:*
valueB: *
dtype0
„
[sequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
£
Vsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/Slice_1SliceUsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/Cast_1\sequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/Slice_1/begin[sequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/Slice_1/size*
T0*
Index0*
_output_shapes
:
Ō
Vsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/Shape_1ShapeNsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights*
_output_shapes
:*
T0
¦
\sequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
®
[sequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/Slice_2/sizeConst*
valueB:
’’’’’’’’’*
dtype0*
_output_shapes
:
¤
Vsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/Slice_2SliceVsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/Shape_1\sequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/Slice_2/begin[sequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/Slice_2/size*
_output_shapes
:*
T0*
Index0

Zsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/concat/axisConst*
_output_shapes
: *
value	B : *
dtype0

Usequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/concatConcatV2Vsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/Slice_1Vsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/Slice_2Zsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/concat/axis*
T0*
N*
_output_shapes
:
É
Xsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/Reshape_2ReshapeNsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weightsUsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/concat*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’*
T0
Ŗ
5sequence_input_layer_1/col6_extend_1_embedding/Rank_1SizeJsequence_input_layer_1/col6_extend_1_embedding/to_sparse_input/dense_shape*
_output_shapes
: *
T0	
Ć
;sequence_input_layer_1/col6_extend_1_embedding/Shape_1/CastCastJsequence_input_layer_1/col6_extend_1_embedding/to_sparse_input/dense_shape*

DstT0*
_output_shapes
:*

SrcT0	

?sequence_input_layer_1/col6_extend_1_embedding/assert_equal_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
å
Csequence_input_layer_1/col6_extend_1_embedding/assert_equal_1/EqualEqual5sequence_input_layer_1/col6_extend_1_embedding/Rank_1?sequence_input_layer_1/col6_extend_1_embedding/assert_equal_1/y*
_output_shapes
: *
T0

Csequence_input_layer_1/col6_extend_1_embedding/assert_equal_1/ConstConst*
valueB *
dtype0*
_output_shapes
: 
ź
Asequence_input_layer_1/col6_extend_1_embedding/assert_equal_1/AllAllCsequence_input_layer_1/col6_extend_1_embedding/assert_equal_1/EqualCsequence_input_layer_1/col6_extend_1_embedding/assert_equal_1/Const*
_output_shapes
: 
¾
Jsequence_input_layer_1/col6_extend_1_embedding/assert_equal_1/Assert/ConstConst*D
value;B9 B3Column col6_extend_1 expected ID tensor of rank 2. *
dtype0*
_output_shapes
: 

Lsequence_input_layer_1/col6_extend_1_embedding/assert_equal_1/Assert/Const_1Const*"
valueB Bid_tensor shape: *
dtype0*
_output_shapes
: 
Ę
Rsequence_input_layer_1/col6_extend_1_embedding/assert_equal_1/Assert/Assert/data_0Const*
_output_shapes
: *D
value;B9 B3Column col6_extend_1 expected ID tensor of rank 2. *
dtype0
¤
Rsequence_input_layer_1/col6_extend_1_embedding/assert_equal_1/Assert/Assert/data_1Const*"
valueB Bid_tensor shape: *
dtype0*
_output_shapes
: 

Ksequence_input_layer_1/col6_extend_1_embedding/assert_equal_1/Assert/AssertAssertAsequence_input_layer_1/col6_extend_1_embedding/assert_equal_1/AllRsequence_input_layer_1/col6_extend_1_embedding/assert_equal_1/Assert/Assert/data_0Rsequence_input_layer_1/col6_extend_1_embedding/assert_equal_1/Assert/Assert/data_1;sequence_input_layer_1/col6_extend_1_embedding/Shape_1/Cast*
T
2
Ų
@sequence_input_layer_1/col6_extend_1_embedding/concat_1/values_1ConstL^sequence_input_layer_1/col6_extend_1_embedding/assert_equal_1/Assert/Assert*
valueB	R*
dtype0	*
_output_shapes
:
Ģ
<sequence_input_layer_1/col6_extend_1_embedding/concat_1/axisConstL^sequence_input_layer_1/col6_extend_1_embedding/assert_equal_1/Assert/Assert*
value	B : *
dtype0*
_output_shapes
: 
½
7sequence_input_layer_1/col6_extend_1_embedding/concat_1ConcatV2Jsequence_input_layer_1/col6_extend_1_embedding/to_sparse_input/dense_shape@sequence_input_layer_1/col6_extend_1_embedding/concat_1/values_1<sequence_input_layer_1/col6_extend_1_embedding/concat_1/axis*
N*
_output_shapes
:*
T0	
Ė
>sequence_input_layer_1/col6_extend_1_embedding/SparseReshape_1SparseReshapeFsequence_input_layer_1/col6_extend_1_embedding/to_sparse_input/indicesJsequence_input_layer_1/col6_extend_1_embedding/to_sparse_input/dense_shape7sequence_input_layer_1/col6_extend_1_embedding/concat_1*-
_output_shapes
:’’’’’’’’’:

Gsequence_input_layer_1/col6_extend_1_embedding/SparseReshape_1/IdentityIdentity@sequence_input_layer_1/col6_extend_1_embedding/hash_table_LookupL^sequence_input_layer_1/col6_extend_1_embedding/assert_equal_1/Assert/Assert*#
_output_shapes
:’’’’’’’’’*
T0	
£
Rsequence_input_layer_1/col6_extend_1_embedding/sequence_length/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
„
Tsequence_input_layer_1/col6_extend_1_embedding/sequence_length/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
„
Tsequence_input_layer_1/col6_extend_1_embedding/sequence_length/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:

Lsequence_input_layer_1/col6_extend_1_embedding/sequence_length/strided_sliceStridedSlice>sequence_input_layer_1/col6_extend_1_embedding/SparseReshape_1Rsequence_input_layer_1/col6_extend_1_embedding/sequence_length/strided_slice/stackTsequence_input_layer_1/col6_extend_1_embedding/sequence_length/strided_slice/stack_1Tsequence_input_layer_1/col6_extend_1_embedding/sequence_length/strided_slice/stack_2*
shrink_axis_mask*

begin_mask*
end_mask*#
_output_shapes
:’’’’’’’’’*
T0	*
Index0
„
Tsequence_input_layer_1/col6_extend_1_embedding/sequence_length/strided_slice_1/stackConst*
valueB"       *
dtype0*
_output_shapes
:
§
Vsequence_input_layer_1/col6_extend_1_embedding/sequence_length/strided_slice_1/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
§
Vsequence_input_layer_1/col6_extend_1_embedding/sequence_length/strided_slice_1/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:

Nsequence_input_layer_1/col6_extend_1_embedding/sequence_length/strided_slice_1StridedSlice>sequence_input_layer_1/col6_extend_1_embedding/SparseReshape_1Tsequence_input_layer_1/col6_extend_1_embedding/sequence_length/strided_slice_1/stackVsequence_input_layer_1/col6_extend_1_embedding/sequence_length/strided_slice_1/stack_1Vsequence_input_layer_1/col6_extend_1_embedding/sequence_length/strided_slice_1/stack_2*
Index0*
T0	*
shrink_axis_mask*

begin_mask*
end_mask*#
_output_shapes
:’’’’’’’’’
Ģ
Nsequence_input_layer_1/col6_extend_1_embedding/sequence_length/ones_like/ShapeShapeNsequence_input_layer_1/col6_extend_1_embedding/sequence_length/strided_slice_1*
_output_shapes
:*
T0	

Nsequence_input_layer_1/col6_extend_1_embedding/sequence_length/ones_like/ConstConst*
value	B	 R*
dtype0	*
_output_shapes
: 

Hsequence_input_layer_1/col6_extend_1_embedding/sequence_length/ones_likeFillNsequence_input_layer_1/col6_extend_1_embedding/sequence_length/ones_like/ShapeNsequence_input_layer_1/col6_extend_1_embedding/sequence_length/ones_like/Const*
T0	*#
_output_shapes
:’’’’’’’’’

Bsequence_input_layer_1/col6_extend_1_embedding/sequence_length/addAddNsequence_input_layer_1/col6_extend_1_embedding/sequence_length/strided_slice_1Hsequence_input_layer_1/col6_extend_1_embedding/sequence_length/ones_like*
T0	*#
_output_shapes
:’’’’’’’’’
§
Isequence_input_layer_1/col6_extend_1_embedding/sequence_length/SegmentMax
SegmentMaxBsequence_input_layer_1/col6_extend_1_embedding/sequence_length/addLsequence_input_layer_1/col6_extend_1_embedding/sequence_length/strided_slice*#
_output_shapes
:’’’’’’’’’*
Tindices0	*
T0	

Hsequence_input_layer_1/col6_extend_1_embedding/sequence_length/truediv/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
Ū
Ksequence_input_layer_1/col6_extend_1_embedding/sequence_length/truediv/CastCastIsequence_input_layer_1/col6_extend_1_embedding/sequence_length/SegmentMax*

SrcT0	*

DstT0*#
_output_shapes
:’’’’’’’’’
Ļ
Msequence_input_layer_1/col6_extend_1_embedding/sequence_length/truediv/Cast_1CastHsequence_input_layer_1/col6_extend_1_embedding/sequence_length/truediv/y*

DstT0*
_output_shapes
: *

SrcT0	

Fsequence_input_layer_1/col6_extend_1_embedding/sequence_length/truedivRealDivKsequence_input_layer_1/col6_extend_1_embedding/sequence_length/truediv/CastMsequence_input_layer_1/col6_extend_1_embedding/sequence_length/truediv/Cast_1*
T0*#
_output_shapes
:’’’’’’’’’
Ó
Fsequence_input_layer_1/col6_extend_1_embedding/sequence_length/ToInt64CastFsequence_input_layer_1/col6_extend_1_embedding/sequence_length/truediv*

SrcT0*

DstT0	*#
_output_shapes
:’’’’’’’’’
Ē
Isequence_input_layer_1/col6_extend_1_embedding/sequence_length/Shape/CastCast@sequence_input_layer_1/col6_extend_1_embedding/SparseReshape_1:1*

SrcT0	*

DstT0*
_output_shapes
:

Tsequence_input_layer_1/col6_extend_1_embedding/sequence_length/strided_slice_2/stackConst*
_output_shapes
:*
valueB: *
dtype0
 
Vsequence_input_layer_1/col6_extend_1_embedding/sequence_length/strided_slice_2/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
 
Vsequence_input_layer_1/col6_extend_1_embedding/sequence_length/strided_slice_2/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
ó
Nsequence_input_layer_1/col6_extend_1_embedding/sequence_length/strided_slice_2StridedSliceIsequence_input_layer_1/col6_extend_1_embedding/sequence_length/Shape/CastTsequence_input_layer_1/col6_extend_1_embedding/sequence_length/strided_slice_2/stackVsequence_input_layer_1/col6_extend_1_embedding/sequence_length/strided_slice_2/stack_1Vsequence_input_layer_1/col6_extend_1_embedding/sequence_length/strided_slice_2/stack_2*
Index0*
T0*

begin_mask*
_output_shapes
:
¼
Fsequence_input_layer_1/col6_extend_1_embedding/sequence_length/Shape_1ShapeFsequence_input_layer_1/col6_extend_1_embedding/sequence_length/ToInt64*
_output_shapes
:*
T0	

Tsequence_input_layer_1/col6_extend_1_embedding/sequence_length/strided_slice_3/stackConst*
valueB: *
dtype0*
_output_shapes
:
 
Vsequence_input_layer_1/col6_extend_1_embedding/sequence_length/strided_slice_3/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
 
Vsequence_input_layer_1/col6_extend_1_embedding/sequence_length/strided_slice_3/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
š
Nsequence_input_layer_1/col6_extend_1_embedding/sequence_length/strided_slice_3StridedSliceFsequence_input_layer_1/col6_extend_1_embedding/sequence_length/Shape_1Tsequence_input_layer_1/col6_extend_1_embedding/sequence_length/strided_slice_3/stackVsequence_input_layer_1/col6_extend_1_embedding/sequence_length/strided_slice_3/stack_1Vsequence_input_layer_1/col6_extend_1_embedding/sequence_length/strided_slice_3/stack_2*
T0*
Index0*

begin_mask*
_output_shapes
:

Bsequence_input_layer_1/col6_extend_1_embedding/sequence_length/subSubNsequence_input_layer_1/col6_extend_1_embedding/sequence_length/strided_slice_2Nsequence_input_layer_1/col6_extend_1_embedding/sequence_length/strided_slice_3*
T0*
_output_shapes
:

Jsequence_input_layer_1/col6_extend_1_embedding/sequence_length/zeros/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 

Dsequence_input_layer_1/col6_extend_1_embedding/sequence_length/zerosFillBsequence_input_layer_1/col6_extend_1_embedding/sequence_length/subJsequence_input_layer_1/col6_extend_1_embedding/sequence_length/zeros/Const*
T0	*#
_output_shapes
:’’’’’’’’’

Csequence_input_layer_1/col6_extend_1_embedding/sequence_length/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ō
>sequence_input_layer_1/col6_extend_1_embedding/sequence_lengthConcatV2Fsequence_input_layer_1/col6_extend_1_embedding/sequence_length/ToInt64Dsequence_input_layer_1/col6_extend_1_embedding/sequence_length/zerosCsequence_input_layer_1/col6_extend_1_embedding/sequence_length/axis*
T0	*
N*#
_output_shapes
:’’’’’’’’’
¾
6sequence_input_layer_1/col6_extend_1_embedding/Shape_2ShapeXsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/Reshape_2*
T0*
_output_shapes
:

Bsequence_input_layer_1/col6_extend_1_embedding/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 

Dsequence_input_layer_1/col6_extend_1_embedding/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Dsequence_input_layer_1/col6_extend_1_embedding/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

<sequence_input_layer_1/col6_extend_1_embedding/strided_sliceStridedSlice6sequence_input_layer_1/col6_extend_1_embedding/Shape_2Bsequence_input_layer_1/col6_extend_1_embedding/strided_slice/stackDsequence_input_layer_1/col6_extend_1_embedding/strided_slice/stack_1Dsequence_input_layer_1/col6_extend_1_embedding/strided_slice/stack_2*
T0*
Index0*

begin_mask*
_output_shapes
:

@sequence_input_layer_1/col6_extend_1_embedding/concat_2/values_1Const*
valueB:*
dtype0*
_output_shapes
:
~
<sequence_input_layer_1/col6_extend_1_embedding/concat_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Æ
7sequence_input_layer_1/col6_extend_1_embedding/concat_2ConcatV2<sequence_input_layer_1/col6_extend_1_embedding/strided_slice@sequence_input_layer_1/col6_extend_1_embedding/concat_2/values_1<sequence_input_layer_1/col6_extend_1_embedding/concat_2/axis*
T0*
N*
_output_shapes
:

6sequence_input_layer_1/col6_extend_1_embedding/ReshapeReshapeXsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_embedding_weights/Reshape_27sequence_input_layer_1/col6_extend_1_embedding/concat_2*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’
s
(sequence_input_layer_1/concat/concat_dimConst*
valueB :
’’’’’’’’’*
dtype0*
_output_shapes
: 
 
sequence_input_layer_1/concatIdentity6sequence_input_layer_1/col6_extend_1_embedding/Reshape*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’

=sequence_input_layer_2/col6_extend_2_embedding/ExpandDims/dimConst*
valueB :
’’’’’’’’’*
dtype0*
_output_shapes
: 
Ķ
9sequence_input_layer_2/col6_extend_2_embedding/ExpandDims
ExpandDimshash_table_1_Lookup=sequence_input_layer_2/col6_extend_2_embedding/ExpandDims/dim*'
_output_shapes
:’’’’’’’’’*
T0

Msequence_input_layer_2/col6_extend_2_embedding/to_sparse_input/ignore_value/xConst*
valueB B *
dtype0*
_output_shapes
: 

Gsequence_input_layer_2/col6_extend_2_embedding/to_sparse_input/NotEqualNotEqual9sequence_input_layer_2/col6_extend_2_embedding/ExpandDimsMsequence_input_layer_2/col6_extend_2_embedding/to_sparse_input/ignore_value/x*
T0*'
_output_shapes
:’’’’’’’’’
Į
Fsequence_input_layer_2/col6_extend_2_embedding/to_sparse_input/indicesWhereGsequence_input_layer_2/col6_extend_2_embedding/to_sparse_input/NotEqual*'
_output_shapes
:’’’’’’’’’

Esequence_input_layer_2/col6_extend_2_embedding/to_sparse_input/valuesGatherNd9sequence_input_layer_2/col6_extend_2_embedding/ExpandDimsFsequence_input_layer_2/col6_extend_2_embedding/to_sparse_input/indices*
Tindices0	*
Tparams0*#
_output_shapes
:’’’’’’’’’
Ć
Jsequence_input_layer_2/col6_extend_2_embedding/to_sparse_input/dense_shapeShape9sequence_input_layer_2/col6_extend_2_embedding/ExpandDims*
T0*
out_type0	*
_output_shapes
:
å
Nsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_lookup/hash_tableHashTableV2*
value_dtype0	*
_output_shapes
: *J
shared_name;9hash_table_../data/vocabulary/vocabulary_extend_2_5_-2_-1*
	key_dtype0

Tsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_lookup/hash_table/ConstConst*
valueB	 R
’’’’’’’’’*
dtype0	*
_output_shapes
: 
Ļ
hsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_lookup/hash_table/table_init/asset_filepathConst*
dtype0*
_output_shapes
: *7
value.B, B&../data/vocabulary/vocabulary_extend_2
ü
Ysequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_lookup/hash_table/table_initInitializeTableFromTextFileV2Nsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_lookup/hash_tablehsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_lookup/hash_table/table_init/asset_filepath*
	key_indexž’’’’’’’’*
value_index’’’’’’’’’*

vocab_size
ž
@sequence_input_layer_2/col6_extend_2_embedding/hash_table_LookupLookupTableFindV2Nsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_lookup/hash_tableEsequence_input_layer_2/col6_extend_2_embedding/to_sparse_input/valuesTsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_lookup/hash_table/Const*	
Tin0*#
_output_shapes
:’’’’’’’’’*

Tout0	
Ø
3sequence_input_layer_2/col6_extend_2_embedding/RankSizeJsequence_input_layer_2/col6_extend_2_embedding/to_sparse_input/dense_shape*
T0	*
_output_shapes
: 
Į
9sequence_input_layer_2/col6_extend_2_embedding/Shape/CastCastJsequence_input_layer_2/col6_extend_2_embedding/to_sparse_input/dense_shape*

DstT0*
_output_shapes
:*

SrcT0	

=sequence_input_layer_2/col6_extend_2_embedding/assert_equal/yConst*
value	B :*
dtype0*
_output_shapes
: 
ß
Asequence_input_layer_2/col6_extend_2_embedding/assert_equal/EqualEqual3sequence_input_layer_2/col6_extend_2_embedding/Rank=sequence_input_layer_2/col6_extend_2_embedding/assert_equal/y*
T0*
_output_shapes
: 

Asequence_input_layer_2/col6_extend_2_embedding/assert_equal/ConstConst*
valueB *
dtype0*
_output_shapes
: 
ä
?sequence_input_layer_2/col6_extend_2_embedding/assert_equal/AllAllAsequence_input_layer_2/col6_extend_2_embedding/assert_equal/EqualAsequence_input_layer_2/col6_extend_2_embedding/assert_equal/Const*
_output_shapes
: 
¼
Hsequence_input_layer_2/col6_extend_2_embedding/assert_equal/Assert/ConstConst*D
value;B9 B3Column col6_extend_2 expected ID tensor of rank 2. *
dtype0*
_output_shapes
: 

Jsequence_input_layer_2/col6_extend_2_embedding/assert_equal/Assert/Const_1Const*"
valueB Bid_tensor shape: *
dtype0*
_output_shapes
: 
Ä
Psequence_input_layer_2/col6_extend_2_embedding/assert_equal/Assert/Assert/data_0Const*D
value;B9 B3Column col6_extend_2 expected ID tensor of rank 2. *
dtype0*
_output_shapes
: 
¢
Psequence_input_layer_2/col6_extend_2_embedding/assert_equal/Assert/Assert/data_1Const*
_output_shapes
: *"
valueB Bid_tensor shape: *
dtype0

Isequence_input_layer_2/col6_extend_2_embedding/assert_equal/Assert/AssertAssert?sequence_input_layer_2/col6_extend_2_embedding/assert_equal/AllPsequence_input_layer_2/col6_extend_2_embedding/assert_equal/Assert/Assert/data_0Psequence_input_layer_2/col6_extend_2_embedding/assert_equal/Assert/Assert/data_19sequence_input_layer_2/col6_extend_2_embedding/Shape/Cast*
T
2
Ō
>sequence_input_layer_2/col6_extend_2_embedding/concat/values_1ConstJ^sequence_input_layer_2/col6_extend_2_embedding/assert_equal/Assert/Assert*
_output_shapes
:*
valueB	R*
dtype0	
Č
:sequence_input_layer_2/col6_extend_2_embedding/concat/axisConstJ^sequence_input_layer_2/col6_extend_2_embedding/assert_equal/Assert/Assert*
dtype0*
_output_shapes
: *
value	B : 
·
5sequence_input_layer_2/col6_extend_2_embedding/concatConcatV2Jsequence_input_layer_2/col6_extend_2_embedding/to_sparse_input/dense_shape>sequence_input_layer_2/col6_extend_2_embedding/concat/values_1:sequence_input_layer_2/col6_extend_2_embedding/concat/axis*
T0	*
N*
_output_shapes
:
Ē
<sequence_input_layer_2/col6_extend_2_embedding/SparseReshapeSparseReshapeFsequence_input_layer_2/col6_extend_2_embedding/to_sparse_input/indicesJsequence_input_layer_2/col6_extend_2_embedding/to_sparse_input/dense_shape5sequence_input_layer_2/col6_extend_2_embedding/concat*-
_output_shapes
:’’’’’’’’’:

Esequence_input_layer_2/col6_extend_2_embedding/SparseReshape/IdentityIdentity@sequence_input_layer_2/col6_extend_2_embedding/hash_table_LookupJ^sequence_input_layer_2/col6_extend_2_embedding/assert_equal/Assert/Assert*
T0	*#
_output_shapes
:’’’’’’’’’

csequence_input_layer_2/col6_extend_2_embedding/embedding_weights/Initializer/truncated_normal/shapeConst*
valueB"      *S
_classI
GEloc:@sequence_input_layer_2/col6_extend_2_embedding/embedding_weights*
dtype0*
_output_shapes
:
ü
bsequence_input_layer_2/col6_extend_2_embedding/embedding_weights/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *
valueB
 *    *S
_classI
GEloc:@sequence_input_layer_2/col6_extend_2_embedding/embedding_weights
ž
dsequence_input_layer_2/col6_extend_2_embedding/embedding_weights/Initializer/truncated_normal/stddevConst*
valueB
 *ó5?*S
_classI
GEloc:@sequence_input_layer_2/col6_extend_2_embedding/embedding_weights*
dtype0*
_output_shapes
: 
š
msequence_input_layer_2/col6_extend_2_embedding/embedding_weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalcsequence_input_layer_2/col6_extend_2_embedding/embedding_weights/Initializer/truncated_normal/shape*
T0*S
_classI
GEloc:@sequence_input_layer_2/col6_extend_2_embedding/embedding_weights*
dtype0*
_output_shapes

:
»
asequence_input_layer_2/col6_extend_2_embedding/embedding_weights/Initializer/truncated_normal/mulMulmsequence_input_layer_2/col6_extend_2_embedding/embedding_weights/Initializer/truncated_normal/TruncatedNormaldsequence_input_layer_2/col6_extend_2_embedding/embedding_weights/Initializer/truncated_normal/stddev*S
_classI
GEloc:@sequence_input_layer_2/col6_extend_2_embedding/embedding_weights*
_output_shapes

:*
T0
©
]sequence_input_layer_2/col6_extend_2_embedding/embedding_weights/Initializer/truncated_normalAddasequence_input_layer_2/col6_extend_2_embedding/embedding_weights/Initializer/truncated_normal/mulbsequence_input_layer_2/col6_extend_2_embedding/embedding_weights/Initializer/truncated_normal/mean*
T0*S
_classI
GEloc:@sequence_input_layer_2/col6_extend_2_embedding/embedding_weights*
_output_shapes

:
å
@sequence_input_layer_2/col6_extend_2_embedding/embedding_weights
VariableV2*
dtype0*
_output_shapes

:*S
_classI
GEloc:@sequence_input_layer_2/col6_extend_2_embedding/embedding_weights*
shape
:
š
Gsequence_input_layer_2/col6_extend_2_embedding/embedding_weights/AssignAssign@sequence_input_layer_2/col6_extend_2_embedding/embedding_weights]sequence_input_layer_2/col6_extend_2_embedding/embedding_weights/Initializer/truncated_normal*
_output_shapes

:*
T0*S
_classI
GEloc:@sequence_input_layer_2/col6_extend_2_embedding/embedding_weights

Esequence_input_layer_2/col6_extend_2_embedding/embedding_weights/readIdentity@sequence_input_layer_2/col6_extend_2_embedding/embedding_weights*S
_classI
GEloc:@sequence_input_layer_2/col6_extend_2_embedding/embedding_weights*
_output_shapes

:*
T0
¤
Zsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:
£
Ysequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:

Tsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/SliceSlice>sequence_input_layer_2/col6_extend_2_embedding/SparseReshape:1Zsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/Slice/beginYsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/Slice/size*
_output_shapes
:*
T0	*
Index0

Tsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Ø
Ssequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/ProdProdTsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/SliceTsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/Const*
_output_shapes
: *
T0	
”
_sequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 

\sequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
¦
Wsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/GatherV2GatherV2>sequence_input_layer_2/col6_extend_2_embedding/SparseReshape:1_sequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/GatherV2/indices\sequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/GatherV2/axis*
_output_shapes
: *
Taxis0*
Tindices0*
Tparams0	
¹
Usequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/Cast/xPackSsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/ProdWsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/GatherV2*
T0	*
N*
_output_shapes
:
ń
\sequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/SparseReshapeSparseReshape<sequence_input_layer_2/col6_extend_2_embedding/SparseReshape>sequence_input_layer_2/col6_extend_2_embedding/SparseReshape:1Usequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/Cast/x*-
_output_shapes
:’’’’’’’’’:
ę
esequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/SparseReshape/IdentityIdentityEsequence_input_layer_2/col6_extend_2_embedding/SparseReshape/Identity*
T0	*#
_output_shapes
:’’’’’’’’’

]sequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
ß
[sequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/GreaterEqualGreaterEqualesequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/SparseReshape/Identity]sequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/GreaterEqual/y*
T0	*#
_output_shapes
:’’’’’’’’’
ć
Tsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/WhereWhere[sequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/GreaterEqual*'
_output_shapes
:’’’’’’’’’
Æ
\sequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
’’’’’’’’’
Ć
Vsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/ReshapeReshapeTsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/Where\sequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/Reshape/shape*#
_output_shapes
:’’’’’’’’’*
T0	
 
^sequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Š
Ysequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/GatherV2_1GatherV2\sequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/SparseReshapeVsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/Reshape^sequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/GatherV2_1/axis*
Tindices0	*
Tparams0	*'
_output_shapes
:’’’’’’’’’*
Taxis0
 
^sequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Õ
Ysequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/GatherV2_2GatherV2esequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/SparseReshape/IdentityVsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/Reshape^sequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/GatherV2_2/axis*#
_output_shapes
:’’’’’’’’’*
Taxis0*
Tindices0	*
Tparams0	
č
Wsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/IdentityIdentity^sequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/SparseReshape:1*
_output_shapes
:*
T0	
Ŗ
hsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
å
vsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsYsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/GatherV2_1Ysequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/GatherV2_2Wsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/Identityhsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/SparseFillEmptyRows/Const*T
_output_shapesB
@:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
T0	
Ė
zsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
Ķ
|sequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
Ķ
|sequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
é
tsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/embedding_lookup_sparse/strided_sliceStridedSlicevsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRowszsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/embedding_lookup_sparse/strided_slice/stack|sequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/embedding_lookup_sparse/strided_slice/stack_1|sequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/embedding_lookup_sparse/strided_slice/stack_2*
Index0*
T0	*
shrink_axis_mask*

begin_mask*
end_mask*#
_output_shapes
:’’’’’’’’’
¦
ksequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/embedding_lookup_sparse/CastCasttsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/embedding_lookup_sparse/strided_slice*

DstT0*#
_output_shapes
:’’’’’’’’’*

SrcT0	
®
msequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/embedding_lookup_sparse/UniqueUniquexsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0	

|sequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/embedding_lookup_sparse/embedding_lookup/axisConst*
value	B : *S
_classI
GEloc:@sequence_input_layer_2/col6_extend_2_embedding/embedding_weights*
dtype0*
_output_shapes
: 
į
wsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/embedding_lookup_sparse/embedding_lookupGatherV2Esequence_input_layer_2/col6_extend_2_embedding/embedding_weights/readmsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/embedding_lookup_sparse/Unique|sequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/embedding_lookup_sparse/embedding_lookup/axis*
Tindices0	*
Tparams0*S
_classI
GEloc:@sequence_input_layer_2/col6_extend_2_embedding/embedding_weights*'
_output_shapes
:’’’’’’’’’*
Taxis0
ø
sequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/embedding_lookup_sparse/embedding_lookup/IdentityIdentitywsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/embedding_lookup_sparse/embedding_lookup*
T0*'
_output_shapes
:’’’’’’’’’

fsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/embedding_lookup_sparseSparseSegmentMeansequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/embedding_lookup_sparse/embedding_lookup/Identityosequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/embedding_lookup_sparse/Unique:1ksequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:’’’’’’’’’
Æ
^sequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB"’’’’   
ļ
Xsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/Reshape_1Reshapexsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/SparseFillEmptyRows/SparseFillEmptyRows:2^sequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/Reshape_1/shape*'
_output_shapes
:’’’’’’’’’*
T0

ź
Tsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/ShapeShapefsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/embedding_lookup_sparse*
_output_shapes
:*
T0
¬
bsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
®
dsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
®
dsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ø
\sequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/strided_sliceStridedSliceTsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/Shapebsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/strided_slice/stackdsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/strided_slice/stack_1dsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/strided_slice/stack_2*
_output_shapes
: *
T0*
Index0*
shrink_axis_mask

Vsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/stack/0Const*
dtype0*
_output_shapes
: *
value	B :
Ą
Tsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/stackPackVsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/stack/0\sequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/strided_slice*
T0*
N*
_output_shapes
:
Ę
Ssequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/TileTileXsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/Reshape_1Tsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/stack*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
T0


Ysequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/zeros_like	ZerosLikefsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/embedding_lookup_sparse*'
_output_shapes
:’’’’’’’’’*
T0
¢
Nsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weightsSelectSsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/TileYsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/zeros_likefsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:’’’’’’’’’
Ń
Usequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/Cast_1Cast>sequence_input_layer_2/col6_extend_2_embedding/SparseReshape:1*

SrcT0	*

DstT0*
_output_shapes
:
¦
\sequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:
„
[sequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
£
Vsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/Slice_1SliceUsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/Cast_1\sequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/Slice_1/begin[sequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/Slice_1/size*
_output_shapes
:*
T0*
Index0
Ō
Vsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/Shape_1ShapeNsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights*
_output_shapes
:*
T0
¦
\sequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
®
[sequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/Slice_2/sizeConst*
dtype0*
_output_shapes
:*
valueB:
’’’’’’’’’
¤
Vsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/Slice_2SliceVsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/Shape_1\sequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/Slice_2/begin[sequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/Slice_2/size*
T0*
Index0*
_output_shapes
:

Zsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 

Usequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/concatConcatV2Vsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/Slice_1Vsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/Slice_2Zsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/concat/axis*
T0*
N*
_output_shapes
:
É
Xsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/Reshape_2ReshapeNsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weightsUsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/concat*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’*
T0
Ŗ
5sequence_input_layer_2/col6_extend_2_embedding/Rank_1SizeJsequence_input_layer_2/col6_extend_2_embedding/to_sparse_input/dense_shape*
T0	*
_output_shapes
: 
Ć
;sequence_input_layer_2/col6_extend_2_embedding/Shape_1/CastCastJsequence_input_layer_2/col6_extend_2_embedding/to_sparse_input/dense_shape*

DstT0*
_output_shapes
:*

SrcT0	

?sequence_input_layer_2/col6_extend_2_embedding/assert_equal_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
å
Csequence_input_layer_2/col6_extend_2_embedding/assert_equal_1/EqualEqual5sequence_input_layer_2/col6_extend_2_embedding/Rank_1?sequence_input_layer_2/col6_extend_2_embedding/assert_equal_1/y*
_output_shapes
: *
T0

Csequence_input_layer_2/col6_extend_2_embedding/assert_equal_1/ConstConst*
dtype0*
_output_shapes
: *
valueB 
ź
Asequence_input_layer_2/col6_extend_2_embedding/assert_equal_1/AllAllCsequence_input_layer_2/col6_extend_2_embedding/assert_equal_1/EqualCsequence_input_layer_2/col6_extend_2_embedding/assert_equal_1/Const*
_output_shapes
: 
¾
Jsequence_input_layer_2/col6_extend_2_embedding/assert_equal_1/Assert/ConstConst*D
value;B9 B3Column col6_extend_2 expected ID tensor of rank 2. *
dtype0*
_output_shapes
: 

Lsequence_input_layer_2/col6_extend_2_embedding/assert_equal_1/Assert/Const_1Const*"
valueB Bid_tensor shape: *
dtype0*
_output_shapes
: 
Ę
Rsequence_input_layer_2/col6_extend_2_embedding/assert_equal_1/Assert/Assert/data_0Const*D
value;B9 B3Column col6_extend_2 expected ID tensor of rank 2. *
dtype0*
_output_shapes
: 
¤
Rsequence_input_layer_2/col6_extend_2_embedding/assert_equal_1/Assert/Assert/data_1Const*"
valueB Bid_tensor shape: *
dtype0*
_output_shapes
: 

Ksequence_input_layer_2/col6_extend_2_embedding/assert_equal_1/Assert/AssertAssertAsequence_input_layer_2/col6_extend_2_embedding/assert_equal_1/AllRsequence_input_layer_2/col6_extend_2_embedding/assert_equal_1/Assert/Assert/data_0Rsequence_input_layer_2/col6_extend_2_embedding/assert_equal_1/Assert/Assert/data_1;sequence_input_layer_2/col6_extend_2_embedding/Shape_1/Cast*
T
2
Ų
@sequence_input_layer_2/col6_extend_2_embedding/concat_1/values_1ConstL^sequence_input_layer_2/col6_extend_2_embedding/assert_equal_1/Assert/Assert*
valueB	R*
dtype0	*
_output_shapes
:
Ģ
<sequence_input_layer_2/col6_extend_2_embedding/concat_1/axisConstL^sequence_input_layer_2/col6_extend_2_embedding/assert_equal_1/Assert/Assert*
value	B : *
dtype0*
_output_shapes
: 
½
7sequence_input_layer_2/col6_extend_2_embedding/concat_1ConcatV2Jsequence_input_layer_2/col6_extend_2_embedding/to_sparse_input/dense_shape@sequence_input_layer_2/col6_extend_2_embedding/concat_1/values_1<sequence_input_layer_2/col6_extend_2_embedding/concat_1/axis*
N*
_output_shapes
:*
T0	
Ė
>sequence_input_layer_2/col6_extend_2_embedding/SparseReshape_1SparseReshapeFsequence_input_layer_2/col6_extend_2_embedding/to_sparse_input/indicesJsequence_input_layer_2/col6_extend_2_embedding/to_sparse_input/dense_shape7sequence_input_layer_2/col6_extend_2_embedding/concat_1*-
_output_shapes
:’’’’’’’’’:

Gsequence_input_layer_2/col6_extend_2_embedding/SparseReshape_1/IdentityIdentity@sequence_input_layer_2/col6_extend_2_embedding/hash_table_LookupL^sequence_input_layer_2/col6_extend_2_embedding/assert_equal_1/Assert/Assert*
T0	*#
_output_shapes
:’’’’’’’’’
£
Rsequence_input_layer_2/col6_extend_2_embedding/sequence_length/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
„
Tsequence_input_layer_2/col6_extend_2_embedding/sequence_length/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
„
Tsequence_input_layer_2/col6_extend_2_embedding/sequence_length/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:

Lsequence_input_layer_2/col6_extend_2_embedding/sequence_length/strided_sliceStridedSlice>sequence_input_layer_2/col6_extend_2_embedding/SparseReshape_1Rsequence_input_layer_2/col6_extend_2_embedding/sequence_length/strided_slice/stackTsequence_input_layer_2/col6_extend_2_embedding/sequence_length/strided_slice/stack_1Tsequence_input_layer_2/col6_extend_2_embedding/sequence_length/strided_slice/stack_2*
shrink_axis_mask*

begin_mask*
end_mask*#
_output_shapes
:’’’’’’’’’*
T0	*
Index0
„
Tsequence_input_layer_2/col6_extend_2_embedding/sequence_length/strided_slice_1/stackConst*
valueB"       *
dtype0*
_output_shapes
:
§
Vsequence_input_layer_2/col6_extend_2_embedding/sequence_length/strided_slice_1/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
§
Vsequence_input_layer_2/col6_extend_2_embedding/sequence_length/strided_slice_1/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      

Nsequence_input_layer_2/col6_extend_2_embedding/sequence_length/strided_slice_1StridedSlice>sequence_input_layer_2/col6_extend_2_embedding/SparseReshape_1Tsequence_input_layer_2/col6_extend_2_embedding/sequence_length/strided_slice_1/stackVsequence_input_layer_2/col6_extend_2_embedding/sequence_length/strided_slice_1/stack_1Vsequence_input_layer_2/col6_extend_2_embedding/sequence_length/strided_slice_1/stack_2*
shrink_axis_mask*

begin_mask*
end_mask*#
_output_shapes
:’’’’’’’’’*
T0	*
Index0
Ģ
Nsequence_input_layer_2/col6_extend_2_embedding/sequence_length/ones_like/ShapeShapeNsequence_input_layer_2/col6_extend_2_embedding/sequence_length/strided_slice_1*
T0	*
_output_shapes
:

Nsequence_input_layer_2/col6_extend_2_embedding/sequence_length/ones_like/ConstConst*
dtype0	*
_output_shapes
: *
value	B	 R

Hsequence_input_layer_2/col6_extend_2_embedding/sequence_length/ones_likeFillNsequence_input_layer_2/col6_extend_2_embedding/sequence_length/ones_like/ShapeNsequence_input_layer_2/col6_extend_2_embedding/sequence_length/ones_like/Const*#
_output_shapes
:’’’’’’’’’*
T0	

Bsequence_input_layer_2/col6_extend_2_embedding/sequence_length/addAddNsequence_input_layer_2/col6_extend_2_embedding/sequence_length/strided_slice_1Hsequence_input_layer_2/col6_extend_2_embedding/sequence_length/ones_like*#
_output_shapes
:’’’’’’’’’*
T0	
§
Isequence_input_layer_2/col6_extend_2_embedding/sequence_length/SegmentMax
SegmentMaxBsequence_input_layer_2/col6_extend_2_embedding/sequence_length/addLsequence_input_layer_2/col6_extend_2_embedding/sequence_length/strided_slice*
Tindices0	*
T0	*#
_output_shapes
:’’’’’’’’’

Hsequence_input_layer_2/col6_extend_2_embedding/sequence_length/truediv/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
Ū
Ksequence_input_layer_2/col6_extend_2_embedding/sequence_length/truediv/CastCastIsequence_input_layer_2/col6_extend_2_embedding/sequence_length/SegmentMax*

SrcT0	*

DstT0*#
_output_shapes
:’’’’’’’’’
Ļ
Msequence_input_layer_2/col6_extend_2_embedding/sequence_length/truediv/Cast_1CastHsequence_input_layer_2/col6_extend_2_embedding/sequence_length/truediv/y*

SrcT0	*

DstT0*
_output_shapes
: 

Fsequence_input_layer_2/col6_extend_2_embedding/sequence_length/truedivRealDivKsequence_input_layer_2/col6_extend_2_embedding/sequence_length/truediv/CastMsequence_input_layer_2/col6_extend_2_embedding/sequence_length/truediv/Cast_1*
T0*#
_output_shapes
:’’’’’’’’’
Ó
Fsequence_input_layer_2/col6_extend_2_embedding/sequence_length/ToInt64CastFsequence_input_layer_2/col6_extend_2_embedding/sequence_length/truediv*

SrcT0*

DstT0	*#
_output_shapes
:’’’’’’’’’
Ē
Isequence_input_layer_2/col6_extend_2_embedding/sequence_length/Shape/CastCast@sequence_input_layer_2/col6_extend_2_embedding/SparseReshape_1:1*

SrcT0	*

DstT0*
_output_shapes
:

Tsequence_input_layer_2/col6_extend_2_embedding/sequence_length/strided_slice_2/stackConst*
_output_shapes
:*
valueB: *
dtype0
 
Vsequence_input_layer_2/col6_extend_2_embedding/sequence_length/strided_slice_2/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
 
Vsequence_input_layer_2/col6_extend_2_embedding/sequence_length/strided_slice_2/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ó
Nsequence_input_layer_2/col6_extend_2_embedding/sequence_length/strided_slice_2StridedSliceIsequence_input_layer_2/col6_extend_2_embedding/sequence_length/Shape/CastTsequence_input_layer_2/col6_extend_2_embedding/sequence_length/strided_slice_2/stackVsequence_input_layer_2/col6_extend_2_embedding/sequence_length/strided_slice_2/stack_1Vsequence_input_layer_2/col6_extend_2_embedding/sequence_length/strided_slice_2/stack_2*
_output_shapes
:*
T0*
Index0*

begin_mask
¼
Fsequence_input_layer_2/col6_extend_2_embedding/sequence_length/Shape_1ShapeFsequence_input_layer_2/col6_extend_2_embedding/sequence_length/ToInt64*
T0	*
_output_shapes
:

Tsequence_input_layer_2/col6_extend_2_embedding/sequence_length/strided_slice_3/stackConst*
valueB: *
dtype0*
_output_shapes
:
 
Vsequence_input_layer_2/col6_extend_2_embedding/sequence_length/strided_slice_3/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
 
Vsequence_input_layer_2/col6_extend_2_embedding/sequence_length/strided_slice_3/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
š
Nsequence_input_layer_2/col6_extend_2_embedding/sequence_length/strided_slice_3StridedSliceFsequence_input_layer_2/col6_extend_2_embedding/sequence_length/Shape_1Tsequence_input_layer_2/col6_extend_2_embedding/sequence_length/strided_slice_3/stackVsequence_input_layer_2/col6_extend_2_embedding/sequence_length/strided_slice_3/stack_1Vsequence_input_layer_2/col6_extend_2_embedding/sequence_length/strided_slice_3/stack_2*
Index0*
T0*

begin_mask*
_output_shapes
:

Bsequence_input_layer_2/col6_extend_2_embedding/sequence_length/subSubNsequence_input_layer_2/col6_extend_2_embedding/sequence_length/strided_slice_2Nsequence_input_layer_2/col6_extend_2_embedding/sequence_length/strided_slice_3*
T0*
_output_shapes
:

Jsequence_input_layer_2/col6_extend_2_embedding/sequence_length/zeros/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 

Dsequence_input_layer_2/col6_extend_2_embedding/sequence_length/zerosFillBsequence_input_layer_2/col6_extend_2_embedding/sequence_length/subJsequence_input_layer_2/col6_extend_2_embedding/sequence_length/zeros/Const*
T0	*#
_output_shapes
:’’’’’’’’’

Csequence_input_layer_2/col6_extend_2_embedding/sequence_length/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ō
>sequence_input_layer_2/col6_extend_2_embedding/sequence_lengthConcatV2Fsequence_input_layer_2/col6_extend_2_embedding/sequence_length/ToInt64Dsequence_input_layer_2/col6_extend_2_embedding/sequence_length/zerosCsequence_input_layer_2/col6_extend_2_embedding/sequence_length/axis*
N*#
_output_shapes
:’’’’’’’’’*
T0	
¾
6sequence_input_layer_2/col6_extend_2_embedding/Shape_2ShapeXsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/Reshape_2*
T0*
_output_shapes
:

Bsequence_input_layer_2/col6_extend_2_embedding/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0

Dsequence_input_layer_2/col6_extend_2_embedding/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:

Dsequence_input_layer_2/col6_extend_2_embedding/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

<sequence_input_layer_2/col6_extend_2_embedding/strided_sliceStridedSlice6sequence_input_layer_2/col6_extend_2_embedding/Shape_2Bsequence_input_layer_2/col6_extend_2_embedding/strided_slice/stackDsequence_input_layer_2/col6_extend_2_embedding/strided_slice/stack_1Dsequence_input_layer_2/col6_extend_2_embedding/strided_slice/stack_2*

begin_mask*
_output_shapes
:*
Index0*
T0

@sequence_input_layer_2/col6_extend_2_embedding/concat_2/values_1Const*
valueB:*
dtype0*
_output_shapes
:
~
<sequence_input_layer_2/col6_extend_2_embedding/concat_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Æ
7sequence_input_layer_2/col6_extend_2_embedding/concat_2ConcatV2<sequence_input_layer_2/col6_extend_2_embedding/strided_slice@sequence_input_layer_2/col6_extend_2_embedding/concat_2/values_1<sequence_input_layer_2/col6_extend_2_embedding/concat_2/axis*
_output_shapes
:*
T0*
N

6sequence_input_layer_2/col6_extend_2_embedding/ReshapeReshapeXsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_embedding_weights/Reshape_27sequence_input_layer_2/col6_extend_2_embedding/concat_2*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’*
T0
s
(sequence_input_layer_2/concat/concat_dimConst*
valueB :
’’’’’’’’’*
dtype0*
_output_shapes
: 
 
sequence_input_layer_2/concatIdentity6sequence_input_layer_2/col6_extend_2_embedding/Reshape*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’

4sequence_input_layer_3/col6_indicator/ExpandDims/dimConst*
valueB :
’’’’’’’’’*
dtype0*
_output_shapes
: 
µ
0sequence_input_layer_3/col6_indicator/ExpandDims
ExpandDimsPlaceholder_54sequence_input_layer_3/col6_indicator/ExpandDims/dim*
T0*'
_output_shapes
:’’’’’’’’’

Dsequence_input_layer_3/col6_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
valueB B *
dtype0
ō
>sequence_input_layer_3/col6_indicator/to_sparse_input/NotEqualNotEqual0sequence_input_layer_3/col6_indicator/ExpandDimsDsequence_input_layer_3/col6_indicator/to_sparse_input/ignore_value/x*'
_output_shapes
:’’’’’’’’’*
T0
Æ
=sequence_input_layer_3/col6_indicator/to_sparse_input/indicesWhere>sequence_input_layer_3/col6_indicator/to_sparse_input/NotEqual*'
_output_shapes
:’’’’’’’’’
ż
<sequence_input_layer_3/col6_indicator/to_sparse_input/valuesGatherNd0sequence_input_layer_3/col6_indicator/ExpandDims=sequence_input_layer_3/col6_indicator/to_sparse_input/indices*
Tindices0	*
Tparams0*#
_output_shapes
:’’’’’’’’’
±
Asequence_input_layer_3/col6_indicator/to_sparse_input/dense_shapeShape0sequence_input_layer_3/col6_indicator/ExpandDims*
T0*
out_type0	*
_output_shapes
:
Ļ
<sequence_input_layer_3/col6_indicator/col6_lookup/hash_tableHashTableV2*F
shared_name75hash_table_../data/vocabulary/vocabulary_col6_8_-2_-1*
	key_dtype0*
value_dtype0	*
_output_shapes
: 

Bsequence_input_layer_3/col6_indicator/col6_lookup/hash_table/ConstConst*
valueB	 R
’’’’’’’’’*
dtype0	*
_output_shapes
: 
¹
Vsequence_input_layer_3/col6_indicator/col6_lookup/hash_table/table_init/asset_filepathConst*3
value*B( B"../data/vocabulary/vocabulary_col6*
dtype0*
_output_shapes
: 
Ę
Gsequence_input_layer_3/col6_indicator/col6_lookup/hash_table/table_initInitializeTableFromTextFileV2<sequence_input_layer_3/col6_indicator/col6_lookup/hash_tableVsequence_input_layer_3/col6_indicator/col6_lookup/hash_table/table_init/asset_filepath*
	key_indexž’’’’’’’’*
value_index’’’’’’’’’*

vocab_size
Č
7sequence_input_layer_3/col6_indicator/hash_table_LookupLookupTableFindV2<sequence_input_layer_3/col6_indicator/col6_lookup/hash_table<sequence_input_layer_3/col6_indicator/to_sparse_input/valuesBsequence_input_layer_3/col6_indicator/col6_lookup/hash_table/Const*	
Tin0*#
_output_shapes
:’’’’’’’’’*

Tout0	

*sequence_input_layer_3/col6_indicator/RankSizeAsequence_input_layer_3/col6_indicator/to_sparse_input/dense_shape*
T0	*
_output_shapes
: 
Æ
0sequence_input_layer_3/col6_indicator/Shape/CastCastAsequence_input_layer_3/col6_indicator/to_sparse_input/dense_shape*

SrcT0	*

DstT0*
_output_shapes
:
v
4sequence_input_layer_3/col6_indicator/assert_equal/yConst*
value	B :*
dtype0*
_output_shapes
: 
Ä
8sequence_input_layer_3/col6_indicator/assert_equal/EqualEqual*sequence_input_layer_3/col6_indicator/Rank4sequence_input_layer_3/col6_indicator/assert_equal/y*
T0*
_output_shapes
: 
{
8sequence_input_layer_3/col6_indicator/assert_equal/ConstConst*
valueB *
dtype0*
_output_shapes
: 
É
6sequence_input_layer_3/col6_indicator/assert_equal/AllAll8sequence_input_layer_3/col6_indicator/assert_equal/Equal8sequence_input_layer_3/col6_indicator/assert_equal/Const*
_output_shapes
: 
Ŗ
?sequence_input_layer_3/col6_indicator/assert_equal/Assert/ConstConst*;
value2B0 B*Column col6 expected ID tensor of rank 2. *
dtype0*
_output_shapes
: 

Asequence_input_layer_3/col6_indicator/assert_equal/Assert/Const_1Const*"
valueB Bid_tensor shape: *
dtype0*
_output_shapes
: 
²
Gsequence_input_layer_3/col6_indicator/assert_equal/Assert/Assert/data_0Const*
_output_shapes
: *;
value2B0 B*Column col6 expected ID tensor of rank 2. *
dtype0

Gsequence_input_layer_3/col6_indicator/assert_equal/Assert/Assert/data_1Const*
dtype0*
_output_shapes
: *"
valueB Bid_tensor shape: 
Ō
@sequence_input_layer_3/col6_indicator/assert_equal/Assert/AssertAssert6sequence_input_layer_3/col6_indicator/assert_equal/AllGsequence_input_layer_3/col6_indicator/assert_equal/Assert/Assert/data_0Gsequence_input_layer_3/col6_indicator/assert_equal/Assert/Assert/data_10sequence_input_layer_3/col6_indicator/Shape/Cast*
T
2
Ā
5sequence_input_layer_3/col6_indicator/concat/values_1ConstA^sequence_input_layer_3/col6_indicator/assert_equal/Assert/Assert*
valueB	R*
dtype0	*
_output_shapes
:
¶
1sequence_input_layer_3/col6_indicator/concat/axisConstA^sequence_input_layer_3/col6_indicator/assert_equal/Assert/Assert*
value	B : *
dtype0*
_output_shapes
: 

,sequence_input_layer_3/col6_indicator/concatConcatV2Asequence_input_layer_3/col6_indicator/to_sparse_input/dense_shape5sequence_input_layer_3/col6_indicator/concat/values_11sequence_input_layer_3/col6_indicator/concat/axis*
T0	*
N*
_output_shapes
:
£
3sequence_input_layer_3/col6_indicator/SparseReshapeSparseReshape=sequence_input_layer_3/col6_indicator/to_sparse_input/indicesAsequence_input_layer_3/col6_indicator/to_sparse_input/dense_shape,sequence_input_layer_3/col6_indicator/concat*-
_output_shapes
:’’’’’’’’’:
ņ
<sequence_input_layer_3/col6_indicator/SparseReshape/IdentityIdentity7sequence_input_layer_3/col6_indicator/hash_table_LookupA^sequence_input_layer_3/col6_indicator/assert_equal/Assert/Assert*
T0	*#
_output_shapes
:’’’’’’’’’

Asequence_input_layer_3/col6_indicator/SparseToDense/default_valueConst*
valueB	 R
’’’’’’’’’*
dtype0	*
_output_shapes
: 

3sequence_input_layer_3/col6_indicator/SparseToDenseSparseToDense3sequence_input_layer_3/col6_indicator/SparseReshape5sequence_input_layer_3/col6_indicator/SparseReshape:1<sequence_input_layer_3/col6_indicator/SparseReshape/IdentityAsequence_input_layer_3/col6_indicator/SparseToDense/default_value*
T0	*=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’*
Tindices0	
x
3sequence_input_layer_3/col6_indicator/one_hot/ConstConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
z
5sequence_input_layer_3/col6_indicator/one_hot/Const_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
u
3sequence_input_layer_3/col6_indicator/one_hot/depthConst*
_output_shapes
: *
value	B :*
dtype0
{
6sequence_input_layer_3/col6_indicator/one_hot/on_valueConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
|
7sequence_input_layer_3/col6_indicator/one_hot/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
Ž
-sequence_input_layer_3/col6_indicator/one_hotOneHot3sequence_input_layer_3/col6_indicator/SparseToDense3sequence_input_layer_3/col6_indicator/one_hot/depth6sequence_input_layer_3/col6_indicator/one_hot/on_value7sequence_input_layer_3/col6_indicator/one_hot/off_value*A
_output_shapes/
-:+’’’’’’’’’’’’’’’’’’’’’’’’’’’*
T0

;sequence_input_layer_3/col6_indicator/Sum/reduction_indicesConst*
valueB:
ž’’’’’’’’*
dtype0*
_output_shapes
:
Ū
)sequence_input_layer_3/col6_indicator/SumSum-sequence_input_layer_3/col6_indicator/one_hot;sequence_input_layer_3/col6_indicator/Sum/reduction_indices*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’*
T0

,sequence_input_layer_3/col6_indicator/Rank_1SizeAsequence_input_layer_3/col6_indicator/to_sparse_input/dense_shape*
T0	*
_output_shapes
: 
±
2sequence_input_layer_3/col6_indicator/Shape_1/CastCastAsequence_input_layer_3/col6_indicator/to_sparse_input/dense_shape*

SrcT0	*

DstT0*
_output_shapes
:
x
6sequence_input_layer_3/col6_indicator/assert_equal_1/yConst*
_output_shapes
: *
value	B :*
dtype0
Ź
:sequence_input_layer_3/col6_indicator/assert_equal_1/EqualEqual,sequence_input_layer_3/col6_indicator/Rank_16sequence_input_layer_3/col6_indicator/assert_equal_1/y*
T0*
_output_shapes
: 
}
:sequence_input_layer_3/col6_indicator/assert_equal_1/ConstConst*
valueB *
dtype0*
_output_shapes
: 
Ļ
8sequence_input_layer_3/col6_indicator/assert_equal_1/AllAll:sequence_input_layer_3/col6_indicator/assert_equal_1/Equal:sequence_input_layer_3/col6_indicator/assert_equal_1/Const*
_output_shapes
: 
¬
Asequence_input_layer_3/col6_indicator/assert_equal_1/Assert/ConstConst*;
value2B0 B*Column col6 expected ID tensor of rank 2. *
dtype0*
_output_shapes
: 

Csequence_input_layer_3/col6_indicator/assert_equal_1/Assert/Const_1Const*"
valueB Bid_tensor shape: *
dtype0*
_output_shapes
: 
“
Isequence_input_layer_3/col6_indicator/assert_equal_1/Assert/Assert/data_0Const*;
value2B0 B*Column col6 expected ID tensor of rank 2. *
dtype0*
_output_shapes
: 

Isequence_input_layer_3/col6_indicator/assert_equal_1/Assert/Assert/data_1Const*"
valueB Bid_tensor shape: *
dtype0*
_output_shapes
: 
Ž
Bsequence_input_layer_3/col6_indicator/assert_equal_1/Assert/AssertAssert8sequence_input_layer_3/col6_indicator/assert_equal_1/AllIsequence_input_layer_3/col6_indicator/assert_equal_1/Assert/Assert/data_0Isequence_input_layer_3/col6_indicator/assert_equal_1/Assert/Assert/data_12sequence_input_layer_3/col6_indicator/Shape_1/Cast*
T
2
Ę
7sequence_input_layer_3/col6_indicator/concat_1/values_1ConstC^sequence_input_layer_3/col6_indicator/assert_equal_1/Assert/Assert*
valueB	R*
dtype0	*
_output_shapes
:
ŗ
3sequence_input_layer_3/col6_indicator/concat_1/axisConstC^sequence_input_layer_3/col6_indicator/assert_equal_1/Assert/Assert*
value	B : *
dtype0*
_output_shapes
: 

.sequence_input_layer_3/col6_indicator/concat_1ConcatV2Asequence_input_layer_3/col6_indicator/to_sparse_input/dense_shape7sequence_input_layer_3/col6_indicator/concat_1/values_13sequence_input_layer_3/col6_indicator/concat_1/axis*
T0	*
N*
_output_shapes
:
§
5sequence_input_layer_3/col6_indicator/SparseReshape_1SparseReshape=sequence_input_layer_3/col6_indicator/to_sparse_input/indicesAsequence_input_layer_3/col6_indicator/to_sparse_input/dense_shape.sequence_input_layer_3/col6_indicator/concat_1*-
_output_shapes
:’’’’’’’’’:
ö
>sequence_input_layer_3/col6_indicator/SparseReshape_1/IdentityIdentity7sequence_input_layer_3/col6_indicator/hash_table_LookupC^sequence_input_layer_3/col6_indicator/assert_equal_1/Assert/Assert*
T0	*#
_output_shapes
:’’’’’’’’’

Isequence_input_layer_3/col6_indicator/sequence_length/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:

Ksequence_input_layer_3/col6_indicator/sequence_length/strided_slice/stack_1Const*
_output_shapes
:*
valueB"       *
dtype0

Ksequence_input_layer_3/col6_indicator/sequence_length/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
ä
Csequence_input_layer_3/col6_indicator/sequence_length/strided_sliceStridedSlice5sequence_input_layer_3/col6_indicator/SparseReshape_1Isequence_input_layer_3/col6_indicator/sequence_length/strided_slice/stackKsequence_input_layer_3/col6_indicator/sequence_length/strided_slice/stack_1Ksequence_input_layer_3/col6_indicator/sequence_length/strided_slice/stack_2*

begin_mask*
end_mask*#
_output_shapes
:’’’’’’’’’*
Index0*
T0	*
shrink_axis_mask

Ksequence_input_layer_3/col6_indicator/sequence_length/strided_slice_1/stackConst*
valueB"       *
dtype0*
_output_shapes
:

Msequence_input_layer_3/col6_indicator/sequence_length/strided_slice_1/stack_1Const*
_output_shapes
:*
valueB"       *
dtype0

Msequence_input_layer_3/col6_indicator/sequence_length/strided_slice_1/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
ģ
Esequence_input_layer_3/col6_indicator/sequence_length/strided_slice_1StridedSlice5sequence_input_layer_3/col6_indicator/SparseReshape_1Ksequence_input_layer_3/col6_indicator/sequence_length/strided_slice_1/stackMsequence_input_layer_3/col6_indicator/sequence_length/strided_slice_1/stack_1Msequence_input_layer_3/col6_indicator/sequence_length/strided_slice_1/stack_2*
shrink_axis_mask*

begin_mask*
end_mask*#
_output_shapes
:’’’’’’’’’*
T0	*
Index0
ŗ
Esequence_input_layer_3/col6_indicator/sequence_length/ones_like/ShapeShapeEsequence_input_layer_3/col6_indicator/sequence_length/strided_slice_1*
T0	*
_output_shapes
:

Esequence_input_layer_3/col6_indicator/sequence_length/ones_like/ConstConst*
value	B	 R*
dtype0	*
_output_shapes
: 

?sequence_input_layer_3/col6_indicator/sequence_length/ones_likeFillEsequence_input_layer_3/col6_indicator/sequence_length/ones_like/ShapeEsequence_input_layer_3/col6_indicator/sequence_length/ones_like/Const*
T0	*#
_output_shapes
:’’’’’’’’’
ö
9sequence_input_layer_3/col6_indicator/sequence_length/addAddEsequence_input_layer_3/col6_indicator/sequence_length/strided_slice_1?sequence_input_layer_3/col6_indicator/sequence_length/ones_like*#
_output_shapes
:’’’’’’’’’*
T0	

@sequence_input_layer_3/col6_indicator/sequence_length/SegmentMax
SegmentMax9sequence_input_layer_3/col6_indicator/sequence_length/addCsequence_input_layer_3/col6_indicator/sequence_length/strided_slice*
Tindices0	*
T0	*#
_output_shapes
:’’’’’’’’’

?sequence_input_layer_3/col6_indicator/sequence_length/truediv/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
É
Bsequence_input_layer_3/col6_indicator/sequence_length/truediv/CastCast@sequence_input_layer_3/col6_indicator/sequence_length/SegmentMax*

DstT0*#
_output_shapes
:’’’’’’’’’*

SrcT0	
½
Dsequence_input_layer_3/col6_indicator/sequence_length/truediv/Cast_1Cast?sequence_input_layer_3/col6_indicator/sequence_length/truediv/y*

SrcT0	*

DstT0*
_output_shapes
: 

=sequence_input_layer_3/col6_indicator/sequence_length/truedivRealDivBsequence_input_layer_3/col6_indicator/sequence_length/truediv/CastDsequence_input_layer_3/col6_indicator/sequence_length/truediv/Cast_1*#
_output_shapes
:’’’’’’’’’*
T0
Į
=sequence_input_layer_3/col6_indicator/sequence_length/ToInt64Cast=sequence_input_layer_3/col6_indicator/sequence_length/truediv*

SrcT0*

DstT0	*#
_output_shapes
:’’’’’’’’’
µ
@sequence_input_layer_3/col6_indicator/sequence_length/Shape/CastCast7sequence_input_layer_3/col6_indicator/SparseReshape_1:1*

SrcT0	*

DstT0*
_output_shapes
:

Ksequence_input_layer_3/col6_indicator/sequence_length/strided_slice_2/stackConst*
valueB: *
dtype0*
_output_shapes
:

Msequence_input_layer_3/col6_indicator/sequence_length/strided_slice_2/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Msequence_input_layer_3/col6_indicator/sequence_length/strided_slice_2/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
Ę
Esequence_input_layer_3/col6_indicator/sequence_length/strided_slice_2StridedSlice@sequence_input_layer_3/col6_indicator/sequence_length/Shape/CastKsequence_input_layer_3/col6_indicator/sequence_length/strided_slice_2/stackMsequence_input_layer_3/col6_indicator/sequence_length/strided_slice_2/stack_1Msequence_input_layer_3/col6_indicator/sequence_length/strided_slice_2/stack_2*

begin_mask*
_output_shapes
:*
Index0*
T0
Ŗ
=sequence_input_layer_3/col6_indicator/sequence_length/Shape_1Shape=sequence_input_layer_3/col6_indicator/sequence_length/ToInt64*
T0	*
_output_shapes
:

Ksequence_input_layer_3/col6_indicator/sequence_length/strided_slice_3/stackConst*
dtype0*
_output_shapes
:*
valueB: 

Msequence_input_layer_3/col6_indicator/sequence_length/strided_slice_3/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

Msequence_input_layer_3/col6_indicator/sequence_length/strided_slice_3/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ć
Esequence_input_layer_3/col6_indicator/sequence_length/strided_slice_3StridedSlice=sequence_input_layer_3/col6_indicator/sequence_length/Shape_1Ksequence_input_layer_3/col6_indicator/sequence_length/strided_slice_3/stackMsequence_input_layer_3/col6_indicator/sequence_length/strided_slice_3/stack_1Msequence_input_layer_3/col6_indicator/sequence_length/strided_slice_3/stack_2*
_output_shapes
:*
T0*
Index0*

begin_mask
ó
9sequence_input_layer_3/col6_indicator/sequence_length/subSubEsequence_input_layer_3/col6_indicator/sequence_length/strided_slice_2Esequence_input_layer_3/col6_indicator/sequence_length/strided_slice_3*
T0*
_output_shapes
:

Asequence_input_layer_3/col6_indicator/sequence_length/zeros/ConstConst*
_output_shapes
: *
value	B	 R *
dtype0	
ļ
;sequence_input_layer_3/col6_indicator/sequence_length/zerosFill9sequence_input_layer_3/col6_indicator/sequence_length/subAsequence_input_layer_3/col6_indicator/sequence_length/zeros/Const*
T0	*#
_output_shapes
:’’’’’’’’’
|
:sequence_input_layer_3/col6_indicator/sequence_length/axisConst*
value	B : *
dtype0*
_output_shapes
: 
°
5sequence_input_layer_3/col6_indicator/sequence_lengthConcatV2=sequence_input_layer_3/col6_indicator/sequence_length/ToInt64;sequence_input_layer_3/col6_indicator/sequence_length/zeros:sequence_input_layer_3/col6_indicator/sequence_length/axis*
T0	*
N*#
_output_shapes
:’’’’’’’’’

-sequence_input_layer_3/col6_indicator/Shape_2Shape)sequence_input_layer_3/col6_indicator/Sum*
T0*
_output_shapes
:

9sequence_input_layer_3/col6_indicator/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

;sequence_input_layer_3/col6_indicator/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

;sequence_input_layer_3/col6_indicator/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ė
3sequence_input_layer_3/col6_indicator/strided_sliceStridedSlice-sequence_input_layer_3/col6_indicator/Shape_29sequence_input_layer_3/col6_indicator/strided_slice/stack;sequence_input_layer_3/col6_indicator/strided_slice/stack_1;sequence_input_layer_3/col6_indicator/strided_slice/stack_2*

begin_mask*
_output_shapes
:*
T0*
Index0

7sequence_input_layer_3/col6_indicator/concat_2/values_1Const*
valueB:*
dtype0*
_output_shapes
:
u
3sequence_input_layer_3/col6_indicator/concat_2/axisConst*
_output_shapes
: *
value	B : *
dtype0

.sequence_input_layer_3/col6_indicator/concat_2ConcatV23sequence_input_layer_3/col6_indicator/strided_slice7sequence_input_layer_3/col6_indicator/concat_2/values_13sequence_input_layer_3/col6_indicator/concat_2/axis*
N*
_output_shapes
:*
T0
Ņ
-sequence_input_layer_3/col6_indicator/ReshapeReshape)sequence_input_layer_3/col6_indicator/Sum.sequence_input_layer_3/col6_indicator/concat_2*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’
s
(sequence_input_layer_3/concat/concat_dimConst*
valueB :
’’’’’’’’’*
dtype0*
_output_shapes
: 

sequence_input_layer_3/concatIdentity-sequence_input_layer_3/col6_indicator/Reshape*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’*
T0
W
Sum/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
r
SumSumsequence_input_layer_3/concatSum/reduction_indices*
T0*'
_output_shapes
:’’’’’’’’’
w
key_value_init_4/keysConst*.
value%B#	BfBeBzBqBdBsBcBgBb*
dtype0*
_output_shapes
:	

key_value_init_4/valuesConst*
dtype0*
_output_shapes
:	*9
value0B.	"$                        	   
W
hash_table_4HashTableV2*
value_dtype0*
_output_shapes
: *
	key_dtype0
T
hash_table_4/ConstConst*
value	B : *
dtype0*
_output_shapes
: 
{
key_value_init_4InitializeTableV2hash_table_4key_value_init_4/keyskey_value_init_4/values*

Tkey0*

Tval0
Ń
ConstConst*
valueB
"xUUU@UUU@ć8@  ?   @  @  @  @   @   @  @@   @  ?   @  @  @  @   @   @  @@   @  ?   @  @  @  @   @   @  Ą@  @*
dtype0*
_output_shapes

:

č
col7_local_vec/initial_valueConst*
valueB
"xUUU@UUU@ć8@  ?   @  @  @  @   @   @  @@   @  ?   @  @  @  @   @   @  @@   @  ?   @  @  @  @   @   @  Ą@  @*
dtype0*
_output_shapes

:

^
col7_local_vec
VariableV2*
dtype0*
_output_shapes

:
*
shape
:


col7_local_vec/AssignAssigncol7_local_veccol7_local_vec/initial_value*
T0*!
_class
loc:@col7_local_vec*
_output_shapes

:

{
col7_local_vec/readIdentitycol7_local_vec*
_output_shapes

:
*
T0*!
_class
loc:@col7_local_vec

hash_table_4_LookupLookupTableFindV2hash_table_4Placeholder_6hash_table_4/Const*	
Tin0*#
_output_shapes
:’’’’’’’’’*

Tout0
z
embedding_lookup/axisConst*
value	B : *!
_class
loc:@col7_local_vec*
dtype0*
_output_shapes
: 
Õ
embedding_lookupGatherV2col7_local_vec/readhash_table_4_Lookupembedding_lookup/axis*'
_output_shapes
:’’’’’’’’’*
Taxis0*
Tindices0*
Tparams0*!
_class
loc:@col7_local_vec
i
embedding_lookup/IdentityIdentityembedding_lookup*
T0*'
_output_shapes
:’’’’’’’’’
X
Mean/reduction_indicesConst*
dtype0*
_output_shapes
: *
value	B :
u
MeanMeansequence_input_layer_2/concatMean/reduction_indices*
T0*'
_output_shapes
:’’’’’’’’’
M
concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
¶
concatConcatV2Meaninput_layer_6/concatinput_layer_7/concatinput_layer_8/concatinput_layer/concatconcat/axis*
N*'
_output_shapes
:’’’’’’’’’*
T0

-dense/kernel/Initializer/random_uniform/shapeConst*
valueB"      *
_class
loc:@dense/kernel*
dtype0*
_output_shapes
:

+dense/kernel/Initializer/random_uniform/minConst*
valueB
 *JQŚ¾*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 

+dense/kernel/Initializer/random_uniform/maxConst*
valueB
 *JQŚ>*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
Ģ
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:*
T0*
_class
loc:@dense/kernel
Ī
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*
_output_shapes
: 
ą
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
T0*
_class
loc:@dense/kernel*
_output_shapes

:
Ņ
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
_class
loc:@dense/kernel*
_output_shapes

:*
T0
}
dense/kernel
VariableV2*
_class
loc:@dense/kernel*
shape
:*
dtype0*
_output_shapes

:

dense/kernel/AssignAssigndense/kernel'dense/kernel/Initializer/random_uniform*
T0*
_class
loc:@dense/kernel*
_output_shapes

:
u
dense/kernel/readIdentitydense/kernel*
T0*
_class
loc:@dense/kernel*
_output_shapes

:

-dense/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ĶĢĢ=*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 

.dense/kernel/Regularizer/l2_regularizer/L2LossL2Lossdense/kernel/read*
T0*
_class
loc:@dense/kernel*
_output_shapes
: 
Ļ
'dense/kernel/Regularizer/l2_regularizerMul-dense/kernel/Regularizer/l2_regularizer/scale.dense/kernel/Regularizer/l2_regularizer/L2Loss*
T0*
_class
loc:@dense/kernel*
_output_shapes
: 

dense/bias/Initializer/zerosConst*
valueB*    *
_class
loc:@dense/bias*
dtype0*
_output_shapes
:
q

dense/bias
VariableV2*
dtype0*
_output_shapes
:*
_class
loc:@dense/bias*
shape:

dense/bias/AssignAssign
dense/biasdense/bias/Initializer/zeros*
T0*
_class
loc:@dense/bias*
_output_shapes
:
k
dense/bias/readIdentity
dense/bias*
_class
loc:@dense/bias*
_output_shapes
:*
T0
c
dense/MatMulMatMulconcatdense/kernel/read*'
_output_shapes
:’’’’’’’’’*
T0
i
dense/BiasAddBiasAdddense/MatMuldense/bias/read*
T0*'
_output_shapes
:’’’’’’’’’
S

dense/ReluReludense/BiasAdd*'
_output_shapes
:’’’’’’’’’*
T0
„
*batch_normalization/gamma/Initializer/onesConst*
_output_shapes
:*
valueB*  ?*,
_class"
 loc:@batch_normalization/gamma*
dtype0

batch_normalization/gamma
VariableV2*
dtype0*
_output_shapes
:*,
_class"
 loc:@batch_normalization/gamma*
shape:
Ä
 batch_normalization/gamma/AssignAssignbatch_normalization/gamma*batch_normalization/gamma/Initializer/ones*
T0*,
_class"
 loc:@batch_normalization/gamma*
_output_shapes
:

batch_normalization/gamma/readIdentitybatch_normalization/gamma*
_output_shapes
:*
T0*,
_class"
 loc:@batch_normalization/gamma
¤
*batch_normalization/beta/Initializer/zerosConst*
dtype0*
_output_shapes
:*
valueB*    *+
_class!
loc:@batch_normalization/beta

batch_normalization/beta
VariableV2*+
_class!
loc:@batch_normalization/beta*
shape:*
dtype0*
_output_shapes
:
Į
batch_normalization/beta/AssignAssignbatch_normalization/beta*batch_normalization/beta/Initializer/zeros*
_output_shapes
:*
T0*+
_class!
loc:@batch_normalization/beta

batch_normalization/beta/readIdentitybatch_normalization/beta*
T0*+
_class!
loc:@batch_normalization/beta*
_output_shapes
:
²
1batch_normalization/moving_mean/Initializer/zerosConst*
valueB*    *2
_class(
&$loc:@batch_normalization/moving_mean*
dtype0*
_output_shapes
:

batch_normalization/moving_mean
VariableV2*
shape:*
dtype0*
_output_shapes
:*2
_class(
&$loc:@batch_normalization/moving_mean
Ż
&batch_normalization/moving_mean/AssignAssignbatch_normalization/moving_mean1batch_normalization/moving_mean/Initializer/zeros*
_output_shapes
:*
T0*2
_class(
&$loc:@batch_normalization/moving_mean
Ŗ
$batch_normalization/moving_mean/readIdentitybatch_normalization/moving_mean*2
_class(
&$loc:@batch_normalization/moving_mean*
_output_shapes
:*
T0
¹
4batch_normalization/moving_variance/Initializer/onesConst*
_output_shapes
:*
valueB*  ?*6
_class,
*(loc:@batch_normalization/moving_variance*
dtype0
£
#batch_normalization/moving_variance
VariableV2*
shape:*
dtype0*
_output_shapes
:*6
_class,
*(loc:@batch_normalization/moving_variance
ģ
*batch_normalization/moving_variance/AssignAssign#batch_normalization/moving_variance4batch_normalization/moving_variance/Initializer/ones*
_output_shapes
:*
T0*6
_class,
*(loc:@batch_normalization/moving_variance
¶
(batch_normalization/moving_variance/readIdentity#batch_normalization/moving_variance*
T0*6
_class,
*(loc:@batch_normalization/moving_variance*
_output_shapes
:
h
#batch_normalization/batchnorm/add/yConst*
dtype0*
_output_shapes
: *
valueB
 *o:

!batch_normalization/batchnorm/addAdd(batch_normalization/moving_variance/read#batch_normalization/batchnorm/add/y*
T0*
_output_shapes
:
t
#batch_normalization/batchnorm/RsqrtRsqrt!batch_normalization/batchnorm/add*
T0*
_output_shapes
:

!batch_normalization/batchnorm/mulMul#batch_normalization/batchnorm/Rsqrtbatch_normalization/gamma/read*
_output_shapes
:*
T0

#batch_normalization/batchnorm/mul_1Mul
dense/Relu!batch_normalization/batchnorm/mul*'
_output_shapes
:’’’’’’’’’*
T0

#batch_normalization/batchnorm/mul_2Mul$batch_normalization/moving_mean/read!batch_normalization/batchnorm/mul*
T0*
_output_shapes
:

!batch_normalization/batchnorm/subSubbatch_normalization/beta/read#batch_normalization/batchnorm/mul_2*
_output_shapes
:*
T0
¤
#batch_normalization/batchnorm/add_1Add#batch_normalization/batchnorm/mul_1!batch_normalization/batchnorm/sub*
T0*'
_output_shapes
:’’’’’’’’’
s
dropout/IdentityIdentity#batch_normalization/batchnorm/add_1*'
_output_shapes
:’’’’’’’’’*
T0
£
/dense_1/kernel/Initializer/random_uniform/shapeConst*
valueB"      *!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
:

-dense_1/kernel/Initializer/random_uniform/minConst*
valueB
 *0æ*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 

-dense_1/kernel/Initializer/random_uniform/maxConst*
_output_shapes
: *
valueB
 *0?*!
_class
loc:@dense_1/kernel*
dtype0
Ņ
7dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_1/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:*
T0*!
_class
loc:@dense_1/kernel
Ö
-dense_1/kernel/Initializer/random_uniform/subSub-dense_1/kernel/Initializer/random_uniform/max-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
: 
č
-dense_1/kernel/Initializer/random_uniform/mulMul7dense_1/kernel/Initializer/random_uniform/RandomUniform-dense_1/kernel/Initializer/random_uniform/sub*
_output_shapes

:*
T0*!
_class
loc:@dense_1/kernel
Ś
)dense_1/kernel/Initializer/random_uniformAdd-dense_1/kernel/Initializer/random_uniform/mul-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes

:

dense_1/kernel
VariableV2*
dtype0*
_output_shapes

:*!
_class
loc:@dense_1/kernel*
shape
:
¦
dense_1/kernel/AssignAssigndense_1/kernel)dense_1/kernel/Initializer/random_uniform*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes

:
{
dense_1/kernel/readIdentitydense_1/kernel*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes

:

/dense_1/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ĶĢĢ=*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 

0dense_1/kernel/Regularizer/l2_regularizer/L2LossL2Lossdense_1/kernel/read*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
: 
×
)dense_1/kernel/Regularizer/l2_regularizerMul/dense_1/kernel/Regularizer/l2_regularizer/scale0dense_1/kernel/Regularizer/l2_regularizer/L2Loss*
_output_shapes
: *
T0*!
_class
loc:@dense_1/kernel

dense_1/bias/Initializer/zerosConst*
_output_shapes
:*
valueB*    *
_class
loc:@dense_1/bias*
dtype0
u
dense_1/bias
VariableV2*
_class
loc:@dense_1/bias*
shape:*
dtype0*
_output_shapes
:

dense_1/bias/AssignAssigndense_1/biasdense_1/bias/Initializer/zeros*
_class
loc:@dense_1/bias*
_output_shapes
:*
T0
q
dense_1/bias/readIdentitydense_1/bias*
T0*
_class
loc:@dense_1/bias*
_output_shapes
:
q
dense_1/MatMulMatMuldropout/Identitydense_1/kernel/read*
T0*'
_output_shapes
:’’’’’’’’’
o
dense_1/BiasAddBiasAdddense_1/MatMuldense_1/bias/read*'
_output_shapes
:’’’’’’’’’*
T0
W
dense_1/ReluReludense_1/BiasAdd*'
_output_shapes
:’’’’’’’’’*
T0
©
,batch_normalization_1/gamma/Initializer/onesConst*
valueB*  ?*.
_class$
" loc:@batch_normalization_1/gamma*
dtype0*
_output_shapes
:

batch_normalization_1/gamma
VariableV2*
dtype0*
_output_shapes
:*.
_class$
" loc:@batch_normalization_1/gamma*
shape:
Ģ
"batch_normalization_1/gamma/AssignAssignbatch_normalization_1/gamma,batch_normalization_1/gamma/Initializer/ones*
T0*.
_class$
" loc:@batch_normalization_1/gamma*
_output_shapes
:

 batch_normalization_1/gamma/readIdentitybatch_normalization_1/gamma*
T0*.
_class$
" loc:@batch_normalization_1/gamma*
_output_shapes
:
Ø
,batch_normalization_1/beta/Initializer/zerosConst*
valueB*    *-
_class#
!loc:@batch_normalization_1/beta*
dtype0*
_output_shapes
:

batch_normalization_1/beta
VariableV2*
dtype0*
_output_shapes
:*-
_class#
!loc:@batch_normalization_1/beta*
shape:
É
!batch_normalization_1/beta/AssignAssignbatch_normalization_1/beta,batch_normalization_1/beta/Initializer/zeros*
T0*-
_class#
!loc:@batch_normalization_1/beta*
_output_shapes
:

batch_normalization_1/beta/readIdentitybatch_normalization_1/beta*
T0*-
_class#
!loc:@batch_normalization_1/beta*
_output_shapes
:
¶
3batch_normalization_1/moving_mean/Initializer/zerosConst*
valueB*    *4
_class*
(&loc:@batch_normalization_1/moving_mean*
dtype0*
_output_shapes
:

!batch_normalization_1/moving_mean
VariableV2*
dtype0*
_output_shapes
:*4
_class*
(&loc:@batch_normalization_1/moving_mean*
shape:
å
(batch_normalization_1/moving_mean/AssignAssign!batch_normalization_1/moving_mean3batch_normalization_1/moving_mean/Initializer/zeros*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean*
_output_shapes
:
°
&batch_normalization_1/moving_mean/readIdentity!batch_normalization_1/moving_mean*4
_class*
(&loc:@batch_normalization_1/moving_mean*
_output_shapes
:*
T0
½
6batch_normalization_1/moving_variance/Initializer/onesConst*
_output_shapes
:*
valueB*  ?*8
_class.
,*loc:@batch_normalization_1/moving_variance*
dtype0
§
%batch_normalization_1/moving_variance
VariableV2*
dtype0*
_output_shapes
:*8
_class.
,*loc:@batch_normalization_1/moving_variance*
shape:
ō
,batch_normalization_1/moving_variance/AssignAssign%batch_normalization_1/moving_variance6batch_normalization_1/moving_variance/Initializer/ones*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
_output_shapes
:
¼
*batch_normalization_1/moving_variance/readIdentity%batch_normalization_1/moving_variance*8
_class.
,*loc:@batch_normalization_1/moving_variance*
_output_shapes
:*
T0
j
%batch_normalization_1/batchnorm/add/yConst*
valueB
 *o:*
dtype0*
_output_shapes
: 
¢
#batch_normalization_1/batchnorm/addAdd*batch_normalization_1/moving_variance/read%batch_normalization_1/batchnorm/add/y*
_output_shapes
:*
T0
x
%batch_normalization_1/batchnorm/RsqrtRsqrt#batch_normalization_1/batchnorm/add*
_output_shapes
:*
T0

#batch_normalization_1/batchnorm/mulMul%batch_normalization_1/batchnorm/Rsqrt batch_normalization_1/gamma/read*
T0*
_output_shapes
:

%batch_normalization_1/batchnorm/mul_1Muldense_1/Relu#batch_normalization_1/batchnorm/mul*
T0*'
_output_shapes
:’’’’’’’’’

%batch_normalization_1/batchnorm/mul_2Mul&batch_normalization_1/moving_mean/read#batch_normalization_1/batchnorm/mul*
T0*
_output_shapes
:

#batch_normalization_1/batchnorm/subSubbatch_normalization_1/beta/read%batch_normalization_1/batchnorm/mul_2*
_output_shapes
:*
T0
Ŗ
%batch_normalization_1/batchnorm/add_1Add%batch_normalization_1/batchnorm/mul_1#batch_normalization_1/batchnorm/sub*
T0*'
_output_shapes
:’’’’’’’’’
w
dropout_1/IdentityIdentity%batch_normalization_1/batchnorm/add_1*
T0*'
_output_shapes
:’’’’’’’’’
X
SigmoidSigmoiddropout_1/Identity*
T0*'
_output_shapes
:’’’’’’’’’
`
Reshape/shapeConst*
valueB:
’’’’’’’’’*
dtype0*
_output_shapes
:
X
ReshapeReshapeSigmoidReshape/shape*
T0*#
_output_shapes
:’’’’’’’’’
Z
	Sigmoid_1Sigmoiddropout_1/Identity*'
_output_shapes
:’’’’’’’’’*
T0
b
Reshape_1/shapeConst*
valueB:
’’’’’’’’’*
dtype0*
_output_shapes
:
^
	Reshape_1Reshape	Sigmoid_1Reshape_1/shape*#
_output_shapes
:’’’’’’’’’*
T0

initNoOp
„
init_all_tablesNoOp?^input_layer_6/col4_embedding/col4_lookup/hash_table/table_initQ^input_layer_7/col7_extend_1_embedding/col7_extend_1_lookup/hash_table/table_initQ^input_layer_8/col7_extend_2_embedding/col7_extend_2_lookup/hash_table/table_init^key_value_init^key_value_init_1^key_value_init_2^key_value_init_3^key_value_init_4F^sequence_input_layer/col8_embedding/col8_lookup/hash_table/table_initZ^sequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_lookup/hash_table/table_initZ^sequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_lookup/hash_table/table_initH^sequence_input_layer_3/col6_indicator/col6_lookup/hash_table/table_init

init_1NoOp
4

group_depsNoOp^init^init_1^init_all_tables
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_d16775b2f63341108230776ab20ad078/part*
dtype0*
_output_shapes
: 
d
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
”
save/SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*Å
value»BøBbatch_normalization/betaBbatch_normalization/gammaBbatch_normalization/moving_meanB#batch_normalization/moving_varianceBbatch_normalization_1/betaBbatch_normalization_1/gammaB!batch_normalization_1/moving_meanB%batch_normalization_1/moving_varianceBcol7_local_vecB
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBglobal_stepB.input_layer_6/col4_embedding/embedding_weightsB7input_layer_7/col7_extend_1_embedding/embedding_weightsB7input_layer_8/col7_extend_2_embedding/embedding_weightsB5sequence_input_layer/col8_embedding/embedding_weightsB@sequence_input_layer_1/col6_extend_1_embedding/embedding_weightsB@sequence_input_layer_2/col6_extend_2_embedding/embedding_weights*
dtype0

save/SaveV2/shape_and_slicesConst"/device:CPU:0*;
value2B0B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
Ę
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbatch_normalization/betabatch_normalization/gammabatch_normalization/moving_mean#batch_normalization/moving_variancebatch_normalization_1/betabatch_normalization_1/gamma!batch_normalization_1/moving_mean%batch_normalization_1/moving_variancecol7_local_vec
dense/biasdense/kerneldense_1/biasdense_1/kernelglobal_step.input_layer_6/col4_embedding/embedding_weights7input_layer_7/col7_extend_1_embedding/embedding_weights7input_layer_8/col7_extend_2_embedding/embedding_weights5sequence_input_layer/col8_embedding/embedding_weights@sequence_input_layer_1/col6_extend_1_embedding/embedding_weights@sequence_input_layer_2/col6_extend_2_embedding/embedding_weights"/device:CPU:0*"
dtypes
2	
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
_output_shapes
: *
T0*'
_class
loc:@save/ShardedFilename
 
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
T0*
N*
_output_shapes
:
u
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0

save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
_output_shapes
: *
T0
¤
save/RestoreV2/tensor_namesConst"/device:CPU:0*Å
value»BøBbatch_normalization/betaBbatch_normalization/gammaBbatch_normalization/moving_meanB#batch_normalization/moving_varianceBbatch_normalization_1/betaBbatch_normalization_1/gammaB!batch_normalization_1/moving_meanB%batch_normalization_1/moving_varianceBcol7_local_vecB
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBglobal_stepB.input_layer_6/col4_embedding/embedding_weightsB7input_layer_7/col7_extend_1_embedding/embedding_weightsB7input_layer_8/col7_extend_2_embedding/embedding_weightsB5sequence_input_layer/col8_embedding/embedding_weightsB@sequence_input_layer_1/col6_extend_1_embedding/embedding_weightsB@sequence_input_layer_2/col6_extend_2_embedding/embedding_weights*
dtype0*
_output_shapes
:

save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*;
value2B0B B B B B B B B B B B B B B B B B B B B 
ž
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*"
dtypes
2	*d
_output_shapesR
P::::::::::::::::::::

save/AssignAssignbatch_normalization/betasave/RestoreV2*+
_class!
loc:@batch_normalization/beta*
_output_shapes
:*
T0

save/Assign_1Assignbatch_normalization/gammasave/RestoreV2:1*
T0*,
_class"
 loc:@batch_normalization/gamma*
_output_shapes
:
£
save/Assign_2Assignbatch_normalization/moving_meansave/RestoreV2:2*
T0*2
_class(
&$loc:@batch_normalization/moving_mean*
_output_shapes
:
«
save/Assign_3Assign#batch_normalization/moving_variancesave/RestoreV2:3*6
_class,
*(loc:@batch_normalization/moving_variance*
_output_shapes
:*
T0

save/Assign_4Assignbatch_normalization_1/betasave/RestoreV2:4*
T0*-
_class#
!loc:@batch_normalization_1/beta*
_output_shapes
:

save/Assign_5Assignbatch_normalization_1/gammasave/RestoreV2:5*
T0*.
_class$
" loc:@batch_normalization_1/gamma*
_output_shapes
:
§
save/Assign_6Assign!batch_normalization_1/moving_meansave/RestoreV2:6*
_output_shapes
:*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean
Æ
save/Assign_7Assign%batch_normalization_1/moving_variancesave/RestoreV2:7*
_output_shapes
:*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance

save/Assign_8Assigncol7_local_vecsave/RestoreV2:8*
T0*!
_class
loc:@col7_local_vec*
_output_shapes

:

y
save/Assign_9Assign
dense/biassave/RestoreV2:9*
T0*
_class
loc:@dense/bias*
_output_shapes
:

save/Assign_10Assigndense/kernelsave/RestoreV2:10*
T0*
_class
loc:@dense/kernel*
_output_shapes

:

save/Assign_11Assigndense_1/biassave/RestoreV2:11*
T0*
_class
loc:@dense_1/bias*
_output_shapes
:

save/Assign_12Assigndense_1/kernelsave/RestoreV2:12*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes

:
y
save/Assign_13Assignglobal_stepsave/RestoreV2:13*
_output_shapes
: *
T0	*
_class
loc:@global_step
Ē
save/Assign_14Assign.input_layer_6/col4_embedding/embedding_weightssave/RestoreV2:14*
T0*A
_class7
53loc:@input_layer_6/col4_embedding/embedding_weights*
_output_shapes

:
Ł
save/Assign_15Assign7input_layer_7/col7_extend_1_embedding/embedding_weightssave/RestoreV2:15*
T0*J
_class@
><loc:@input_layer_7/col7_extend_1_embedding/embedding_weights*
_output_shapes

:
Ł
save/Assign_16Assign7input_layer_8/col7_extend_2_embedding/embedding_weightssave/RestoreV2:16*J
_class@
><loc:@input_layer_8/col7_extend_2_embedding/embedding_weights*
_output_shapes

:*
T0
Õ
save/Assign_17Assign5sequence_input_layer/col8_embedding/embedding_weightssave/RestoreV2:17*
_output_shapes

:	*
T0*H
_class>
<:loc:@sequence_input_layer/col8_embedding/embedding_weights
ė
save/Assign_18Assign@sequence_input_layer_1/col6_extend_1_embedding/embedding_weightssave/RestoreV2:18*
_output_shapes

:*
T0*S
_classI
GEloc:@sequence_input_layer_1/col6_extend_1_embedding/embedding_weights
ė
save/Assign_19Assign@sequence_input_layer_2/col6_extend_2_embedding/embedding_weightssave/RestoreV2:19*
T0*S
_classI
GEloc:@sequence_input_layer_2/col6_extend_2_embedding/embedding_weights*
_output_shapes

:
ā
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
-
save/restore_allNoOp^save/restore_shard"<
save/Const:0save/Identity:0save/restore_all (5 @F8"
table_initializer

key_value_init
key_value_init_1
key_value_init_2
key_value_init_3
>input_layer_6/col4_embedding/col4_lookup/hash_table/table_init
Pinput_layer_7/col7_extend_1_embedding/col7_extend_1_lookup/hash_table/table_init
Pinput_layer_8/col7_extend_2_embedding/col7_extend_2_lookup/hash_table/table_init
Esequence_input_layer/col8_embedding/col8_lookup/hash_table/table_init
Ysequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_lookup/hash_table/table_init
Ysequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_lookup/hash_table/table_init
Gsequence_input_layer_3/col6_indicator/col6_lookup/hash_table/table_init
key_value_init_4"ø
asset_filepaths¤
”
Oinput_layer_6/col4_embedding/col4_lookup/hash_table/table_init/asset_filepath:0
ainput_layer_7/col7_extend_1_embedding/col7_extend_1_lookup/hash_table/table_init/asset_filepath:0
ainput_layer_8/col7_extend_2_embedding/col7_extend_2_lookup/hash_table/table_init/asset_filepath:0
Vsequence_input_layer/col8_embedding/col8_lookup/hash_table/table_init/asset_filepath:0
jsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_lookup/hash_table/table_init/asset_filepath:0
jsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_lookup/hash_table/table_init/asset_filepath:0
Xsequence_input_layer_3/col6_indicator/col6_lookup/hash_table/table_init/asset_filepath:0"k
global_step\Z
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0"%
saved_model_main_op


group_deps"°	
saved_model_assets	*	

+type.googleapis.com/tensorflow.AssetFileDefd
Q
Oinput_layer_6/col4_embedding/col4_lookup/hash_table/table_init/asset_filepath:0vocabulary_col4
©
+type.googleapis.com/tensorflow.AssetFileDefz
c
ainput_layer_7/col7_extend_1_embedding/col7_extend_1_lookup/hash_table/table_init/asset_filepath:0vocabulary_extend_1
©
+type.googleapis.com/tensorflow.AssetFileDefz
c
ainput_layer_8/col7_extend_2_embedding/col7_extend_2_lookup/hash_table/table_init/asset_filepath:0vocabulary_extend_2

+type.googleapis.com/tensorflow.AssetFileDefk
X
Vsequence_input_layer/col8_embedding/col8_lookup/hash_table/table_init/asset_filepath:0vocabulary_col8
³
+type.googleapis.com/tensorflow.AssetFileDef
l
jsequence_input_layer_1/col6_extend_1_embedding/col6_extend_1_lookup/hash_table/table_init/asset_filepath:0vocabulary_extend_1
³
+type.googleapis.com/tensorflow.AssetFileDef
l
jsequence_input_layer_2/col6_extend_2_embedding/col6_extend_2_lookup/hash_table/table_init/asset_filepath:0vocabulary_extend_2

+type.googleapis.com/tensorflow.AssetFileDefm
Z
Xsequence_input_layer_3/col6_indicator/col6_lookup/hash_table/table_init/asset_filepath:0vocabulary_col6"s
regularization_lossesZ
X
)dense/kernel/Regularizer/l2_regularizer:0
+dense_1/kernel/Regularizer/l2_regularizer:0"»
model_variables§¤
ń
0input_layer_6/col4_embedding/embedding_weights:05input_layer_6/col4_embedding/embedding_weights/Assign5input_layer_6/col4_embedding/embedding_weights/read:02Minput_layer_6/col4_embedding/embedding_weights/Initializer/truncated_normal:08

9input_layer_7/col7_extend_1_embedding/embedding_weights:0>input_layer_7/col7_extend_1_embedding/embedding_weights/Assign>input_layer_7/col7_extend_1_embedding/embedding_weights/read:02Vinput_layer_7/col7_extend_1_embedding/embedding_weights/Initializer/truncated_normal:08

9input_layer_8/col7_extend_2_embedding/embedding_weights:0>input_layer_8/col7_extend_2_embedding/embedding_weights/Assign>input_layer_8/col7_extend_2_embedding/embedding_weights/read:02Vinput_layer_8/col7_extend_2_embedding/embedding_weights/Initializer/truncated_normal:08"³
trainable_variables
ń
0input_layer_6/col4_embedding/embedding_weights:05input_layer_6/col4_embedding/embedding_weights/Assign5input_layer_6/col4_embedding/embedding_weights/read:02Minput_layer_6/col4_embedding/embedding_weights/Initializer/truncated_normal:08

9input_layer_7/col7_extend_1_embedding/embedding_weights:0>input_layer_7/col7_extend_1_embedding/embedding_weights/Assign>input_layer_7/col7_extend_1_embedding/embedding_weights/read:02Vinput_layer_7/col7_extend_1_embedding/embedding_weights/Initializer/truncated_normal:08

9input_layer_8/col7_extend_2_embedding/embedding_weights:0>input_layer_8/col7_extend_2_embedding/embedding_weights/Assign>input_layer_8/col7_extend_2_embedding/embedding_weights/read:02Vinput_layer_8/col7_extend_2_embedding/embedding_weights/Initializer/truncated_normal:08

7sequence_input_layer/col8_embedding/embedding_weights:0<sequence_input_layer/col8_embedding/embedding_weights/Assign<sequence_input_layer/col8_embedding/embedding_weights/read:02Tsequence_input_layer/col8_embedding/embedding_weights/Initializer/truncated_normal:08
¹
Bsequence_input_layer_1/col6_extend_1_embedding/embedding_weights:0Gsequence_input_layer_1/col6_extend_1_embedding/embedding_weights/AssignGsequence_input_layer_1/col6_extend_1_embedding/embedding_weights/read:02_sequence_input_layer_1/col6_extend_1_embedding/embedding_weights/Initializer/truncated_normal:08
¹
Bsequence_input_layer_2/col6_extend_2_embedding/embedding_weights:0Gsequence_input_layer_2/col6_extend_2_embedding/embedding_weights/AssignGsequence_input_layer_2/col6_extend_2_embedding/embedding_weights/read:02_sequence_input_layer_2/col6_extend_2_embedding/embedding_weights/Initializer/truncated_normal:08
g
dense/kernel:0dense/kernel/Assigndense/kernel/read:02)dense/kernel/Initializer/random_uniform:08
V
dense/bias:0dense/bias/Assigndense/bias/read:02dense/bias/Initializer/zeros:08

batch_normalization/gamma:0 batch_normalization/gamma/Assign batch_normalization/gamma/read:02,batch_normalization/gamma/Initializer/ones:08

batch_normalization/beta:0batch_normalization/beta/Assignbatch_normalization/beta/read:02,batch_normalization/beta/Initializer/zeros:08
o
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02+dense_1/kernel/Initializer/random_uniform:08
^
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02 dense_1/bias/Initializer/zeros:08

batch_normalization_1/gamma:0"batch_normalization_1/gamma/Assign"batch_normalization_1/gamma/read:02.batch_normalization_1/gamma/Initializer/ones:08

batch_normalization_1/beta:0!batch_normalization_1/beta/Assign!batch_normalization_1/beta/read:02.batch_normalization_1/beta/Initializer/zeros:08"æ
	variables±®
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0
ń
0input_layer_6/col4_embedding/embedding_weights:05input_layer_6/col4_embedding/embedding_weights/Assign5input_layer_6/col4_embedding/embedding_weights/read:02Minput_layer_6/col4_embedding/embedding_weights/Initializer/truncated_normal:08

9input_layer_7/col7_extend_1_embedding/embedding_weights:0>input_layer_7/col7_extend_1_embedding/embedding_weights/Assign>input_layer_7/col7_extend_1_embedding/embedding_weights/read:02Vinput_layer_7/col7_extend_1_embedding/embedding_weights/Initializer/truncated_normal:08

9input_layer_8/col7_extend_2_embedding/embedding_weights:0>input_layer_8/col7_extend_2_embedding/embedding_weights/Assign>input_layer_8/col7_extend_2_embedding/embedding_weights/read:02Vinput_layer_8/col7_extend_2_embedding/embedding_weights/Initializer/truncated_normal:08

7sequence_input_layer/col8_embedding/embedding_weights:0<sequence_input_layer/col8_embedding/embedding_weights/Assign<sequence_input_layer/col8_embedding/embedding_weights/read:02Tsequence_input_layer/col8_embedding/embedding_weights/Initializer/truncated_normal:08
¹
Bsequence_input_layer_1/col6_extend_1_embedding/embedding_weights:0Gsequence_input_layer_1/col6_extend_1_embedding/embedding_weights/AssignGsequence_input_layer_1/col6_extend_1_embedding/embedding_weights/read:02_sequence_input_layer_1/col6_extend_1_embedding/embedding_weights/Initializer/truncated_normal:08
¹
Bsequence_input_layer_2/col6_extend_2_embedding/embedding_weights:0Gsequence_input_layer_2/col6_extend_2_embedding/embedding_weights/AssignGsequence_input_layer_2/col6_extend_2_embedding/embedding_weights/read:02_sequence_input_layer_2/col6_extend_2_embedding/embedding_weights/Initializer/truncated_normal:08
`
col7_local_vec:0col7_local_vec/Assigncol7_local_vec/read:02col7_local_vec/initial_value:0
g
dense/kernel:0dense/kernel/Assigndense/kernel/read:02)dense/kernel/Initializer/random_uniform:08
V
dense/bias:0dense/bias/Assigndense/bias/read:02dense/bias/Initializer/zeros:08

batch_normalization/gamma:0 batch_normalization/gamma/Assign batch_normalization/gamma/read:02,batch_normalization/gamma/Initializer/ones:08

batch_normalization/beta:0batch_normalization/beta/Assignbatch_normalization/beta/read:02,batch_normalization/beta/Initializer/zeros:08
Ø
!batch_normalization/moving_mean:0&batch_normalization/moving_mean/Assign&batch_normalization/moving_mean/read:023batch_normalization/moving_mean/Initializer/zeros:0
·
%batch_normalization/moving_variance:0*batch_normalization/moving_variance/Assign*batch_normalization/moving_variance/read:026batch_normalization/moving_variance/Initializer/ones:0
o
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02+dense_1/kernel/Initializer/random_uniform:08
^
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02 dense_1/bias/Initializer/zeros:08

batch_normalization_1/gamma:0"batch_normalization_1/gamma/Assign"batch_normalization_1/gamma/read:02.batch_normalization_1/gamma/Initializer/ones:08

batch_normalization_1/beta:0!batch_normalization_1/beta/Assign!batch_normalization_1/beta/read:02.batch_normalization_1/beta/Initializer/zeros:08
°
#batch_normalization_1/moving_mean:0(batch_normalization_1/moving_mean/Assign(batch_normalization_1/moving_mean/read:025batch_normalization_1/moving_mean/Initializer/zeros:0
æ
'batch_normalization_1/moving_variance:0,batch_normalization_1/moving_variance/Assign,batch_normalization_1/moving_variance/read:028batch_normalization_1/moving_variance/Initializer/ones:0*Ķ
serving_default¹
7
col6_extend_1&
hash_table_Lookup:0’’’’’’’’’
9
col6_extend_2(
hash_table_1_Lookup:0’’’’’’’’’
(
col1 
Placeholder:0’’’’’’’’’
9
col7_extend_1(
hash_table_2_Lookup:0’’’’’’’’’
*
col2"
Placeholder_1:0’’’’’’’’’
9
col7_extend_2(
hash_table_3_Lookup:0’’’’’’’’’
*
col3"
Placeholder_2:0’’’’’’’’’
*
col4"
Placeholder_3:0’’’’’’’’’
*
col5"
Placeholder_4:0’’’’’’’’’
*
col6"
Placeholder_5:0’’’’’’’’’
+
label"
Placeholder_8:0’’’’’’’’’
*
col7"
Placeholder_6:0’’’’’’’’’
*
col8"
Placeholder_7:0’’’’’’’’’&
prob
Reshape_1:0’’’’’’’’’tensorflow/serving/predict