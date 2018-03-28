## Module AWS.MachineLearning.Types

#### `options`

``` purescript
options :: Options
```

#### `AddTagsInput`

``` purescript
newtype AddTagsInput
  = AddTagsInput { "Tags" :: TagList, "ResourceId" :: EntityId, "ResourceType" :: TaggableResourceType }
```

##### Instances
``` purescript
Newtype AddTagsInput _
Generic AddTagsInput _
Show AddTagsInput
Decode AddTagsInput
Encode AddTagsInput
```

#### `newAddTagsInput`

``` purescript
newAddTagsInput :: EntityId -> TaggableResourceType -> TagList -> AddTagsInput
```

Constructs AddTagsInput from required parameters

#### `newAddTagsInput'`

``` purescript
newAddTagsInput' :: EntityId -> TaggableResourceType -> TagList -> ({ "Tags" :: TagList, "ResourceId" :: EntityId, "ResourceType" :: TaggableResourceType } -> { "Tags" :: TagList, "ResourceId" :: EntityId, "ResourceType" :: TaggableResourceType }) -> AddTagsInput
```

Constructs AddTagsInput's fields from required parameters

#### `AddTagsOutput`

``` purescript
newtype AddTagsOutput
  = AddTagsOutput { "ResourceId" :: NullOrUndefined (EntityId), "ResourceType" :: NullOrUndefined (TaggableResourceType) }
```

<p>Amazon ML returns the following elements. </p>

##### Instances
``` purescript
Newtype AddTagsOutput _
Generic AddTagsOutput _
Show AddTagsOutput
Decode AddTagsOutput
Encode AddTagsOutput
```

#### `newAddTagsOutput`

``` purescript
newAddTagsOutput :: AddTagsOutput
```

Constructs AddTagsOutput from required parameters

#### `newAddTagsOutput'`

``` purescript
newAddTagsOutput' :: ({ "ResourceId" :: NullOrUndefined (EntityId), "ResourceType" :: NullOrUndefined (TaggableResourceType) } -> { "ResourceId" :: NullOrUndefined (EntityId), "ResourceType" :: NullOrUndefined (TaggableResourceType) }) -> AddTagsOutput
```

Constructs AddTagsOutput's fields from required parameters

#### `Algorithm`

``` purescript
newtype Algorithm
  = Algorithm String
```

<p>The function used to train an <code>MLModel</code>. Training choices supported by Amazon ML include the following:</p> <ul> <li> <code>SGD</code> - Stochastic Gradient Descent.</li> <li> <code>RandomForest</code> - Random forest of decision trees.</li> </ul>

##### Instances
``` purescript
Newtype Algorithm _
Generic Algorithm _
Show Algorithm
Decode Algorithm
Encode Algorithm
```

#### `AwsUserArn`

``` purescript
newtype AwsUserArn
  = AwsUserArn String
```

<p>An Amazon Web Service (AWS) user account identifier. The account identifier can be an AWS root account or an AWS Identity and Access Management (IAM) user.</p>

##### Instances
``` purescript
Newtype AwsUserArn _
Generic AwsUserArn _
Show AwsUserArn
Decode AwsUserArn
Encode AwsUserArn
```

#### `BatchPrediction`

``` purescript
newtype BatchPrediction
  = BatchPrediction { "BatchPredictionId" :: NullOrUndefined (EntityId), "MLModelId" :: NullOrUndefined (EntityId), "BatchPredictionDataSourceId" :: NullOrUndefined (EntityId), "InputDataLocationS3" :: NullOrUndefined (S3Url), "CreatedByIamUser" :: NullOrUndefined (AwsUserArn), "CreatedAt" :: NullOrUndefined (EpochTime), "LastUpdatedAt" :: NullOrUndefined (EpochTime), "Name" :: NullOrUndefined (EntityName), "Status" :: NullOrUndefined (EntityStatus), "OutputUri" :: NullOrUndefined (S3Url), "Message" :: NullOrUndefined (Message), "ComputeTime" :: NullOrUndefined (LongType), "FinishedAt" :: NullOrUndefined (EpochTime), "StartedAt" :: NullOrUndefined (EpochTime), "TotalRecordCount" :: NullOrUndefined (LongType), "InvalidRecordCount" :: NullOrUndefined (LongType) }
```

<p> Represents the output of a <code>GetBatchPrediction</code> operation.</p> <p> The content consists of the detailed metadata, the status, and the data file information of a <code>Batch Prediction</code>.</p>

##### Instances
``` purescript
Newtype BatchPrediction _
Generic BatchPrediction _
Show BatchPrediction
Decode BatchPrediction
Encode BatchPrediction
```

#### `newBatchPrediction`

``` purescript
newBatchPrediction :: BatchPrediction
```

Constructs BatchPrediction from required parameters

#### `newBatchPrediction'`

``` purescript
newBatchPrediction' :: ({ "BatchPredictionId" :: NullOrUndefined (EntityId), "MLModelId" :: NullOrUndefined (EntityId), "BatchPredictionDataSourceId" :: NullOrUndefined (EntityId), "InputDataLocationS3" :: NullOrUndefined (S3Url), "CreatedByIamUser" :: NullOrUndefined (AwsUserArn), "CreatedAt" :: NullOrUndefined (EpochTime), "LastUpdatedAt" :: NullOrUndefined (EpochTime), "Name" :: NullOrUndefined (EntityName), "Status" :: NullOrUndefined (EntityStatus), "OutputUri" :: NullOrUndefined (S3Url), "Message" :: NullOrUndefined (Message), "ComputeTime" :: NullOrUndefined (LongType), "FinishedAt" :: NullOrUndefined (EpochTime), "StartedAt" :: NullOrUndefined (EpochTime), "TotalRecordCount" :: NullOrUndefined (LongType), "InvalidRecordCount" :: NullOrUndefined (LongType) } -> { "BatchPredictionId" :: NullOrUndefined (EntityId), "MLModelId" :: NullOrUndefined (EntityId), "BatchPredictionDataSourceId" :: NullOrUndefined (EntityId), "InputDataLocationS3" :: NullOrUndefined (S3Url), "CreatedByIamUser" :: NullOrUndefined (AwsUserArn), "CreatedAt" :: NullOrUndefined (EpochTime), "LastUpdatedAt" :: NullOrUndefined (EpochTime), "Name" :: NullOrUndefined (EntityName), "Status" :: NullOrUndefined (EntityStatus), "OutputUri" :: NullOrUndefined (S3Url), "Message" :: NullOrUndefined (Message), "ComputeTime" :: NullOrUndefined (LongType), "FinishedAt" :: NullOrUndefined (EpochTime), "StartedAt" :: NullOrUndefined (EpochTime), "TotalRecordCount" :: NullOrUndefined (LongType), "InvalidRecordCount" :: NullOrUndefined (LongType) }) -> BatchPrediction
```

Constructs BatchPrediction's fields from required parameters

#### `BatchPredictionFilterVariable`

``` purescript
newtype BatchPredictionFilterVariable
  = BatchPredictionFilterVariable String
```

<p>A list of the variables to use in searching or filtering <code>BatchPrediction</code>.</p> <ul> <li> <code>CreatedAt</code> - Sets the search criteria to <code>BatchPrediction</code> creation date.</li> <li> <code>Status</code> - Sets the search criteria to <code>BatchPrediction</code> status.</li> <li> <code>Name</code> - Sets the search criteria to the contents of <code>BatchPrediction</code><b> </b> <code>Name</code>.</li> <li> <code>IAMUser</code> - Sets the search criteria to the user account that invoked the <code>BatchPrediction</code> creation.</li> <li> <code>MLModelId</code> - Sets the search criteria to the <code>MLModel</code> used in the <code>BatchPrediction</code>.</li> <li> <code>DataSourceId</code> - Sets the search criteria to the <code>DataSource</code> used in the <code>BatchPrediction</code>.</li> <li> <code>DataURI</code> - Sets the search criteria to the data file(s) used in the <code>BatchPrediction</code>. The URL can identify either a file or an Amazon Simple Storage Service (Amazon S3) bucket or directory.</li> </ul>

##### Instances
``` purescript
Newtype BatchPredictionFilterVariable _
Generic BatchPredictionFilterVariable _
Show BatchPredictionFilterVariable
Decode BatchPredictionFilterVariable
Encode BatchPredictionFilterVariable
```

#### `BatchPredictions`

``` purescript
newtype BatchPredictions
  = BatchPredictions (Array BatchPrediction)
```

##### Instances
``` purescript
Newtype BatchPredictions _
Generic BatchPredictions _
Show BatchPredictions
Decode BatchPredictions
Encode BatchPredictions
```

#### `ComparatorValue`

``` purescript
newtype ComparatorValue
  = ComparatorValue String
```

<p>The value specified in a filtering condition. The <code>ComparatorValue</code> becomes the reference value when matching or evaluating data values in filtering and searching functions.</p>

##### Instances
``` purescript
Newtype ComparatorValue _
Generic ComparatorValue _
Show ComparatorValue
Decode ComparatorValue
Encode ComparatorValue
```

#### `ComputeStatistics`

``` purescript
newtype ComputeStatistics
  = ComputeStatistics Boolean
```

##### Instances
``` purescript
Newtype ComputeStatistics _
Generic ComputeStatistics _
Show ComputeStatistics
Decode ComputeStatistics
Encode ComputeStatistics
```

#### `CreateBatchPredictionInput`

``` purescript
newtype CreateBatchPredictionInput
  = CreateBatchPredictionInput { "BatchPredictionId" :: EntityId, "BatchPredictionName" :: NullOrUndefined (EntityName), "MLModelId" :: EntityId, "BatchPredictionDataSourceId" :: EntityId, "OutputUri" :: S3Url }
```

##### Instances
``` purescript
Newtype CreateBatchPredictionInput _
Generic CreateBatchPredictionInput _
Show CreateBatchPredictionInput
Decode CreateBatchPredictionInput
Encode CreateBatchPredictionInput
```

#### `newCreateBatchPredictionInput`

``` purescript
newCreateBatchPredictionInput :: EntityId -> EntityId -> EntityId -> S3Url -> CreateBatchPredictionInput
```

Constructs CreateBatchPredictionInput from required parameters

#### `newCreateBatchPredictionInput'`

``` purescript
newCreateBatchPredictionInput' :: EntityId -> EntityId -> EntityId -> S3Url -> ({ "BatchPredictionId" :: EntityId, "BatchPredictionName" :: NullOrUndefined (EntityName), "MLModelId" :: EntityId, "BatchPredictionDataSourceId" :: EntityId, "OutputUri" :: S3Url } -> { "BatchPredictionId" :: EntityId, "BatchPredictionName" :: NullOrUndefined (EntityName), "MLModelId" :: EntityId, "BatchPredictionDataSourceId" :: EntityId, "OutputUri" :: S3Url }) -> CreateBatchPredictionInput
```

Constructs CreateBatchPredictionInput's fields from required parameters

#### `CreateBatchPredictionOutput`

``` purescript
newtype CreateBatchPredictionOutput
  = CreateBatchPredictionOutput { "BatchPredictionId" :: NullOrUndefined (EntityId) }
```

<p> Represents the output of a <code>CreateBatchPrediction</code> operation, and is an acknowledgement that Amazon ML received the request.</p> <p>The <code>CreateBatchPrediction</code> operation is asynchronous. You can poll for status updates by using the <code>&gt;GetBatchPrediction</code> operation and checking the <code>Status</code> parameter of the result. </p>

##### Instances
``` purescript
Newtype CreateBatchPredictionOutput _
Generic CreateBatchPredictionOutput _
Show CreateBatchPredictionOutput
Decode CreateBatchPredictionOutput
Encode CreateBatchPredictionOutput
```

#### `newCreateBatchPredictionOutput`

``` purescript
newCreateBatchPredictionOutput :: CreateBatchPredictionOutput
```

Constructs CreateBatchPredictionOutput from required parameters

#### `newCreateBatchPredictionOutput'`

``` purescript
newCreateBatchPredictionOutput' :: ({ "BatchPredictionId" :: NullOrUndefined (EntityId) } -> { "BatchPredictionId" :: NullOrUndefined (EntityId) }) -> CreateBatchPredictionOutput
```

Constructs CreateBatchPredictionOutput's fields from required parameters

#### `CreateDataSourceFromRDSInput`

``` purescript
newtype CreateDataSourceFromRDSInput
  = CreateDataSourceFromRDSInput { "DataSourceId" :: EntityId, "DataSourceName" :: NullOrUndefined (EntityName), "RDSData" :: RDSDataSpec, "RoleARN" :: RoleARN, "ComputeStatistics" :: NullOrUndefined (ComputeStatistics) }
```

##### Instances
``` purescript
Newtype CreateDataSourceFromRDSInput _
Generic CreateDataSourceFromRDSInput _
Show CreateDataSourceFromRDSInput
Decode CreateDataSourceFromRDSInput
Encode CreateDataSourceFromRDSInput
```

#### `newCreateDataSourceFromRDSInput`

``` purescript
newCreateDataSourceFromRDSInput :: EntityId -> RDSDataSpec -> RoleARN -> CreateDataSourceFromRDSInput
```

Constructs CreateDataSourceFromRDSInput from required parameters

#### `newCreateDataSourceFromRDSInput'`

``` purescript
newCreateDataSourceFromRDSInput' :: EntityId -> RDSDataSpec -> RoleARN -> ({ "DataSourceId" :: EntityId, "DataSourceName" :: NullOrUndefined (EntityName), "RDSData" :: RDSDataSpec, "RoleARN" :: RoleARN, "ComputeStatistics" :: NullOrUndefined (ComputeStatistics) } -> { "DataSourceId" :: EntityId, "DataSourceName" :: NullOrUndefined (EntityName), "RDSData" :: RDSDataSpec, "RoleARN" :: RoleARN, "ComputeStatistics" :: NullOrUndefined (ComputeStatistics) }) -> CreateDataSourceFromRDSInput
```

Constructs CreateDataSourceFromRDSInput's fields from required parameters

#### `CreateDataSourceFromRDSOutput`

``` purescript
newtype CreateDataSourceFromRDSOutput
  = CreateDataSourceFromRDSOutput { "DataSourceId" :: NullOrUndefined (EntityId) }
```

<p> Represents the output of a <code>CreateDataSourceFromRDS</code> operation, and is an acknowledgement that Amazon ML received the request.</p> <p>The <code>CreateDataSourceFromRDS</code>&gt; operation is asynchronous. You can poll for updates by using the <code>GetBatchPrediction</code> operation and checking the <code>Status</code> parameter. You can inspect the <code>Message</code> when <code>Status</code> shows up as <code>FAILED</code>. You can also check the progress of the copy operation by going to the <code>DataPipeline</code> console and looking up the pipeline using the <code>pipelineId </code> from the describe call.</p>

##### Instances
``` purescript
Newtype CreateDataSourceFromRDSOutput _
Generic CreateDataSourceFromRDSOutput _
Show CreateDataSourceFromRDSOutput
Decode CreateDataSourceFromRDSOutput
Encode CreateDataSourceFromRDSOutput
```

#### `newCreateDataSourceFromRDSOutput`

``` purescript
newCreateDataSourceFromRDSOutput :: CreateDataSourceFromRDSOutput
```

Constructs CreateDataSourceFromRDSOutput from required parameters

#### `newCreateDataSourceFromRDSOutput'`

``` purescript
newCreateDataSourceFromRDSOutput' :: ({ "DataSourceId" :: NullOrUndefined (EntityId) } -> { "DataSourceId" :: NullOrUndefined (EntityId) }) -> CreateDataSourceFromRDSOutput
```

Constructs CreateDataSourceFromRDSOutput's fields from required parameters

#### `CreateDataSourceFromRedshiftInput`

``` purescript
newtype CreateDataSourceFromRedshiftInput
  = CreateDataSourceFromRedshiftInput { "DataSourceId" :: EntityId, "DataSourceName" :: NullOrUndefined (EntityName), "DataSpec" :: RedshiftDataSpec, "RoleARN" :: RoleARN, "ComputeStatistics" :: NullOrUndefined (ComputeStatistics) }
```

##### Instances
``` purescript
Newtype CreateDataSourceFromRedshiftInput _
Generic CreateDataSourceFromRedshiftInput _
Show CreateDataSourceFromRedshiftInput
Decode CreateDataSourceFromRedshiftInput
Encode CreateDataSourceFromRedshiftInput
```

#### `newCreateDataSourceFromRedshiftInput`

``` purescript
newCreateDataSourceFromRedshiftInput :: EntityId -> RedshiftDataSpec -> RoleARN -> CreateDataSourceFromRedshiftInput
```

Constructs CreateDataSourceFromRedshiftInput from required parameters

#### `newCreateDataSourceFromRedshiftInput'`

``` purescript
newCreateDataSourceFromRedshiftInput' :: EntityId -> RedshiftDataSpec -> RoleARN -> ({ "DataSourceId" :: EntityId, "DataSourceName" :: NullOrUndefined (EntityName), "DataSpec" :: RedshiftDataSpec, "RoleARN" :: RoleARN, "ComputeStatistics" :: NullOrUndefined (ComputeStatistics) } -> { "DataSourceId" :: EntityId, "DataSourceName" :: NullOrUndefined (EntityName), "DataSpec" :: RedshiftDataSpec, "RoleARN" :: RoleARN, "ComputeStatistics" :: NullOrUndefined (ComputeStatistics) }) -> CreateDataSourceFromRedshiftInput
```

Constructs CreateDataSourceFromRedshiftInput's fields from required parameters

#### `CreateDataSourceFromRedshiftOutput`

``` purescript
newtype CreateDataSourceFromRedshiftOutput
  = CreateDataSourceFromRedshiftOutput { "DataSourceId" :: NullOrUndefined (EntityId) }
```

<p> Represents the output of a <code>CreateDataSourceFromRedshift</code> operation, and is an acknowledgement that Amazon ML received the request.</p> <p>The <code>CreateDataSourceFromRedshift</code> operation is asynchronous. You can poll for updates by using the <code>GetBatchPrediction</code> operation and checking the <code>Status</code> parameter. </p>

##### Instances
``` purescript
Newtype CreateDataSourceFromRedshiftOutput _
Generic CreateDataSourceFromRedshiftOutput _
Show CreateDataSourceFromRedshiftOutput
Decode CreateDataSourceFromRedshiftOutput
Encode CreateDataSourceFromRedshiftOutput
```

#### `newCreateDataSourceFromRedshiftOutput`

``` purescript
newCreateDataSourceFromRedshiftOutput :: CreateDataSourceFromRedshiftOutput
```

Constructs CreateDataSourceFromRedshiftOutput from required parameters

#### `newCreateDataSourceFromRedshiftOutput'`

``` purescript
newCreateDataSourceFromRedshiftOutput' :: ({ "DataSourceId" :: NullOrUndefined (EntityId) } -> { "DataSourceId" :: NullOrUndefined (EntityId) }) -> CreateDataSourceFromRedshiftOutput
```

Constructs CreateDataSourceFromRedshiftOutput's fields from required parameters

#### `CreateDataSourceFromS3Input`

``` purescript
newtype CreateDataSourceFromS3Input
  = CreateDataSourceFromS3Input { "DataSourceId" :: EntityId, "DataSourceName" :: NullOrUndefined (EntityName), "DataSpec" :: S3DataSpec, "ComputeStatistics" :: NullOrUndefined (ComputeStatistics) }
```

##### Instances
``` purescript
Newtype CreateDataSourceFromS3Input _
Generic CreateDataSourceFromS3Input _
Show CreateDataSourceFromS3Input
Decode CreateDataSourceFromS3Input
Encode CreateDataSourceFromS3Input
```

#### `newCreateDataSourceFromS3Input`

``` purescript
newCreateDataSourceFromS3Input :: EntityId -> S3DataSpec -> CreateDataSourceFromS3Input
```

Constructs CreateDataSourceFromS3Input from required parameters

#### `newCreateDataSourceFromS3Input'`

``` purescript
newCreateDataSourceFromS3Input' :: EntityId -> S3DataSpec -> ({ "DataSourceId" :: EntityId, "DataSourceName" :: NullOrUndefined (EntityName), "DataSpec" :: S3DataSpec, "ComputeStatistics" :: NullOrUndefined (ComputeStatistics) } -> { "DataSourceId" :: EntityId, "DataSourceName" :: NullOrUndefined (EntityName), "DataSpec" :: S3DataSpec, "ComputeStatistics" :: NullOrUndefined (ComputeStatistics) }) -> CreateDataSourceFromS3Input
```

Constructs CreateDataSourceFromS3Input's fields from required parameters

#### `CreateDataSourceFromS3Output`

``` purescript
newtype CreateDataSourceFromS3Output
  = CreateDataSourceFromS3Output { "DataSourceId" :: NullOrUndefined (EntityId) }
```

<p> Represents the output of a <code>CreateDataSourceFromS3</code> operation, and is an acknowledgement that Amazon ML received the request.</p> <p>The <code>CreateDataSourceFromS3</code> operation is asynchronous. You can poll for updates by using the <code>GetBatchPrediction</code> operation and checking the <code>Status</code> parameter. </p>

##### Instances
``` purescript
Newtype CreateDataSourceFromS3Output _
Generic CreateDataSourceFromS3Output _
Show CreateDataSourceFromS3Output
Decode CreateDataSourceFromS3Output
Encode CreateDataSourceFromS3Output
```

#### `newCreateDataSourceFromS3Output`

``` purescript
newCreateDataSourceFromS3Output :: CreateDataSourceFromS3Output
```

Constructs CreateDataSourceFromS3Output from required parameters

#### `newCreateDataSourceFromS3Output'`

``` purescript
newCreateDataSourceFromS3Output' :: ({ "DataSourceId" :: NullOrUndefined (EntityId) } -> { "DataSourceId" :: NullOrUndefined (EntityId) }) -> CreateDataSourceFromS3Output
```

Constructs CreateDataSourceFromS3Output's fields from required parameters

#### `CreateEvaluationInput`

``` purescript
newtype CreateEvaluationInput
  = CreateEvaluationInput { "EvaluationId" :: EntityId, "EvaluationName" :: NullOrUndefined (EntityName), "MLModelId" :: EntityId, "EvaluationDataSourceId" :: EntityId }
```

##### Instances
``` purescript
Newtype CreateEvaluationInput _
Generic CreateEvaluationInput _
Show CreateEvaluationInput
Decode CreateEvaluationInput
Encode CreateEvaluationInput
```

#### `newCreateEvaluationInput`

``` purescript
newCreateEvaluationInput :: EntityId -> EntityId -> EntityId -> CreateEvaluationInput
```

Constructs CreateEvaluationInput from required parameters

#### `newCreateEvaluationInput'`

``` purescript
newCreateEvaluationInput' :: EntityId -> EntityId -> EntityId -> ({ "EvaluationId" :: EntityId, "EvaluationName" :: NullOrUndefined (EntityName), "MLModelId" :: EntityId, "EvaluationDataSourceId" :: EntityId } -> { "EvaluationId" :: EntityId, "EvaluationName" :: NullOrUndefined (EntityName), "MLModelId" :: EntityId, "EvaluationDataSourceId" :: EntityId }) -> CreateEvaluationInput
```

Constructs CreateEvaluationInput's fields from required parameters

#### `CreateEvaluationOutput`

``` purescript
newtype CreateEvaluationOutput
  = CreateEvaluationOutput { "EvaluationId" :: NullOrUndefined (EntityId) }
```

<p> Represents the output of a <code>CreateEvaluation</code> operation, and is an acknowledgement that Amazon ML received the request.</p> <p><code>CreateEvaluation</code> operation is asynchronous. You can poll for status updates by using the <code>GetEvcaluation</code> operation and checking the <code>Status</code> parameter. </p>

##### Instances
``` purescript
Newtype CreateEvaluationOutput _
Generic CreateEvaluationOutput _
Show CreateEvaluationOutput
Decode CreateEvaluationOutput
Encode CreateEvaluationOutput
```

#### `newCreateEvaluationOutput`

``` purescript
newCreateEvaluationOutput :: CreateEvaluationOutput
```

Constructs CreateEvaluationOutput from required parameters

#### `newCreateEvaluationOutput'`

``` purescript
newCreateEvaluationOutput' :: ({ "EvaluationId" :: NullOrUndefined (EntityId) } -> { "EvaluationId" :: NullOrUndefined (EntityId) }) -> CreateEvaluationOutput
```

Constructs CreateEvaluationOutput's fields from required parameters

#### `CreateMLModelInput`

``` purescript
newtype CreateMLModelInput
  = CreateMLModelInput { "MLModelId" :: EntityId, "MLModelName" :: NullOrUndefined (EntityName), "MLModelType" :: MLModelType, "Parameters" :: NullOrUndefined (TrainingParameters), "TrainingDataSourceId" :: EntityId, "Recipe" :: NullOrUndefined (Recipe), "RecipeUri" :: NullOrUndefined (S3Url) }
```

##### Instances
``` purescript
Newtype CreateMLModelInput _
Generic CreateMLModelInput _
Show CreateMLModelInput
Decode CreateMLModelInput
Encode CreateMLModelInput
```

#### `newCreateMLModelInput`

``` purescript
newCreateMLModelInput :: EntityId -> MLModelType -> EntityId -> CreateMLModelInput
```

Constructs CreateMLModelInput from required parameters

#### `newCreateMLModelInput'`

``` purescript
newCreateMLModelInput' :: EntityId -> MLModelType -> EntityId -> ({ "MLModelId" :: EntityId, "MLModelName" :: NullOrUndefined (EntityName), "MLModelType" :: MLModelType, "Parameters" :: NullOrUndefined (TrainingParameters), "TrainingDataSourceId" :: EntityId, "Recipe" :: NullOrUndefined (Recipe), "RecipeUri" :: NullOrUndefined (S3Url) } -> { "MLModelId" :: EntityId, "MLModelName" :: NullOrUndefined (EntityName), "MLModelType" :: MLModelType, "Parameters" :: NullOrUndefined (TrainingParameters), "TrainingDataSourceId" :: EntityId, "Recipe" :: NullOrUndefined (Recipe), "RecipeUri" :: NullOrUndefined (S3Url) }) -> CreateMLModelInput
```

Constructs CreateMLModelInput's fields from required parameters

#### `CreateMLModelOutput`

``` purescript
newtype CreateMLModelOutput
  = CreateMLModelOutput { "MLModelId" :: NullOrUndefined (EntityId) }
```

<p> Represents the output of a <code>CreateMLModel</code> operation, and is an acknowledgement that Amazon ML received the request.</p> <p>The <code>CreateMLModel</code> operation is asynchronous. You can poll for status updates by using the <code>GetMLModel</code> operation and checking the <code>Status</code> parameter. </p>

##### Instances
``` purescript
Newtype CreateMLModelOutput _
Generic CreateMLModelOutput _
Show CreateMLModelOutput
Decode CreateMLModelOutput
Encode CreateMLModelOutput
```

#### `newCreateMLModelOutput`

``` purescript
newCreateMLModelOutput :: CreateMLModelOutput
```

Constructs CreateMLModelOutput from required parameters

#### `newCreateMLModelOutput'`

``` purescript
newCreateMLModelOutput' :: ({ "MLModelId" :: NullOrUndefined (EntityId) } -> { "MLModelId" :: NullOrUndefined (EntityId) }) -> CreateMLModelOutput
```

Constructs CreateMLModelOutput's fields from required parameters

#### `CreateRealtimeEndpointInput`

``` purescript
newtype CreateRealtimeEndpointInput
  = CreateRealtimeEndpointInput { "MLModelId" :: EntityId }
```

##### Instances
``` purescript
Newtype CreateRealtimeEndpointInput _
Generic CreateRealtimeEndpointInput _
Show CreateRealtimeEndpointInput
Decode CreateRealtimeEndpointInput
Encode CreateRealtimeEndpointInput
```

#### `newCreateRealtimeEndpointInput`

``` purescript
newCreateRealtimeEndpointInput :: EntityId -> CreateRealtimeEndpointInput
```

Constructs CreateRealtimeEndpointInput from required parameters

#### `newCreateRealtimeEndpointInput'`

``` purescript
newCreateRealtimeEndpointInput' :: EntityId -> ({ "MLModelId" :: EntityId } -> { "MLModelId" :: EntityId }) -> CreateRealtimeEndpointInput
```

Constructs CreateRealtimeEndpointInput's fields from required parameters

#### `CreateRealtimeEndpointOutput`

``` purescript
newtype CreateRealtimeEndpointOutput
  = CreateRealtimeEndpointOutput { "MLModelId" :: NullOrUndefined (EntityId), "RealtimeEndpointInfo" :: NullOrUndefined (RealtimeEndpointInfo) }
```

<p>Represents the output of an <code>CreateRealtimeEndpoint</code> operation.</p> <p>The result contains the <code>MLModelId</code> and the endpoint information for the <code>MLModel</code>.</p> <note> <p>The endpoint information includes the URI of the <code>MLModel</code>; that is, the location to send online prediction requests for the specified <code>MLModel</code>.</p> </note>

##### Instances
``` purescript
Newtype CreateRealtimeEndpointOutput _
Generic CreateRealtimeEndpointOutput _
Show CreateRealtimeEndpointOutput
Decode CreateRealtimeEndpointOutput
Encode CreateRealtimeEndpointOutput
```

#### `newCreateRealtimeEndpointOutput`

``` purescript
newCreateRealtimeEndpointOutput :: CreateRealtimeEndpointOutput
```

Constructs CreateRealtimeEndpointOutput from required parameters

#### `newCreateRealtimeEndpointOutput'`

``` purescript
newCreateRealtimeEndpointOutput' :: ({ "MLModelId" :: NullOrUndefined (EntityId), "RealtimeEndpointInfo" :: NullOrUndefined (RealtimeEndpointInfo) } -> { "MLModelId" :: NullOrUndefined (EntityId), "RealtimeEndpointInfo" :: NullOrUndefined (RealtimeEndpointInfo) }) -> CreateRealtimeEndpointOutput
```

Constructs CreateRealtimeEndpointOutput's fields from required parameters

#### `DataRearrangement`

``` purescript
newtype DataRearrangement
  = DataRearrangement String
```

##### Instances
``` purescript
Newtype DataRearrangement _
Generic DataRearrangement _
Show DataRearrangement
Decode DataRearrangement
Encode DataRearrangement
```

#### `DataSchema`

``` purescript
newtype DataSchema
  = DataSchema String
```

<p>The schema of a <code>DataSource</code>. The <code>DataSchema</code> defines the structure of the observation data in the data file(s) referenced in the <code>DataSource</code>. The DataSource schema is expressed in JSON format.</p> <p><code>DataSchema</code> is not required if you specify a <code>DataSchemaUri</code></p> <p>{ "version": "1.0", "recordAnnotationFieldName": "F1", "recordWeightFieldName": "F2", "targetFieldName": "F3", "dataFormat": "CSV", "dataFileContainsHeader": true, "variables": [ { "fieldName": "F1", "fieldType": "TEXT" }, { "fieldName": "F2", "fieldType": "NUMERIC" }, { "fieldName": "F3", "fieldType": "CATEGORICAL" }, { "fieldName": "F4", "fieldType": "NUMERIC" }, { "fieldName": "F5", "fieldType": "CATEGORICAL" }, { "fieldName": "F6", "fieldType": "TEXT" }, { "fieldName": "F7", "fieldType": "WEIGHTED_INT_SEQUENCE" }, { "fieldName": "F8", "fieldType": "WEIGHTED_STRING_SEQUENCE" } ], "excludedVariableNames": [ "F6" ] } </p>

##### Instances
``` purescript
Newtype DataSchema _
Generic DataSchema _
Show DataSchema
Decode DataSchema
Encode DataSchema
```

#### `DataSource`

``` purescript
newtype DataSource
  = DataSource { "DataSourceId" :: NullOrUndefined (EntityId), "DataLocationS3" :: NullOrUndefined (S3Url), "DataRearrangement" :: NullOrUndefined (DataRearrangement), "CreatedByIamUser" :: NullOrUndefined (AwsUserArn), "CreatedAt" :: NullOrUndefined (EpochTime), "LastUpdatedAt" :: NullOrUndefined (EpochTime), "DataSizeInBytes" :: NullOrUndefined (LongType), "NumberOfFiles" :: NullOrUndefined (LongType), "Name" :: NullOrUndefined (EntityName), "Status" :: NullOrUndefined (EntityStatus), "Message" :: NullOrUndefined (Message), "RedshiftMetadata" :: NullOrUndefined (RedshiftMetadata), "RDSMetadata" :: NullOrUndefined (RDSMetadata), "RoleARN" :: NullOrUndefined (RoleARN), "ComputeStatistics" :: NullOrUndefined (ComputeStatistics), "ComputeTime" :: NullOrUndefined (LongType), "FinishedAt" :: NullOrUndefined (EpochTime), "StartedAt" :: NullOrUndefined (EpochTime) }
```

<p> Represents the output of the <code>GetDataSource</code> operation. </p> <p> The content consists of the detailed metadata and data file information and the current status of the <code>DataSource</code>. </p>

##### Instances
``` purescript
Newtype DataSource _
Generic DataSource _
Show DataSource
Decode DataSource
Encode DataSource
```

#### `newDataSource`

``` purescript
newDataSource :: DataSource
```

Constructs DataSource from required parameters

#### `newDataSource'`

``` purescript
newDataSource' :: ({ "DataSourceId" :: NullOrUndefined (EntityId), "DataLocationS3" :: NullOrUndefined (S3Url), "DataRearrangement" :: NullOrUndefined (DataRearrangement), "CreatedByIamUser" :: NullOrUndefined (AwsUserArn), "CreatedAt" :: NullOrUndefined (EpochTime), "LastUpdatedAt" :: NullOrUndefined (EpochTime), "DataSizeInBytes" :: NullOrUndefined (LongType), "NumberOfFiles" :: NullOrUndefined (LongType), "Name" :: NullOrUndefined (EntityName), "Status" :: NullOrUndefined (EntityStatus), "Message" :: NullOrUndefined (Message), "RedshiftMetadata" :: NullOrUndefined (RedshiftMetadata), "RDSMetadata" :: NullOrUndefined (RDSMetadata), "RoleARN" :: NullOrUndefined (RoleARN), "ComputeStatistics" :: NullOrUndefined (ComputeStatistics), "ComputeTime" :: NullOrUndefined (LongType), "FinishedAt" :: NullOrUndefined (EpochTime), "StartedAt" :: NullOrUndefined (EpochTime) } -> { "DataSourceId" :: NullOrUndefined (EntityId), "DataLocationS3" :: NullOrUndefined (S3Url), "DataRearrangement" :: NullOrUndefined (DataRearrangement), "CreatedByIamUser" :: NullOrUndefined (AwsUserArn), "CreatedAt" :: NullOrUndefined (EpochTime), "LastUpdatedAt" :: NullOrUndefined (EpochTime), "DataSizeInBytes" :: NullOrUndefined (LongType), "NumberOfFiles" :: NullOrUndefined (LongType), "Name" :: NullOrUndefined (EntityName), "Status" :: NullOrUndefined (EntityStatus), "Message" :: NullOrUndefined (Message), "RedshiftMetadata" :: NullOrUndefined (RedshiftMetadata), "RDSMetadata" :: NullOrUndefined (RDSMetadata), "RoleARN" :: NullOrUndefined (RoleARN), "ComputeStatistics" :: NullOrUndefined (ComputeStatistics), "ComputeTime" :: NullOrUndefined (LongType), "FinishedAt" :: NullOrUndefined (EpochTime), "StartedAt" :: NullOrUndefined (EpochTime) }) -> DataSource
```

Constructs DataSource's fields from required parameters

#### `DataSourceFilterVariable`

``` purescript
newtype DataSourceFilterVariable
  = DataSourceFilterVariable String
```

<p>A list of the variables to use in searching or filtering <code>DataSource</code>.</p> <ul> <li> <code>CreatedAt</code> - Sets the search criteria to <code>DataSource</code> creation date.</li> <li> <code>Status</code> - Sets the search criteria to <code>DataSource</code> status.</li> <li> <code>Name</code> - Sets the search criteria to the contents of <code>DataSource</code> <b> </b> <code>Name</code>.</li> <li> <code>DataUri</code> - Sets the search criteria to the URI of data files used to create the <code>DataSource</code>. The URI can identify either a file or an Amazon Simple Storage Service (Amazon S3) bucket or directory.</li> <li> <code>IAMUser</code> - Sets the search criteria to the user account that invoked the <code>DataSource</code> creation.</li> </ul> <note><title>Note</title> <p>The variable names should match the variable names in the <code>DataSource</code>.</p> </note>

##### Instances
``` purescript
Newtype DataSourceFilterVariable _
Generic DataSourceFilterVariable _
Show DataSourceFilterVariable
Decode DataSourceFilterVariable
Encode DataSourceFilterVariable
```

#### `DataSources`

``` purescript
newtype DataSources
  = DataSources (Array DataSource)
```

##### Instances
``` purescript
Newtype DataSources _
Generic DataSources _
Show DataSources
Decode DataSources
Encode DataSources
```

#### `DeleteBatchPredictionInput`

``` purescript
newtype DeleteBatchPredictionInput
  = DeleteBatchPredictionInput { "BatchPredictionId" :: EntityId }
```

##### Instances
``` purescript
Newtype DeleteBatchPredictionInput _
Generic DeleteBatchPredictionInput _
Show DeleteBatchPredictionInput
Decode DeleteBatchPredictionInput
Encode DeleteBatchPredictionInput
```

#### `newDeleteBatchPredictionInput`

``` purescript
newDeleteBatchPredictionInput :: EntityId -> DeleteBatchPredictionInput
```

Constructs DeleteBatchPredictionInput from required parameters

#### `newDeleteBatchPredictionInput'`

``` purescript
newDeleteBatchPredictionInput' :: EntityId -> ({ "BatchPredictionId" :: EntityId } -> { "BatchPredictionId" :: EntityId }) -> DeleteBatchPredictionInput
```

Constructs DeleteBatchPredictionInput's fields from required parameters

#### `DeleteBatchPredictionOutput`

``` purescript
newtype DeleteBatchPredictionOutput
  = DeleteBatchPredictionOutput { "BatchPredictionId" :: NullOrUndefined (EntityId) }
```

<p> Represents the output of a <code>DeleteBatchPrediction</code> operation.</p> <p>You can use the <code>GetBatchPrediction</code> operation and check the value of the <code>Status</code> parameter to see whether a <code>BatchPrediction</code> is marked as <code>DELETED</code>.</p>

##### Instances
``` purescript
Newtype DeleteBatchPredictionOutput _
Generic DeleteBatchPredictionOutput _
Show DeleteBatchPredictionOutput
Decode DeleteBatchPredictionOutput
Encode DeleteBatchPredictionOutput
```

#### `newDeleteBatchPredictionOutput`

``` purescript
newDeleteBatchPredictionOutput :: DeleteBatchPredictionOutput
```

Constructs DeleteBatchPredictionOutput from required parameters

#### `newDeleteBatchPredictionOutput'`

``` purescript
newDeleteBatchPredictionOutput' :: ({ "BatchPredictionId" :: NullOrUndefined (EntityId) } -> { "BatchPredictionId" :: NullOrUndefined (EntityId) }) -> DeleteBatchPredictionOutput
```

Constructs DeleteBatchPredictionOutput's fields from required parameters

#### `DeleteDataSourceInput`

``` purescript
newtype DeleteDataSourceInput
  = DeleteDataSourceInput { "DataSourceId" :: EntityId }
```

##### Instances
``` purescript
Newtype DeleteDataSourceInput _
Generic DeleteDataSourceInput _
Show DeleteDataSourceInput
Decode DeleteDataSourceInput
Encode DeleteDataSourceInput
```

#### `newDeleteDataSourceInput`

``` purescript
newDeleteDataSourceInput :: EntityId -> DeleteDataSourceInput
```

Constructs DeleteDataSourceInput from required parameters

#### `newDeleteDataSourceInput'`

``` purescript
newDeleteDataSourceInput' :: EntityId -> ({ "DataSourceId" :: EntityId } -> { "DataSourceId" :: EntityId }) -> DeleteDataSourceInput
```

Constructs DeleteDataSourceInput's fields from required parameters

#### `DeleteDataSourceOutput`

``` purescript
newtype DeleteDataSourceOutput
  = DeleteDataSourceOutput { "DataSourceId" :: NullOrUndefined (EntityId) }
```

<p> Represents the output of a <code>DeleteDataSource</code> operation.</p>

##### Instances
``` purescript
Newtype DeleteDataSourceOutput _
Generic DeleteDataSourceOutput _
Show DeleteDataSourceOutput
Decode DeleteDataSourceOutput
Encode DeleteDataSourceOutput
```

#### `newDeleteDataSourceOutput`

``` purescript
newDeleteDataSourceOutput :: DeleteDataSourceOutput
```

Constructs DeleteDataSourceOutput from required parameters

#### `newDeleteDataSourceOutput'`

``` purescript
newDeleteDataSourceOutput' :: ({ "DataSourceId" :: NullOrUndefined (EntityId) } -> { "DataSourceId" :: NullOrUndefined (EntityId) }) -> DeleteDataSourceOutput
```

Constructs DeleteDataSourceOutput's fields from required parameters

#### `DeleteEvaluationInput`

``` purescript
newtype DeleteEvaluationInput
  = DeleteEvaluationInput { "EvaluationId" :: EntityId }
```

##### Instances
``` purescript
Newtype DeleteEvaluationInput _
Generic DeleteEvaluationInput _
Show DeleteEvaluationInput
Decode DeleteEvaluationInput
Encode DeleteEvaluationInput
```

#### `newDeleteEvaluationInput`

``` purescript
newDeleteEvaluationInput :: EntityId -> DeleteEvaluationInput
```

Constructs DeleteEvaluationInput from required parameters

#### `newDeleteEvaluationInput'`

``` purescript
newDeleteEvaluationInput' :: EntityId -> ({ "EvaluationId" :: EntityId } -> { "EvaluationId" :: EntityId }) -> DeleteEvaluationInput
```

Constructs DeleteEvaluationInput's fields from required parameters

#### `DeleteEvaluationOutput`

``` purescript
newtype DeleteEvaluationOutput
  = DeleteEvaluationOutput { "EvaluationId" :: NullOrUndefined (EntityId) }
```

<p> Represents the output of a <code>DeleteEvaluation</code> operation. The output indicates that Amazon Machine Learning (Amazon ML) received the request.</p> <p>You can use the <code>GetEvaluation</code> operation and check the value of the <code>Status</code> parameter to see whether an <code>Evaluation</code> is marked as <code>DELETED</code>.</p>

##### Instances
``` purescript
Newtype DeleteEvaluationOutput _
Generic DeleteEvaluationOutput _
Show DeleteEvaluationOutput
Decode DeleteEvaluationOutput
Encode DeleteEvaluationOutput
```

#### `newDeleteEvaluationOutput`

``` purescript
newDeleteEvaluationOutput :: DeleteEvaluationOutput
```

Constructs DeleteEvaluationOutput from required parameters

#### `newDeleteEvaluationOutput'`

``` purescript
newDeleteEvaluationOutput' :: ({ "EvaluationId" :: NullOrUndefined (EntityId) } -> { "EvaluationId" :: NullOrUndefined (EntityId) }) -> DeleteEvaluationOutput
```

Constructs DeleteEvaluationOutput's fields from required parameters

#### `DeleteMLModelInput`

``` purescript
newtype DeleteMLModelInput
  = DeleteMLModelInput { "MLModelId" :: EntityId }
```

##### Instances
``` purescript
Newtype DeleteMLModelInput _
Generic DeleteMLModelInput _
Show DeleteMLModelInput
Decode DeleteMLModelInput
Encode DeleteMLModelInput
```

#### `newDeleteMLModelInput`

``` purescript
newDeleteMLModelInput :: EntityId -> DeleteMLModelInput
```

Constructs DeleteMLModelInput from required parameters

#### `newDeleteMLModelInput'`

``` purescript
newDeleteMLModelInput' :: EntityId -> ({ "MLModelId" :: EntityId } -> { "MLModelId" :: EntityId }) -> DeleteMLModelInput
```

Constructs DeleteMLModelInput's fields from required parameters

#### `DeleteMLModelOutput`

``` purescript
newtype DeleteMLModelOutput
  = DeleteMLModelOutput { "MLModelId" :: NullOrUndefined (EntityId) }
```

<p>Represents the output of a <code>DeleteMLModel</code> operation.</p> <p>You can use the <code>GetMLModel</code> operation and check the value of the <code>Status</code> parameter to see whether an <code>MLModel</code> is marked as <code>DELETED</code>.</p>

##### Instances
``` purescript
Newtype DeleteMLModelOutput _
Generic DeleteMLModelOutput _
Show DeleteMLModelOutput
Decode DeleteMLModelOutput
Encode DeleteMLModelOutput
```

#### `newDeleteMLModelOutput`

``` purescript
newDeleteMLModelOutput :: DeleteMLModelOutput
```

Constructs DeleteMLModelOutput from required parameters

#### `newDeleteMLModelOutput'`

``` purescript
newDeleteMLModelOutput' :: ({ "MLModelId" :: NullOrUndefined (EntityId) } -> { "MLModelId" :: NullOrUndefined (EntityId) }) -> DeleteMLModelOutput
```

Constructs DeleteMLModelOutput's fields from required parameters

#### `DeleteRealtimeEndpointInput`

``` purescript
newtype DeleteRealtimeEndpointInput
  = DeleteRealtimeEndpointInput { "MLModelId" :: EntityId }
```

##### Instances
``` purescript
Newtype DeleteRealtimeEndpointInput _
Generic DeleteRealtimeEndpointInput _
Show DeleteRealtimeEndpointInput
Decode DeleteRealtimeEndpointInput
Encode DeleteRealtimeEndpointInput
```

#### `newDeleteRealtimeEndpointInput`

``` purescript
newDeleteRealtimeEndpointInput :: EntityId -> DeleteRealtimeEndpointInput
```

Constructs DeleteRealtimeEndpointInput from required parameters

#### `newDeleteRealtimeEndpointInput'`

``` purescript
newDeleteRealtimeEndpointInput' :: EntityId -> ({ "MLModelId" :: EntityId } -> { "MLModelId" :: EntityId }) -> DeleteRealtimeEndpointInput
```

Constructs DeleteRealtimeEndpointInput's fields from required parameters

#### `DeleteRealtimeEndpointOutput`

``` purescript
newtype DeleteRealtimeEndpointOutput
  = DeleteRealtimeEndpointOutput { "MLModelId" :: NullOrUndefined (EntityId), "RealtimeEndpointInfo" :: NullOrUndefined (RealtimeEndpointInfo) }
```

<p>Represents the output of an <code>DeleteRealtimeEndpoint</code> operation.</p> <p>The result contains the <code>MLModelId</code> and the endpoint information for the <code>MLModel</code>. </p>

##### Instances
``` purescript
Newtype DeleteRealtimeEndpointOutput _
Generic DeleteRealtimeEndpointOutput _
Show DeleteRealtimeEndpointOutput
Decode DeleteRealtimeEndpointOutput
Encode DeleteRealtimeEndpointOutput
```

#### `newDeleteRealtimeEndpointOutput`

``` purescript
newDeleteRealtimeEndpointOutput :: DeleteRealtimeEndpointOutput
```

Constructs DeleteRealtimeEndpointOutput from required parameters

#### `newDeleteRealtimeEndpointOutput'`

``` purescript
newDeleteRealtimeEndpointOutput' :: ({ "MLModelId" :: NullOrUndefined (EntityId), "RealtimeEndpointInfo" :: NullOrUndefined (RealtimeEndpointInfo) } -> { "MLModelId" :: NullOrUndefined (EntityId), "RealtimeEndpointInfo" :: NullOrUndefined (RealtimeEndpointInfo) }) -> DeleteRealtimeEndpointOutput
```

Constructs DeleteRealtimeEndpointOutput's fields from required parameters

#### `DeleteTagsInput`

``` purescript
newtype DeleteTagsInput
  = DeleteTagsInput { "TagKeys" :: TagKeyList, "ResourceId" :: EntityId, "ResourceType" :: TaggableResourceType }
```

##### Instances
``` purescript
Newtype DeleteTagsInput _
Generic DeleteTagsInput _
Show DeleteTagsInput
Decode DeleteTagsInput
Encode DeleteTagsInput
```

#### `newDeleteTagsInput`

``` purescript
newDeleteTagsInput :: EntityId -> TaggableResourceType -> TagKeyList -> DeleteTagsInput
```

Constructs DeleteTagsInput from required parameters

#### `newDeleteTagsInput'`

``` purescript
newDeleteTagsInput' :: EntityId -> TaggableResourceType -> TagKeyList -> ({ "TagKeys" :: TagKeyList, "ResourceId" :: EntityId, "ResourceType" :: TaggableResourceType } -> { "TagKeys" :: TagKeyList, "ResourceId" :: EntityId, "ResourceType" :: TaggableResourceType }) -> DeleteTagsInput
```

Constructs DeleteTagsInput's fields from required parameters

#### `DeleteTagsOutput`

``` purescript
newtype DeleteTagsOutput
  = DeleteTagsOutput { "ResourceId" :: NullOrUndefined (EntityId), "ResourceType" :: NullOrUndefined (TaggableResourceType) }
```

<p>Amazon ML returns the following elements. </p>

##### Instances
``` purescript
Newtype DeleteTagsOutput _
Generic DeleteTagsOutput _
Show DeleteTagsOutput
Decode DeleteTagsOutput
Encode DeleteTagsOutput
```

#### `newDeleteTagsOutput`

``` purescript
newDeleteTagsOutput :: DeleteTagsOutput
```

Constructs DeleteTagsOutput from required parameters

#### `newDeleteTagsOutput'`

``` purescript
newDeleteTagsOutput' :: ({ "ResourceId" :: NullOrUndefined (EntityId), "ResourceType" :: NullOrUndefined (TaggableResourceType) } -> { "ResourceId" :: NullOrUndefined (EntityId), "ResourceType" :: NullOrUndefined (TaggableResourceType) }) -> DeleteTagsOutput
```

Constructs DeleteTagsOutput's fields from required parameters

#### `DescribeBatchPredictionsInput`

``` purescript
newtype DescribeBatchPredictionsInput
  = DescribeBatchPredictionsInput { "FilterVariable" :: NullOrUndefined (BatchPredictionFilterVariable), "EQ" :: NullOrUndefined (ComparatorValue), "GT" :: NullOrUndefined (ComparatorValue), "LT" :: NullOrUndefined (ComparatorValue), "GE" :: NullOrUndefined (ComparatorValue), "LE" :: NullOrUndefined (ComparatorValue), "NE" :: NullOrUndefined (ComparatorValue), "Prefix" :: NullOrUndefined (ComparatorValue), "SortOrder" :: NullOrUndefined (SortOrder), "NextToken" :: NullOrUndefined (StringType), "Limit" :: NullOrUndefined (PageLimit) }
```

##### Instances
``` purescript
Newtype DescribeBatchPredictionsInput _
Generic DescribeBatchPredictionsInput _
Show DescribeBatchPredictionsInput
Decode DescribeBatchPredictionsInput
Encode DescribeBatchPredictionsInput
```

#### `newDescribeBatchPredictionsInput`

``` purescript
newDescribeBatchPredictionsInput :: DescribeBatchPredictionsInput
```

Constructs DescribeBatchPredictionsInput from required parameters

#### `newDescribeBatchPredictionsInput'`

``` purescript
newDescribeBatchPredictionsInput' :: ({ "FilterVariable" :: NullOrUndefined (BatchPredictionFilterVariable), "EQ" :: NullOrUndefined (ComparatorValue), "GT" :: NullOrUndefined (ComparatorValue), "LT" :: NullOrUndefined (ComparatorValue), "GE" :: NullOrUndefined (ComparatorValue), "LE" :: NullOrUndefined (ComparatorValue), "NE" :: NullOrUndefined (ComparatorValue), "Prefix" :: NullOrUndefined (ComparatorValue), "SortOrder" :: NullOrUndefined (SortOrder), "NextToken" :: NullOrUndefined (StringType), "Limit" :: NullOrUndefined (PageLimit) } -> { "FilterVariable" :: NullOrUndefined (BatchPredictionFilterVariable), "EQ" :: NullOrUndefined (ComparatorValue), "GT" :: NullOrUndefined (ComparatorValue), "LT" :: NullOrUndefined (ComparatorValue), "GE" :: NullOrUndefined (ComparatorValue), "LE" :: NullOrUndefined (ComparatorValue), "NE" :: NullOrUndefined (ComparatorValue), "Prefix" :: NullOrUndefined (ComparatorValue), "SortOrder" :: NullOrUndefined (SortOrder), "NextToken" :: NullOrUndefined (StringType), "Limit" :: NullOrUndefined (PageLimit) }) -> DescribeBatchPredictionsInput
```

Constructs DescribeBatchPredictionsInput's fields from required parameters

#### `DescribeBatchPredictionsOutput`

``` purescript
newtype DescribeBatchPredictionsOutput
  = DescribeBatchPredictionsOutput { "Results" :: NullOrUndefined (BatchPredictions), "NextToken" :: NullOrUndefined (StringType) }
```

<p>Represents the output of a <code>DescribeBatchPredictions</code> operation. The content is essentially a list of <code>BatchPrediction</code>s.</p>

##### Instances
``` purescript
Newtype DescribeBatchPredictionsOutput _
Generic DescribeBatchPredictionsOutput _
Show DescribeBatchPredictionsOutput
Decode DescribeBatchPredictionsOutput
Encode DescribeBatchPredictionsOutput
```

#### `newDescribeBatchPredictionsOutput`

``` purescript
newDescribeBatchPredictionsOutput :: DescribeBatchPredictionsOutput
```

Constructs DescribeBatchPredictionsOutput from required parameters

#### `newDescribeBatchPredictionsOutput'`

``` purescript
newDescribeBatchPredictionsOutput' :: ({ "Results" :: NullOrUndefined (BatchPredictions), "NextToken" :: NullOrUndefined (StringType) } -> { "Results" :: NullOrUndefined (BatchPredictions), "NextToken" :: NullOrUndefined (StringType) }) -> DescribeBatchPredictionsOutput
```

Constructs DescribeBatchPredictionsOutput's fields from required parameters

#### `DescribeDataSourcesInput`

``` purescript
newtype DescribeDataSourcesInput
  = DescribeDataSourcesInput { "FilterVariable" :: NullOrUndefined (DataSourceFilterVariable), "EQ" :: NullOrUndefined (ComparatorValue), "GT" :: NullOrUndefined (ComparatorValue), "LT" :: NullOrUndefined (ComparatorValue), "GE" :: NullOrUndefined (ComparatorValue), "LE" :: NullOrUndefined (ComparatorValue), "NE" :: NullOrUndefined (ComparatorValue), "Prefix" :: NullOrUndefined (ComparatorValue), "SortOrder" :: NullOrUndefined (SortOrder), "NextToken" :: NullOrUndefined (StringType), "Limit" :: NullOrUndefined (PageLimit) }
```

##### Instances
``` purescript
Newtype DescribeDataSourcesInput _
Generic DescribeDataSourcesInput _
Show DescribeDataSourcesInput
Decode DescribeDataSourcesInput
Encode DescribeDataSourcesInput
```

#### `newDescribeDataSourcesInput`

``` purescript
newDescribeDataSourcesInput :: DescribeDataSourcesInput
```

Constructs DescribeDataSourcesInput from required parameters

#### `newDescribeDataSourcesInput'`

``` purescript
newDescribeDataSourcesInput' :: ({ "FilterVariable" :: NullOrUndefined (DataSourceFilterVariable), "EQ" :: NullOrUndefined (ComparatorValue), "GT" :: NullOrUndefined (ComparatorValue), "LT" :: NullOrUndefined (ComparatorValue), "GE" :: NullOrUndefined (ComparatorValue), "LE" :: NullOrUndefined (ComparatorValue), "NE" :: NullOrUndefined (ComparatorValue), "Prefix" :: NullOrUndefined (ComparatorValue), "SortOrder" :: NullOrUndefined (SortOrder), "NextToken" :: NullOrUndefined (StringType), "Limit" :: NullOrUndefined (PageLimit) } -> { "FilterVariable" :: NullOrUndefined (DataSourceFilterVariable), "EQ" :: NullOrUndefined (ComparatorValue), "GT" :: NullOrUndefined (ComparatorValue), "LT" :: NullOrUndefined (ComparatorValue), "GE" :: NullOrUndefined (ComparatorValue), "LE" :: NullOrUndefined (ComparatorValue), "NE" :: NullOrUndefined (ComparatorValue), "Prefix" :: NullOrUndefined (ComparatorValue), "SortOrder" :: NullOrUndefined (SortOrder), "NextToken" :: NullOrUndefined (StringType), "Limit" :: NullOrUndefined (PageLimit) }) -> DescribeDataSourcesInput
```

Constructs DescribeDataSourcesInput's fields from required parameters

#### `DescribeDataSourcesOutput`

``` purescript
newtype DescribeDataSourcesOutput
  = DescribeDataSourcesOutput { "Results" :: NullOrUndefined (DataSources), "NextToken" :: NullOrUndefined (StringType) }
```

<p>Represents the query results from a <a>DescribeDataSources</a> operation. The content is essentially a list of <code>DataSource</code>.</p>

##### Instances
``` purescript
Newtype DescribeDataSourcesOutput _
Generic DescribeDataSourcesOutput _
Show DescribeDataSourcesOutput
Decode DescribeDataSourcesOutput
Encode DescribeDataSourcesOutput
```

#### `newDescribeDataSourcesOutput`

``` purescript
newDescribeDataSourcesOutput :: DescribeDataSourcesOutput
```

Constructs DescribeDataSourcesOutput from required parameters

#### `newDescribeDataSourcesOutput'`

``` purescript
newDescribeDataSourcesOutput' :: ({ "Results" :: NullOrUndefined (DataSources), "NextToken" :: NullOrUndefined (StringType) } -> { "Results" :: NullOrUndefined (DataSources), "NextToken" :: NullOrUndefined (StringType) }) -> DescribeDataSourcesOutput
```

Constructs DescribeDataSourcesOutput's fields from required parameters

#### `DescribeEvaluationsInput`

``` purescript
newtype DescribeEvaluationsInput
  = DescribeEvaluationsInput { "FilterVariable" :: NullOrUndefined (EvaluationFilterVariable), "EQ" :: NullOrUndefined (ComparatorValue), "GT" :: NullOrUndefined (ComparatorValue), "LT" :: NullOrUndefined (ComparatorValue), "GE" :: NullOrUndefined (ComparatorValue), "LE" :: NullOrUndefined (ComparatorValue), "NE" :: NullOrUndefined (ComparatorValue), "Prefix" :: NullOrUndefined (ComparatorValue), "SortOrder" :: NullOrUndefined (SortOrder), "NextToken" :: NullOrUndefined (StringType), "Limit" :: NullOrUndefined (PageLimit) }
```

##### Instances
``` purescript
Newtype DescribeEvaluationsInput _
Generic DescribeEvaluationsInput _
Show DescribeEvaluationsInput
Decode DescribeEvaluationsInput
Encode DescribeEvaluationsInput
```

#### `newDescribeEvaluationsInput`

``` purescript
newDescribeEvaluationsInput :: DescribeEvaluationsInput
```

Constructs DescribeEvaluationsInput from required parameters

#### `newDescribeEvaluationsInput'`

``` purescript
newDescribeEvaluationsInput' :: ({ "FilterVariable" :: NullOrUndefined (EvaluationFilterVariable), "EQ" :: NullOrUndefined (ComparatorValue), "GT" :: NullOrUndefined (ComparatorValue), "LT" :: NullOrUndefined (ComparatorValue), "GE" :: NullOrUndefined (ComparatorValue), "LE" :: NullOrUndefined (ComparatorValue), "NE" :: NullOrUndefined (ComparatorValue), "Prefix" :: NullOrUndefined (ComparatorValue), "SortOrder" :: NullOrUndefined (SortOrder), "NextToken" :: NullOrUndefined (StringType), "Limit" :: NullOrUndefined (PageLimit) } -> { "FilterVariable" :: NullOrUndefined (EvaluationFilterVariable), "EQ" :: NullOrUndefined (ComparatorValue), "GT" :: NullOrUndefined (ComparatorValue), "LT" :: NullOrUndefined (ComparatorValue), "GE" :: NullOrUndefined (ComparatorValue), "LE" :: NullOrUndefined (ComparatorValue), "NE" :: NullOrUndefined (ComparatorValue), "Prefix" :: NullOrUndefined (ComparatorValue), "SortOrder" :: NullOrUndefined (SortOrder), "NextToken" :: NullOrUndefined (StringType), "Limit" :: NullOrUndefined (PageLimit) }) -> DescribeEvaluationsInput
```

Constructs DescribeEvaluationsInput's fields from required parameters

#### `DescribeEvaluationsOutput`

``` purescript
newtype DescribeEvaluationsOutput
  = DescribeEvaluationsOutput { "Results" :: NullOrUndefined (Evaluations), "NextToken" :: NullOrUndefined (StringType) }
```

<p>Represents the query results from a <code>DescribeEvaluations</code> operation. The content is essentially a list of <code>Evaluation</code>.</p>

##### Instances
``` purescript
Newtype DescribeEvaluationsOutput _
Generic DescribeEvaluationsOutput _
Show DescribeEvaluationsOutput
Decode DescribeEvaluationsOutput
Encode DescribeEvaluationsOutput
```

#### `newDescribeEvaluationsOutput`

``` purescript
newDescribeEvaluationsOutput :: DescribeEvaluationsOutput
```

Constructs DescribeEvaluationsOutput from required parameters

#### `newDescribeEvaluationsOutput'`

``` purescript
newDescribeEvaluationsOutput' :: ({ "Results" :: NullOrUndefined (Evaluations), "NextToken" :: NullOrUndefined (StringType) } -> { "Results" :: NullOrUndefined (Evaluations), "NextToken" :: NullOrUndefined (StringType) }) -> DescribeEvaluationsOutput
```

Constructs DescribeEvaluationsOutput's fields from required parameters

#### `DescribeMLModelsInput`

``` purescript
newtype DescribeMLModelsInput
  = DescribeMLModelsInput { "FilterVariable" :: NullOrUndefined (MLModelFilterVariable), "EQ" :: NullOrUndefined (ComparatorValue), "GT" :: NullOrUndefined (ComparatorValue), "LT" :: NullOrUndefined (ComparatorValue), "GE" :: NullOrUndefined (ComparatorValue), "LE" :: NullOrUndefined (ComparatorValue), "NE" :: NullOrUndefined (ComparatorValue), "Prefix" :: NullOrUndefined (ComparatorValue), "SortOrder" :: NullOrUndefined (SortOrder), "NextToken" :: NullOrUndefined (StringType), "Limit" :: NullOrUndefined (PageLimit) }
```

##### Instances
``` purescript
Newtype DescribeMLModelsInput _
Generic DescribeMLModelsInput _
Show DescribeMLModelsInput
Decode DescribeMLModelsInput
Encode DescribeMLModelsInput
```

#### `newDescribeMLModelsInput`

``` purescript
newDescribeMLModelsInput :: DescribeMLModelsInput
```

Constructs DescribeMLModelsInput from required parameters

#### `newDescribeMLModelsInput'`

``` purescript
newDescribeMLModelsInput' :: ({ "FilterVariable" :: NullOrUndefined (MLModelFilterVariable), "EQ" :: NullOrUndefined (ComparatorValue), "GT" :: NullOrUndefined (ComparatorValue), "LT" :: NullOrUndefined (ComparatorValue), "GE" :: NullOrUndefined (ComparatorValue), "LE" :: NullOrUndefined (ComparatorValue), "NE" :: NullOrUndefined (ComparatorValue), "Prefix" :: NullOrUndefined (ComparatorValue), "SortOrder" :: NullOrUndefined (SortOrder), "NextToken" :: NullOrUndefined (StringType), "Limit" :: NullOrUndefined (PageLimit) } -> { "FilterVariable" :: NullOrUndefined (MLModelFilterVariable), "EQ" :: NullOrUndefined (ComparatorValue), "GT" :: NullOrUndefined (ComparatorValue), "LT" :: NullOrUndefined (ComparatorValue), "GE" :: NullOrUndefined (ComparatorValue), "LE" :: NullOrUndefined (ComparatorValue), "NE" :: NullOrUndefined (ComparatorValue), "Prefix" :: NullOrUndefined (ComparatorValue), "SortOrder" :: NullOrUndefined (SortOrder), "NextToken" :: NullOrUndefined (StringType), "Limit" :: NullOrUndefined (PageLimit) }) -> DescribeMLModelsInput
```

Constructs DescribeMLModelsInput's fields from required parameters

#### `DescribeMLModelsOutput`

``` purescript
newtype DescribeMLModelsOutput
  = DescribeMLModelsOutput { "Results" :: NullOrUndefined (MLModels), "NextToken" :: NullOrUndefined (StringType) }
```

<p>Represents the output of a <code>DescribeMLModels</code> operation. The content is essentially a list of <code>MLModel</code>.</p>

##### Instances
``` purescript
Newtype DescribeMLModelsOutput _
Generic DescribeMLModelsOutput _
Show DescribeMLModelsOutput
Decode DescribeMLModelsOutput
Encode DescribeMLModelsOutput
```

#### `newDescribeMLModelsOutput`

``` purescript
newDescribeMLModelsOutput :: DescribeMLModelsOutput
```

Constructs DescribeMLModelsOutput from required parameters

#### `newDescribeMLModelsOutput'`

``` purescript
newDescribeMLModelsOutput' :: ({ "Results" :: NullOrUndefined (MLModels), "NextToken" :: NullOrUndefined (StringType) } -> { "Results" :: NullOrUndefined (MLModels), "NextToken" :: NullOrUndefined (StringType) }) -> DescribeMLModelsOutput
```

Constructs DescribeMLModelsOutput's fields from required parameters

#### `DescribeTagsInput`

``` purescript
newtype DescribeTagsInput
  = DescribeTagsInput { "ResourceId" :: EntityId, "ResourceType" :: TaggableResourceType }
```

##### Instances
``` purescript
Newtype DescribeTagsInput _
Generic DescribeTagsInput _
Show DescribeTagsInput
Decode DescribeTagsInput
Encode DescribeTagsInput
```

#### `newDescribeTagsInput`

``` purescript
newDescribeTagsInput :: EntityId -> TaggableResourceType -> DescribeTagsInput
```

Constructs DescribeTagsInput from required parameters

#### `newDescribeTagsInput'`

``` purescript
newDescribeTagsInput' :: EntityId -> TaggableResourceType -> ({ "ResourceId" :: EntityId, "ResourceType" :: TaggableResourceType } -> { "ResourceId" :: EntityId, "ResourceType" :: TaggableResourceType }) -> DescribeTagsInput
```

Constructs DescribeTagsInput's fields from required parameters

#### `DescribeTagsOutput`

``` purescript
newtype DescribeTagsOutput
  = DescribeTagsOutput { "ResourceId" :: NullOrUndefined (EntityId), "ResourceType" :: NullOrUndefined (TaggableResourceType), "Tags" :: NullOrUndefined (TagList) }
```

<p>Amazon ML returns the following elements. </p>

##### Instances
``` purescript
Newtype DescribeTagsOutput _
Generic DescribeTagsOutput _
Show DescribeTagsOutput
Decode DescribeTagsOutput
Encode DescribeTagsOutput
```

#### `newDescribeTagsOutput`

``` purescript
newDescribeTagsOutput :: DescribeTagsOutput
```

Constructs DescribeTagsOutput from required parameters

#### `newDescribeTagsOutput'`

``` purescript
newDescribeTagsOutput' :: ({ "ResourceId" :: NullOrUndefined (EntityId), "ResourceType" :: NullOrUndefined (TaggableResourceType), "Tags" :: NullOrUndefined (TagList) } -> { "ResourceId" :: NullOrUndefined (EntityId), "ResourceType" :: NullOrUndefined (TaggableResourceType), "Tags" :: NullOrUndefined (TagList) }) -> DescribeTagsOutput
```

Constructs DescribeTagsOutput's fields from required parameters

#### `DetailsAttributes`

``` purescript
newtype DetailsAttributes
  = DetailsAttributes String
```

Contains the key values of <code>DetailsMap</code>: <code>PredictiveModelType</code> - Indicates the type of the <code>MLModel</code>. <code>Algorithm</code> - Indicates the algorithm that was used for the <code>MLModel</code>.

##### Instances
``` purescript
Newtype DetailsAttributes _
Generic DetailsAttributes _
Show DetailsAttributes
Decode DetailsAttributes
Encode DetailsAttributes
```

#### `DetailsMap`

``` purescript
newtype DetailsMap
  = DetailsMap (StrMap DetailsValue)
```

Provides any additional details regarding the prediction.

##### Instances
``` purescript
Newtype DetailsMap _
Generic DetailsMap _
Show DetailsMap
Decode DetailsMap
Encode DetailsMap
```

#### `DetailsValue`

``` purescript
newtype DetailsValue
  = DetailsValue String
```

##### Instances
``` purescript
Newtype DetailsValue _
Generic DetailsValue _
Show DetailsValue
Decode DetailsValue
Encode DetailsValue
```

#### `EDPPipelineId`

``` purescript
newtype EDPPipelineId
  = EDPPipelineId String
```

##### Instances
``` purescript
Newtype EDPPipelineId _
Generic EDPPipelineId _
Show EDPPipelineId
Decode EDPPipelineId
Encode EDPPipelineId
```

#### `EDPResourceRole`

``` purescript
newtype EDPResourceRole
  = EDPResourceRole String
```

##### Instances
``` purescript
Newtype EDPResourceRole _
Generic EDPResourceRole _
Show EDPResourceRole
Decode EDPResourceRole
Encode EDPResourceRole
```

#### `EDPSecurityGroupId`

``` purescript
newtype EDPSecurityGroupId
  = EDPSecurityGroupId String
```

##### Instances
``` purescript
Newtype EDPSecurityGroupId _
Generic EDPSecurityGroupId _
Show EDPSecurityGroupId
Decode EDPSecurityGroupId
Encode EDPSecurityGroupId
```

#### `EDPSecurityGroupIds`

``` purescript
newtype EDPSecurityGroupIds
  = EDPSecurityGroupIds (Array EDPSecurityGroupId)
```

##### Instances
``` purescript
Newtype EDPSecurityGroupIds _
Generic EDPSecurityGroupIds _
Show EDPSecurityGroupIds
Decode EDPSecurityGroupIds
Encode EDPSecurityGroupIds
```

#### `EDPServiceRole`

``` purescript
newtype EDPServiceRole
  = EDPServiceRole String
```

##### Instances
``` purescript
Newtype EDPServiceRole _
Generic EDPServiceRole _
Show EDPServiceRole
Decode EDPServiceRole
Encode EDPServiceRole
```

#### `EDPSubnetId`

``` purescript
newtype EDPSubnetId
  = EDPSubnetId String
```

##### Instances
``` purescript
Newtype EDPSubnetId _
Generic EDPSubnetId _
Show EDPSubnetId
Decode EDPSubnetId
Encode EDPSubnetId
```

#### `EntityId`

``` purescript
newtype EntityId
  = EntityId String
```

##### Instances
``` purescript
Newtype EntityId _
Generic EntityId _
Show EntityId
Decode EntityId
Encode EntityId
```

#### `EntityName`

``` purescript
newtype EntityName
  = EntityName String
```

<p>A user-supplied name or description of the Amazon ML resource.</p>

##### Instances
``` purescript
Newtype EntityName _
Generic EntityName _
Show EntityName
Decode EntityName
Encode EntityName
```

#### `EntityStatus`

``` purescript
newtype EntityStatus
  = EntityStatus String
```

<p>Object status with the following possible values:</p> <ul> <li><code>PENDING</code></li> <li><code>INPROGRESS</code></li> <li><code>FAILED</code></li> <li><code>COMPLETED</code></li> <li><code>DELETED</code></li> </ul>

##### Instances
``` purescript
Newtype EntityStatus _
Generic EntityStatus _
Show EntityStatus
Decode EntityStatus
Encode EntityStatus
```

#### `EpochTime`

``` purescript
newtype EpochTime
  = EpochTime Timestamp
```

<p>A timestamp represented in epoch time.</p>

##### Instances
``` purescript
Newtype EpochTime _
Generic EpochTime _
Show EpochTime
Decode EpochTime
Encode EpochTime
```

#### `ErrorCode`

``` purescript
newtype ErrorCode
  = ErrorCode Int
```

##### Instances
``` purescript
Newtype ErrorCode _
Generic ErrorCode _
Show ErrorCode
Decode ErrorCode
Encode ErrorCode
```

#### `ErrorMessage`

``` purescript
newtype ErrorMessage
  = ErrorMessage String
```

##### Instances
``` purescript
Newtype ErrorMessage _
Generic ErrorMessage _
Show ErrorMessage
Decode ErrorMessage
Encode ErrorMessage
```

#### `Evaluation`

``` purescript
newtype Evaluation
  = Evaluation { "EvaluationId" :: NullOrUndefined (EntityId), "MLModelId" :: NullOrUndefined (EntityId), "EvaluationDataSourceId" :: NullOrUndefined (EntityId), "InputDataLocationS3" :: NullOrUndefined (S3Url), "CreatedByIamUser" :: NullOrUndefined (AwsUserArn), "CreatedAt" :: NullOrUndefined (EpochTime), "LastUpdatedAt" :: NullOrUndefined (EpochTime), "Name" :: NullOrUndefined (EntityName), "Status" :: NullOrUndefined (EntityStatus), "PerformanceMetrics" :: NullOrUndefined (PerformanceMetrics), "Message" :: NullOrUndefined (Message), "ComputeTime" :: NullOrUndefined (LongType), "FinishedAt" :: NullOrUndefined (EpochTime), "StartedAt" :: NullOrUndefined (EpochTime) }
```

<p> Represents the output of <code>GetEvaluation</code> operation. </p> <p>The content consists of the detailed metadata and data file information and the current status of the <code>Evaluation</code>.</p>

##### Instances
``` purescript
Newtype Evaluation _
Generic Evaluation _
Show Evaluation
Decode Evaluation
Encode Evaluation
```

#### `newEvaluation`

``` purescript
newEvaluation :: Evaluation
```

Constructs Evaluation from required parameters

#### `newEvaluation'`

``` purescript
newEvaluation' :: ({ "EvaluationId" :: NullOrUndefined (EntityId), "MLModelId" :: NullOrUndefined (EntityId), "EvaluationDataSourceId" :: NullOrUndefined (EntityId), "InputDataLocationS3" :: NullOrUndefined (S3Url), "CreatedByIamUser" :: NullOrUndefined (AwsUserArn), "CreatedAt" :: NullOrUndefined (EpochTime), "LastUpdatedAt" :: NullOrUndefined (EpochTime), "Name" :: NullOrUndefined (EntityName), "Status" :: NullOrUndefined (EntityStatus), "PerformanceMetrics" :: NullOrUndefined (PerformanceMetrics), "Message" :: NullOrUndefined (Message), "ComputeTime" :: NullOrUndefined (LongType), "FinishedAt" :: NullOrUndefined (EpochTime), "StartedAt" :: NullOrUndefined (EpochTime) } -> { "EvaluationId" :: NullOrUndefined (EntityId), "MLModelId" :: NullOrUndefined (EntityId), "EvaluationDataSourceId" :: NullOrUndefined (EntityId), "InputDataLocationS3" :: NullOrUndefined (S3Url), "CreatedByIamUser" :: NullOrUndefined (AwsUserArn), "CreatedAt" :: NullOrUndefined (EpochTime), "LastUpdatedAt" :: NullOrUndefined (EpochTime), "Name" :: NullOrUndefined (EntityName), "Status" :: NullOrUndefined (EntityStatus), "PerformanceMetrics" :: NullOrUndefined (PerformanceMetrics), "Message" :: NullOrUndefined (Message), "ComputeTime" :: NullOrUndefined (LongType), "FinishedAt" :: NullOrUndefined (EpochTime), "StartedAt" :: NullOrUndefined (EpochTime) }) -> Evaluation
```

Constructs Evaluation's fields from required parameters

#### `EvaluationFilterVariable`

``` purescript
newtype EvaluationFilterVariable
  = EvaluationFilterVariable String
```

<p>A list of the variables to use in searching or filtering <code>Evaluation</code>.</p> <ul> <li> <code>CreatedAt</code> - Sets the search criteria to <code>Evaluation</code> creation date.</li> <li> <code>Status</code> - Sets the search criteria to <code>Evaluation</code> status.</li> <li> <code>Name</code> - Sets the search criteria to the contents of <code>Evaluation</code> <b> </b> <code>Name</code>.</li> <li> <code>IAMUser</code> - Sets the search criteria to the user account that invoked an evaluation.</li> <li> <code>MLModelId</code> - Sets the search criteria to the <code>Predictor</code> that was evaluated.</li> <li> <code>DataSourceId</code> - Sets the search criteria to the <code>DataSource</code> used in evaluation.</li> <li> <code>DataUri</code> - Sets the search criteria to the data file(s) used in evaluation. The URL can identify either a file or an Amazon Simple Storage Service (Amazon S3) bucket or directory.</li> </ul>

##### Instances
``` purescript
Newtype EvaluationFilterVariable _
Generic EvaluationFilterVariable _
Show EvaluationFilterVariable
Decode EvaluationFilterVariable
Encode EvaluationFilterVariable
```

#### `Evaluations`

``` purescript
newtype Evaluations
  = Evaluations (Array Evaluation)
```

##### Instances
``` purescript
Newtype Evaluations _
Generic Evaluations _
Show Evaluations
Decode Evaluations
Encode Evaluations
```

#### `GetBatchPredictionInput`

``` purescript
newtype GetBatchPredictionInput
  = GetBatchPredictionInput { "BatchPredictionId" :: EntityId }
```

##### Instances
``` purescript
Newtype GetBatchPredictionInput _
Generic GetBatchPredictionInput _
Show GetBatchPredictionInput
Decode GetBatchPredictionInput
Encode GetBatchPredictionInput
```

#### `newGetBatchPredictionInput`

``` purescript
newGetBatchPredictionInput :: EntityId -> GetBatchPredictionInput
```

Constructs GetBatchPredictionInput from required parameters

#### `newGetBatchPredictionInput'`

``` purescript
newGetBatchPredictionInput' :: EntityId -> ({ "BatchPredictionId" :: EntityId } -> { "BatchPredictionId" :: EntityId }) -> GetBatchPredictionInput
```

Constructs GetBatchPredictionInput's fields from required parameters

#### `GetBatchPredictionOutput`

``` purescript
newtype GetBatchPredictionOutput
  = GetBatchPredictionOutput { "BatchPredictionId" :: NullOrUndefined (EntityId), "MLModelId" :: NullOrUndefined (EntityId), "BatchPredictionDataSourceId" :: NullOrUndefined (EntityId), "InputDataLocationS3" :: NullOrUndefined (S3Url), "CreatedByIamUser" :: NullOrUndefined (AwsUserArn), "CreatedAt" :: NullOrUndefined (EpochTime), "LastUpdatedAt" :: NullOrUndefined (EpochTime), "Name" :: NullOrUndefined (EntityName), "Status" :: NullOrUndefined (EntityStatus), "OutputUri" :: NullOrUndefined (S3Url), "LogUri" :: NullOrUndefined (PresignedS3Url), "Message" :: NullOrUndefined (Message), "ComputeTime" :: NullOrUndefined (LongType), "FinishedAt" :: NullOrUndefined (EpochTime), "StartedAt" :: NullOrUndefined (EpochTime), "TotalRecordCount" :: NullOrUndefined (LongType), "InvalidRecordCount" :: NullOrUndefined (LongType) }
```

<p>Represents the output of a <code>GetBatchPrediction</code> operation and describes a <code>BatchPrediction</code>.</p>

##### Instances
``` purescript
Newtype GetBatchPredictionOutput _
Generic GetBatchPredictionOutput _
Show GetBatchPredictionOutput
Decode GetBatchPredictionOutput
Encode GetBatchPredictionOutput
```

#### `newGetBatchPredictionOutput`

``` purescript
newGetBatchPredictionOutput :: GetBatchPredictionOutput
```

Constructs GetBatchPredictionOutput from required parameters

#### `newGetBatchPredictionOutput'`

``` purescript
newGetBatchPredictionOutput' :: ({ "BatchPredictionId" :: NullOrUndefined (EntityId), "MLModelId" :: NullOrUndefined (EntityId), "BatchPredictionDataSourceId" :: NullOrUndefined (EntityId), "InputDataLocationS3" :: NullOrUndefined (S3Url), "CreatedByIamUser" :: NullOrUndefined (AwsUserArn), "CreatedAt" :: NullOrUndefined (EpochTime), "LastUpdatedAt" :: NullOrUndefined (EpochTime), "Name" :: NullOrUndefined (EntityName), "Status" :: NullOrUndefined (EntityStatus), "OutputUri" :: NullOrUndefined (S3Url), "LogUri" :: NullOrUndefined (PresignedS3Url), "Message" :: NullOrUndefined (Message), "ComputeTime" :: NullOrUndefined (LongType), "FinishedAt" :: NullOrUndefined (EpochTime), "StartedAt" :: NullOrUndefined (EpochTime), "TotalRecordCount" :: NullOrUndefined (LongType), "InvalidRecordCount" :: NullOrUndefined (LongType) } -> { "BatchPredictionId" :: NullOrUndefined (EntityId), "MLModelId" :: NullOrUndefined (EntityId), "BatchPredictionDataSourceId" :: NullOrUndefined (EntityId), "InputDataLocationS3" :: NullOrUndefined (S3Url), "CreatedByIamUser" :: NullOrUndefined (AwsUserArn), "CreatedAt" :: NullOrUndefined (EpochTime), "LastUpdatedAt" :: NullOrUndefined (EpochTime), "Name" :: NullOrUndefined (EntityName), "Status" :: NullOrUndefined (EntityStatus), "OutputUri" :: NullOrUndefined (S3Url), "LogUri" :: NullOrUndefined (PresignedS3Url), "Message" :: NullOrUndefined (Message), "ComputeTime" :: NullOrUndefined (LongType), "FinishedAt" :: NullOrUndefined (EpochTime), "StartedAt" :: NullOrUndefined (EpochTime), "TotalRecordCount" :: NullOrUndefined (LongType), "InvalidRecordCount" :: NullOrUndefined (LongType) }) -> GetBatchPredictionOutput
```

Constructs GetBatchPredictionOutput's fields from required parameters

#### `GetDataSourceInput`

``` purescript
newtype GetDataSourceInput
  = GetDataSourceInput { "DataSourceId" :: EntityId, "Verbose" :: NullOrUndefined (Verbose) }
```

##### Instances
``` purescript
Newtype GetDataSourceInput _
Generic GetDataSourceInput _
Show GetDataSourceInput
Decode GetDataSourceInput
Encode GetDataSourceInput
```

#### `newGetDataSourceInput`

``` purescript
newGetDataSourceInput :: EntityId -> GetDataSourceInput
```

Constructs GetDataSourceInput from required parameters

#### `newGetDataSourceInput'`

``` purescript
newGetDataSourceInput' :: EntityId -> ({ "DataSourceId" :: EntityId, "Verbose" :: NullOrUndefined (Verbose) } -> { "DataSourceId" :: EntityId, "Verbose" :: NullOrUndefined (Verbose) }) -> GetDataSourceInput
```

Constructs GetDataSourceInput's fields from required parameters

#### `GetDataSourceOutput`

``` purescript
newtype GetDataSourceOutput
  = GetDataSourceOutput { "DataSourceId" :: NullOrUndefined (EntityId), "DataLocationS3" :: NullOrUndefined (S3Url), "DataRearrangement" :: NullOrUndefined (DataRearrangement), "CreatedByIamUser" :: NullOrUndefined (AwsUserArn), "CreatedAt" :: NullOrUndefined (EpochTime), "LastUpdatedAt" :: NullOrUndefined (EpochTime), "DataSizeInBytes" :: NullOrUndefined (LongType), "NumberOfFiles" :: NullOrUndefined (LongType), "Name" :: NullOrUndefined (EntityName), "Status" :: NullOrUndefined (EntityStatus), "LogUri" :: NullOrUndefined (PresignedS3Url), "Message" :: NullOrUndefined (Message), "RedshiftMetadata" :: NullOrUndefined (RedshiftMetadata), "RDSMetadata" :: NullOrUndefined (RDSMetadata), "RoleARN" :: NullOrUndefined (RoleARN), "ComputeStatistics" :: NullOrUndefined (ComputeStatistics), "ComputeTime" :: NullOrUndefined (LongType), "FinishedAt" :: NullOrUndefined (EpochTime), "StartedAt" :: NullOrUndefined (EpochTime), "DataSourceSchema" :: NullOrUndefined (DataSchema) }
```

<p>Represents the output of a <code>GetDataSource</code> operation and describes a <code>DataSource</code>.</p>

##### Instances
``` purescript
Newtype GetDataSourceOutput _
Generic GetDataSourceOutput _
Show GetDataSourceOutput
Decode GetDataSourceOutput
Encode GetDataSourceOutput
```

#### `newGetDataSourceOutput`

``` purescript
newGetDataSourceOutput :: GetDataSourceOutput
```

Constructs GetDataSourceOutput from required parameters

#### `newGetDataSourceOutput'`

``` purescript
newGetDataSourceOutput' :: ({ "DataSourceId" :: NullOrUndefined (EntityId), "DataLocationS3" :: NullOrUndefined (S3Url), "DataRearrangement" :: NullOrUndefined (DataRearrangement), "CreatedByIamUser" :: NullOrUndefined (AwsUserArn), "CreatedAt" :: NullOrUndefined (EpochTime), "LastUpdatedAt" :: NullOrUndefined (EpochTime), "DataSizeInBytes" :: NullOrUndefined (LongType), "NumberOfFiles" :: NullOrUndefined (LongType), "Name" :: NullOrUndefined (EntityName), "Status" :: NullOrUndefined (EntityStatus), "LogUri" :: NullOrUndefined (PresignedS3Url), "Message" :: NullOrUndefined (Message), "RedshiftMetadata" :: NullOrUndefined (RedshiftMetadata), "RDSMetadata" :: NullOrUndefined (RDSMetadata), "RoleARN" :: NullOrUndefined (RoleARN), "ComputeStatistics" :: NullOrUndefined (ComputeStatistics), "ComputeTime" :: NullOrUndefined (LongType), "FinishedAt" :: NullOrUndefined (EpochTime), "StartedAt" :: NullOrUndefined (EpochTime), "DataSourceSchema" :: NullOrUndefined (DataSchema) } -> { "DataSourceId" :: NullOrUndefined (EntityId), "DataLocationS3" :: NullOrUndefined (S3Url), "DataRearrangement" :: NullOrUndefined (DataRearrangement), "CreatedByIamUser" :: NullOrUndefined (AwsUserArn), "CreatedAt" :: NullOrUndefined (EpochTime), "LastUpdatedAt" :: NullOrUndefined (EpochTime), "DataSizeInBytes" :: NullOrUndefined (LongType), "NumberOfFiles" :: NullOrUndefined (LongType), "Name" :: NullOrUndefined (EntityName), "Status" :: NullOrUndefined (EntityStatus), "LogUri" :: NullOrUndefined (PresignedS3Url), "Message" :: NullOrUndefined (Message), "RedshiftMetadata" :: NullOrUndefined (RedshiftMetadata), "RDSMetadata" :: NullOrUndefined (RDSMetadata), "RoleARN" :: NullOrUndefined (RoleARN), "ComputeStatistics" :: NullOrUndefined (ComputeStatistics), "ComputeTime" :: NullOrUndefined (LongType), "FinishedAt" :: NullOrUndefined (EpochTime), "StartedAt" :: NullOrUndefined (EpochTime), "DataSourceSchema" :: NullOrUndefined (DataSchema) }) -> GetDataSourceOutput
```

Constructs GetDataSourceOutput's fields from required parameters

#### `GetEvaluationInput`

``` purescript
newtype GetEvaluationInput
  = GetEvaluationInput { "EvaluationId" :: EntityId }
```

##### Instances
``` purescript
Newtype GetEvaluationInput _
Generic GetEvaluationInput _
Show GetEvaluationInput
Decode GetEvaluationInput
Encode GetEvaluationInput
```

#### `newGetEvaluationInput`

``` purescript
newGetEvaluationInput :: EntityId -> GetEvaluationInput
```

Constructs GetEvaluationInput from required parameters

#### `newGetEvaluationInput'`

``` purescript
newGetEvaluationInput' :: EntityId -> ({ "EvaluationId" :: EntityId } -> { "EvaluationId" :: EntityId }) -> GetEvaluationInput
```

Constructs GetEvaluationInput's fields from required parameters

#### `GetEvaluationOutput`

``` purescript
newtype GetEvaluationOutput
  = GetEvaluationOutput { "EvaluationId" :: NullOrUndefined (EntityId), "MLModelId" :: NullOrUndefined (EntityId), "EvaluationDataSourceId" :: NullOrUndefined (EntityId), "InputDataLocationS3" :: NullOrUndefined (S3Url), "CreatedByIamUser" :: NullOrUndefined (AwsUserArn), "CreatedAt" :: NullOrUndefined (EpochTime), "LastUpdatedAt" :: NullOrUndefined (EpochTime), "Name" :: NullOrUndefined (EntityName), "Status" :: NullOrUndefined (EntityStatus), "PerformanceMetrics" :: NullOrUndefined (PerformanceMetrics), "LogUri" :: NullOrUndefined (PresignedS3Url), "Message" :: NullOrUndefined (Message), "ComputeTime" :: NullOrUndefined (LongType), "FinishedAt" :: NullOrUndefined (EpochTime), "StartedAt" :: NullOrUndefined (EpochTime) }
```

<p>Represents the output of a <code>GetEvaluation</code> operation and describes an <code>Evaluation</code>.</p>

##### Instances
``` purescript
Newtype GetEvaluationOutput _
Generic GetEvaluationOutput _
Show GetEvaluationOutput
Decode GetEvaluationOutput
Encode GetEvaluationOutput
```

#### `newGetEvaluationOutput`

``` purescript
newGetEvaluationOutput :: GetEvaluationOutput
```

Constructs GetEvaluationOutput from required parameters

#### `newGetEvaluationOutput'`

``` purescript
newGetEvaluationOutput' :: ({ "EvaluationId" :: NullOrUndefined (EntityId), "MLModelId" :: NullOrUndefined (EntityId), "EvaluationDataSourceId" :: NullOrUndefined (EntityId), "InputDataLocationS3" :: NullOrUndefined (S3Url), "CreatedByIamUser" :: NullOrUndefined (AwsUserArn), "CreatedAt" :: NullOrUndefined (EpochTime), "LastUpdatedAt" :: NullOrUndefined (EpochTime), "Name" :: NullOrUndefined (EntityName), "Status" :: NullOrUndefined (EntityStatus), "PerformanceMetrics" :: NullOrUndefined (PerformanceMetrics), "LogUri" :: NullOrUndefined (PresignedS3Url), "Message" :: NullOrUndefined (Message), "ComputeTime" :: NullOrUndefined (LongType), "FinishedAt" :: NullOrUndefined (EpochTime), "StartedAt" :: NullOrUndefined (EpochTime) } -> { "EvaluationId" :: NullOrUndefined (EntityId), "MLModelId" :: NullOrUndefined (EntityId), "EvaluationDataSourceId" :: NullOrUndefined (EntityId), "InputDataLocationS3" :: NullOrUndefined (S3Url), "CreatedByIamUser" :: NullOrUndefined (AwsUserArn), "CreatedAt" :: NullOrUndefined (EpochTime), "LastUpdatedAt" :: NullOrUndefined (EpochTime), "Name" :: NullOrUndefined (EntityName), "Status" :: NullOrUndefined (EntityStatus), "PerformanceMetrics" :: NullOrUndefined (PerformanceMetrics), "LogUri" :: NullOrUndefined (PresignedS3Url), "Message" :: NullOrUndefined (Message), "ComputeTime" :: NullOrUndefined (LongType), "FinishedAt" :: NullOrUndefined (EpochTime), "StartedAt" :: NullOrUndefined (EpochTime) }) -> GetEvaluationOutput
```

Constructs GetEvaluationOutput's fields from required parameters

#### `GetMLModelInput`

``` purescript
newtype GetMLModelInput
  = GetMLModelInput { "MLModelId" :: EntityId, "Verbose" :: NullOrUndefined (Verbose) }
```

##### Instances
``` purescript
Newtype GetMLModelInput _
Generic GetMLModelInput _
Show GetMLModelInput
Decode GetMLModelInput
Encode GetMLModelInput
```

#### `newGetMLModelInput`

``` purescript
newGetMLModelInput :: EntityId -> GetMLModelInput
```

Constructs GetMLModelInput from required parameters

#### `newGetMLModelInput'`

``` purescript
newGetMLModelInput' :: EntityId -> ({ "MLModelId" :: EntityId, "Verbose" :: NullOrUndefined (Verbose) } -> { "MLModelId" :: EntityId, "Verbose" :: NullOrUndefined (Verbose) }) -> GetMLModelInput
```

Constructs GetMLModelInput's fields from required parameters

#### `GetMLModelOutput`

``` purescript
newtype GetMLModelOutput
  = GetMLModelOutput { "MLModelId" :: NullOrUndefined (EntityId), "TrainingDataSourceId" :: NullOrUndefined (EntityId), "CreatedByIamUser" :: NullOrUndefined (AwsUserArn), "CreatedAt" :: NullOrUndefined (EpochTime), "LastUpdatedAt" :: NullOrUndefined (EpochTime), "Name" :: NullOrUndefined (MLModelName), "Status" :: NullOrUndefined (EntityStatus), "SizeInBytes" :: NullOrUndefined (LongType), "EndpointInfo" :: NullOrUndefined (RealtimeEndpointInfo), "TrainingParameters" :: NullOrUndefined (TrainingParameters), "InputDataLocationS3" :: NullOrUndefined (S3Url), "MLModelType" :: NullOrUndefined (MLModelType), "ScoreThreshold" :: NullOrUndefined (ScoreThreshold), "ScoreThresholdLastUpdatedAt" :: NullOrUndefined (EpochTime), "LogUri" :: NullOrUndefined (PresignedS3Url), "Message" :: NullOrUndefined (Message), "ComputeTime" :: NullOrUndefined (LongType), "FinishedAt" :: NullOrUndefined (EpochTime), "StartedAt" :: NullOrUndefined (EpochTime), "Recipe" :: NullOrUndefined (Recipe), "Schema" :: NullOrUndefined (DataSchema) }
```

<p>Represents the output of a <code>GetMLModel</code> operation, and provides detailed information about a <code>MLModel</code>.</p>

##### Instances
``` purescript
Newtype GetMLModelOutput _
Generic GetMLModelOutput _
Show GetMLModelOutput
Decode GetMLModelOutput
Encode GetMLModelOutput
```

#### `newGetMLModelOutput`

``` purescript
newGetMLModelOutput :: GetMLModelOutput
```

Constructs GetMLModelOutput from required parameters

#### `newGetMLModelOutput'`

``` purescript
newGetMLModelOutput' :: ({ "MLModelId" :: NullOrUndefined (EntityId), "TrainingDataSourceId" :: NullOrUndefined (EntityId), "CreatedByIamUser" :: NullOrUndefined (AwsUserArn), "CreatedAt" :: NullOrUndefined (EpochTime), "LastUpdatedAt" :: NullOrUndefined (EpochTime), "Name" :: NullOrUndefined (MLModelName), "Status" :: NullOrUndefined (EntityStatus), "SizeInBytes" :: NullOrUndefined (LongType), "EndpointInfo" :: NullOrUndefined (RealtimeEndpointInfo), "TrainingParameters" :: NullOrUndefined (TrainingParameters), "InputDataLocationS3" :: NullOrUndefined (S3Url), "MLModelType" :: NullOrUndefined (MLModelType), "ScoreThreshold" :: NullOrUndefined (ScoreThreshold), "ScoreThresholdLastUpdatedAt" :: NullOrUndefined (EpochTime), "LogUri" :: NullOrUndefined (PresignedS3Url), "Message" :: NullOrUndefined (Message), "ComputeTime" :: NullOrUndefined (LongType), "FinishedAt" :: NullOrUndefined (EpochTime), "StartedAt" :: NullOrUndefined (EpochTime), "Recipe" :: NullOrUndefined (Recipe), "Schema" :: NullOrUndefined (DataSchema) } -> { "MLModelId" :: NullOrUndefined (EntityId), "TrainingDataSourceId" :: NullOrUndefined (EntityId), "CreatedByIamUser" :: NullOrUndefined (AwsUserArn), "CreatedAt" :: NullOrUndefined (EpochTime), "LastUpdatedAt" :: NullOrUndefined (EpochTime), "Name" :: NullOrUndefined (MLModelName), "Status" :: NullOrUndefined (EntityStatus), "SizeInBytes" :: NullOrUndefined (LongType), "EndpointInfo" :: NullOrUndefined (RealtimeEndpointInfo), "TrainingParameters" :: NullOrUndefined (TrainingParameters), "InputDataLocationS3" :: NullOrUndefined (S3Url), "MLModelType" :: NullOrUndefined (MLModelType), "ScoreThreshold" :: NullOrUndefined (ScoreThreshold), "ScoreThresholdLastUpdatedAt" :: NullOrUndefined (EpochTime), "LogUri" :: NullOrUndefined (PresignedS3Url), "Message" :: NullOrUndefined (Message), "ComputeTime" :: NullOrUndefined (LongType), "FinishedAt" :: NullOrUndefined (EpochTime), "StartedAt" :: NullOrUndefined (EpochTime), "Recipe" :: NullOrUndefined (Recipe), "Schema" :: NullOrUndefined (DataSchema) }) -> GetMLModelOutput
```

Constructs GetMLModelOutput's fields from required parameters

#### `IdempotentParameterMismatchException`

``` purescript
newtype IdempotentParameterMismatchException
  = IdempotentParameterMismatchException { message :: NullOrUndefined (ErrorMessage), code :: NullOrUndefined (ErrorCode) }
```

<p>A second request to use or change an object was not allowed. This can result from retrying a request using a parameter that was not present in the original request.</p>

##### Instances
``` purescript
Newtype IdempotentParameterMismatchException _
Generic IdempotentParameterMismatchException _
Show IdempotentParameterMismatchException
Decode IdempotentParameterMismatchException
Encode IdempotentParameterMismatchException
```

#### `newIdempotentParameterMismatchException`

``` purescript
newIdempotentParameterMismatchException :: IdempotentParameterMismatchException
```

Constructs IdempotentParameterMismatchException from required parameters

#### `newIdempotentParameterMismatchException'`

``` purescript
newIdempotentParameterMismatchException' :: ({ message :: NullOrUndefined (ErrorMessage), code :: NullOrUndefined (ErrorCode) } -> { message :: NullOrUndefined (ErrorMessage), code :: NullOrUndefined (ErrorCode) }) -> IdempotentParameterMismatchException
```

Constructs IdempotentParameterMismatchException's fields from required parameters

#### `IntegerType`

``` purescript
newtype IntegerType
  = IntegerType Int
```

<p>Integer type that is a 32-bit signed number.</p>

##### Instances
``` purescript
Newtype IntegerType _
Generic IntegerType _
Show IntegerType
Decode IntegerType
Encode IntegerType
```

#### `InternalServerException`

``` purescript
newtype InternalServerException
  = InternalServerException { message :: NullOrUndefined (ErrorMessage), code :: NullOrUndefined (ErrorCode) }
```

<p>An error on the server occurred when trying to process a request.</p>

##### Instances
``` purescript
Newtype InternalServerException _
Generic InternalServerException _
Show InternalServerException
Decode InternalServerException
Encode InternalServerException
```

#### `newInternalServerException`

``` purescript
newInternalServerException :: InternalServerException
```

Constructs InternalServerException from required parameters

#### `newInternalServerException'`

``` purescript
newInternalServerException' :: ({ message :: NullOrUndefined (ErrorMessage), code :: NullOrUndefined (ErrorCode) } -> { message :: NullOrUndefined (ErrorMessage), code :: NullOrUndefined (ErrorCode) }) -> InternalServerException
```

Constructs InternalServerException's fields from required parameters

#### `InvalidInputException`

``` purescript
newtype InvalidInputException
  = InvalidInputException { message :: NullOrUndefined (ErrorMessage), code :: NullOrUndefined (ErrorCode) }
```

<p>An error on the client occurred. Typically, the cause is an invalid input value.</p>

##### Instances
``` purescript
Newtype InvalidInputException _
Generic InvalidInputException _
Show InvalidInputException
Decode InvalidInputException
Encode InvalidInputException
```

#### `newInvalidInputException`

``` purescript
newInvalidInputException :: InvalidInputException
```

Constructs InvalidInputException from required parameters

#### `newInvalidInputException'`

``` purescript
newInvalidInputException' :: ({ message :: NullOrUndefined (ErrorMessage), code :: NullOrUndefined (ErrorCode) } -> { message :: NullOrUndefined (ErrorMessage), code :: NullOrUndefined (ErrorCode) }) -> InvalidInputException
```

Constructs InvalidInputException's fields from required parameters

#### `InvalidTagException`

``` purescript
newtype InvalidTagException
  = InvalidTagException { message :: NullOrUndefined (ErrorMessage) }
```

##### Instances
``` purescript
Newtype InvalidTagException _
Generic InvalidTagException _
Show InvalidTagException
Decode InvalidTagException
Encode InvalidTagException
```

#### `newInvalidTagException`

``` purescript
newInvalidTagException :: InvalidTagException
```

Constructs InvalidTagException from required parameters

#### `newInvalidTagException'`

``` purescript
newInvalidTagException' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> InvalidTagException
```

Constructs InvalidTagException's fields from required parameters

#### `Label`

``` purescript
newtype Label
  = Label String
```

##### Instances
``` purescript
Newtype Label _
Generic Label _
Show Label
Decode Label
Encode Label
```

#### `LimitExceededException`

``` purescript
newtype LimitExceededException
  = LimitExceededException { message :: NullOrUndefined (ErrorMessage), code :: NullOrUndefined (ErrorCode) }
```

<p>The subscriber exceeded the maximum number of operations. This exception can occur when listing objects such as <code>DataSource</code>.</p>

##### Instances
``` purescript
Newtype LimitExceededException _
Generic LimitExceededException _
Show LimitExceededException
Decode LimitExceededException
Encode LimitExceededException
```

#### `newLimitExceededException`

``` purescript
newLimitExceededException :: LimitExceededException
```

Constructs LimitExceededException from required parameters

#### `newLimitExceededException'`

``` purescript
newLimitExceededException' :: ({ message :: NullOrUndefined (ErrorMessage), code :: NullOrUndefined (ErrorCode) } -> { message :: NullOrUndefined (ErrorMessage), code :: NullOrUndefined (ErrorCode) }) -> LimitExceededException
```

Constructs LimitExceededException's fields from required parameters

#### `LongType`

``` purescript
newtype LongType
  = LongType Number
```

<p>Long integer type that is a 64-bit signed number.</p>

##### Instances
``` purescript
Newtype LongType _
Generic LongType _
Show LongType
Decode LongType
Encode LongType
```

#### `MLModel`

``` purescript
newtype MLModel
  = MLModel { "MLModelId" :: NullOrUndefined (EntityId), "TrainingDataSourceId" :: NullOrUndefined (EntityId), "CreatedByIamUser" :: NullOrUndefined (AwsUserArn), "CreatedAt" :: NullOrUndefined (EpochTime), "LastUpdatedAt" :: NullOrUndefined (EpochTime), "Name" :: NullOrUndefined (MLModelName), "Status" :: NullOrUndefined (EntityStatus), "SizeInBytes" :: NullOrUndefined (LongType), "EndpointInfo" :: NullOrUndefined (RealtimeEndpointInfo), "TrainingParameters" :: NullOrUndefined (TrainingParameters), "InputDataLocationS3" :: NullOrUndefined (S3Url), "Algorithm" :: NullOrUndefined (Algorithm), "MLModelType" :: NullOrUndefined (MLModelType), "ScoreThreshold" :: NullOrUndefined (ScoreThreshold), "ScoreThresholdLastUpdatedAt" :: NullOrUndefined (EpochTime), "Message" :: NullOrUndefined (Message), "ComputeTime" :: NullOrUndefined (LongType), "FinishedAt" :: NullOrUndefined (EpochTime), "StartedAt" :: NullOrUndefined (EpochTime) }
```

<p> Represents the output of a <code>GetMLModel</code> operation. </p> <p>The content consists of the detailed metadata and the current status of the <code>MLModel</code>.</p>

##### Instances
``` purescript
Newtype MLModel _
Generic MLModel _
Show MLModel
Decode MLModel
Encode MLModel
```

#### `newMLModel`

``` purescript
newMLModel :: MLModel
```

Constructs MLModel from required parameters

#### `newMLModel'`

``` purescript
newMLModel' :: ({ "MLModelId" :: NullOrUndefined (EntityId), "TrainingDataSourceId" :: NullOrUndefined (EntityId), "CreatedByIamUser" :: NullOrUndefined (AwsUserArn), "CreatedAt" :: NullOrUndefined (EpochTime), "LastUpdatedAt" :: NullOrUndefined (EpochTime), "Name" :: NullOrUndefined (MLModelName), "Status" :: NullOrUndefined (EntityStatus), "SizeInBytes" :: NullOrUndefined (LongType), "EndpointInfo" :: NullOrUndefined (RealtimeEndpointInfo), "TrainingParameters" :: NullOrUndefined (TrainingParameters), "InputDataLocationS3" :: NullOrUndefined (S3Url), "Algorithm" :: NullOrUndefined (Algorithm), "MLModelType" :: NullOrUndefined (MLModelType), "ScoreThreshold" :: NullOrUndefined (ScoreThreshold), "ScoreThresholdLastUpdatedAt" :: NullOrUndefined (EpochTime), "Message" :: NullOrUndefined (Message), "ComputeTime" :: NullOrUndefined (LongType), "FinishedAt" :: NullOrUndefined (EpochTime), "StartedAt" :: NullOrUndefined (EpochTime) } -> { "MLModelId" :: NullOrUndefined (EntityId), "TrainingDataSourceId" :: NullOrUndefined (EntityId), "CreatedByIamUser" :: NullOrUndefined (AwsUserArn), "CreatedAt" :: NullOrUndefined (EpochTime), "LastUpdatedAt" :: NullOrUndefined (EpochTime), "Name" :: NullOrUndefined (MLModelName), "Status" :: NullOrUndefined (EntityStatus), "SizeInBytes" :: NullOrUndefined (LongType), "EndpointInfo" :: NullOrUndefined (RealtimeEndpointInfo), "TrainingParameters" :: NullOrUndefined (TrainingParameters), "InputDataLocationS3" :: NullOrUndefined (S3Url), "Algorithm" :: NullOrUndefined (Algorithm), "MLModelType" :: NullOrUndefined (MLModelType), "ScoreThreshold" :: NullOrUndefined (ScoreThreshold), "ScoreThresholdLastUpdatedAt" :: NullOrUndefined (EpochTime), "Message" :: NullOrUndefined (Message), "ComputeTime" :: NullOrUndefined (LongType), "FinishedAt" :: NullOrUndefined (EpochTime), "StartedAt" :: NullOrUndefined (EpochTime) }) -> MLModel
```

Constructs MLModel's fields from required parameters

#### `MLModelFilterVariable`

``` purescript
newtype MLModelFilterVariable
  = MLModelFilterVariable String
```

##### Instances
``` purescript
Newtype MLModelFilterVariable _
Generic MLModelFilterVariable _
Show MLModelFilterVariable
Decode MLModelFilterVariable
Encode MLModelFilterVariable
```

#### `MLModelName`

``` purescript
newtype MLModelName
  = MLModelName String
```

##### Instances
``` purescript
Newtype MLModelName _
Generic MLModelName _
Show MLModelName
Decode MLModelName
Encode MLModelName
```

#### `MLModelType`

``` purescript
newtype MLModelType
  = MLModelType String
```

##### Instances
``` purescript
Newtype MLModelType _
Generic MLModelType _
Show MLModelType
Decode MLModelType
Encode MLModelType
```

#### `MLModels`

``` purescript
newtype MLModels
  = MLModels (Array MLModel)
```

##### Instances
``` purescript
Newtype MLModels _
Generic MLModels _
Show MLModels
Decode MLModels
Encode MLModels
```

#### `Message`

``` purescript
newtype Message
  = Message String
```

<p> Description of the most recent details about an object.</p>

##### Instances
``` purescript
Newtype Message _
Generic Message _
Show Message
Decode Message
Encode Message
```

#### `PageLimit`

``` purescript
newtype PageLimit
  = PageLimit Int
```

##### Instances
``` purescript
Newtype PageLimit _
Generic PageLimit _
Show PageLimit
Decode PageLimit
Encode PageLimit
```

#### `PerformanceMetrics`

``` purescript
newtype PerformanceMetrics
  = PerformanceMetrics { "Properties" :: NullOrUndefined (PerformanceMetricsProperties) }
```

<p>Measurements of how well the <code>MLModel</code> performed on known observations. One of the following metrics is returned, based on the type of the <code>MLModel</code>: </p> <ul> <li> <p>BinaryAUC: The binary <code>MLModel</code> uses the Area Under the Curve (AUC) technique to measure performance. </p> </li> <li> <p>RegressionRMSE: The regression <code>MLModel</code> uses the Root Mean Square Error (RMSE) technique to measure performance. RMSE measures the difference between predicted and actual values for a single variable.</p> </li> <li> <p>MulticlassAvgFScore: The multiclass <code>MLModel</code> uses the F1 score technique to measure performance. </p> </li> </ul> <p> For more information about performance metrics, please see the <a href="http://docs.aws.amazon.com/machine-learning/latest/dg">Amazon Machine Learning Developer Guide</a>. </p>

##### Instances
``` purescript
Newtype PerformanceMetrics _
Generic PerformanceMetrics _
Show PerformanceMetrics
Decode PerformanceMetrics
Encode PerformanceMetrics
```

#### `newPerformanceMetrics`

``` purescript
newPerformanceMetrics :: PerformanceMetrics
```

Constructs PerformanceMetrics from required parameters

#### `newPerformanceMetrics'`

``` purescript
newPerformanceMetrics' :: ({ "Properties" :: NullOrUndefined (PerformanceMetricsProperties) } -> { "Properties" :: NullOrUndefined (PerformanceMetricsProperties) }) -> PerformanceMetrics
```

Constructs PerformanceMetrics's fields from required parameters

#### `PerformanceMetricsProperties`

``` purescript
newtype PerformanceMetricsProperties
  = PerformanceMetricsProperties (StrMap PerformanceMetricsPropertyValue)
```

##### Instances
``` purescript
Newtype PerformanceMetricsProperties _
Generic PerformanceMetricsProperties _
Show PerformanceMetricsProperties
Decode PerformanceMetricsProperties
Encode PerformanceMetricsProperties
```

#### `PerformanceMetricsPropertyKey`

``` purescript
newtype PerformanceMetricsPropertyKey
  = PerformanceMetricsPropertyKey String
```

##### Instances
``` purescript
Newtype PerformanceMetricsPropertyKey _
Generic PerformanceMetricsPropertyKey _
Show PerformanceMetricsPropertyKey
Decode PerformanceMetricsPropertyKey
Encode PerformanceMetricsPropertyKey
```

#### `PerformanceMetricsPropertyValue`

``` purescript
newtype PerformanceMetricsPropertyValue
  = PerformanceMetricsPropertyValue String
```

##### Instances
``` purescript
Newtype PerformanceMetricsPropertyValue _
Generic PerformanceMetricsPropertyValue _
Show PerformanceMetricsPropertyValue
Decode PerformanceMetricsPropertyValue
Encode PerformanceMetricsPropertyValue
```

#### `PredictInput`

``` purescript
newtype PredictInput
  = PredictInput { "MLModelId" :: EntityId, "Record" :: Record'', "PredictEndpoint" :: VipURL }
```

##### Instances
``` purescript
Newtype PredictInput _
Generic PredictInput _
Show PredictInput
Decode PredictInput
Encode PredictInput
```

#### `newPredictInput`

``` purescript
newPredictInput :: EntityId -> VipURL -> Record'' -> PredictInput
```

Constructs PredictInput from required parameters

#### `newPredictInput'`

``` purescript
newPredictInput' :: EntityId -> VipURL -> Record'' -> ({ "MLModelId" :: EntityId, "Record" :: Record'', "PredictEndpoint" :: VipURL } -> { "MLModelId" :: EntityId, "Record" :: Record'', "PredictEndpoint" :: VipURL }) -> PredictInput
```

Constructs PredictInput's fields from required parameters

#### `PredictOutput`

``` purescript
newtype PredictOutput
  = PredictOutput { "Prediction" :: NullOrUndefined (Prediction) }
```

##### Instances
``` purescript
Newtype PredictOutput _
Generic PredictOutput _
Show PredictOutput
Decode PredictOutput
Encode PredictOutput
```

#### `newPredictOutput`

``` purescript
newPredictOutput :: PredictOutput
```

Constructs PredictOutput from required parameters

#### `newPredictOutput'`

``` purescript
newPredictOutput' :: ({ "Prediction" :: NullOrUndefined (Prediction) } -> { "Prediction" :: NullOrUndefined (Prediction) }) -> PredictOutput
```

Constructs PredictOutput's fields from required parameters

#### `Prediction`

``` purescript
newtype Prediction
  = Prediction { predictedLabel :: NullOrUndefined (Label), predictedValue :: NullOrUndefined (FloatLabel'), predictedScores :: NullOrUndefined (ScoreValuePerLabelMap), details :: NullOrUndefined (DetailsMap) }
```

<p>The output from a <code>Predict</code> operation: </p> <ul> <li> <p> <code>Details</code> - Contains the following attributes: <code>DetailsAttributes.PREDICTIVE_MODEL_TYPE - REGRESSION | BINARY | MULTICLASS</code> <code>DetailsAttributes.ALGORITHM - SGD</code> </p> </li> <li> <p> <code>PredictedLabel</code> - Present for either a <code>BINARY</code> or <code>MULTICLASS</code> <code>MLModel</code> request. </p> </li> <li> <p> <code>PredictedScores</code> - Contains the raw classification score corresponding to each label. </p> </li> <li> <p> <code>PredictedValue</code> - Present for a <code>REGRESSION</code> <code>MLModel</code> request. </p> </li> </ul>

##### Instances
``` purescript
Newtype Prediction _
Generic Prediction _
Show Prediction
Decode Prediction
Encode Prediction
```

#### `newPrediction`

``` purescript
newPrediction :: Prediction
```

Constructs Prediction from required parameters

#### `newPrediction'`

``` purescript
newPrediction' :: ({ predictedLabel :: NullOrUndefined (Label), predictedValue :: NullOrUndefined (FloatLabel'), predictedScores :: NullOrUndefined (ScoreValuePerLabelMap), details :: NullOrUndefined (DetailsMap) } -> { predictedLabel :: NullOrUndefined (Label), predictedValue :: NullOrUndefined (FloatLabel'), predictedScores :: NullOrUndefined (ScoreValuePerLabelMap), details :: NullOrUndefined (DetailsMap) }) -> Prediction
```

Constructs Prediction's fields from required parameters

#### `PredictorNotMountedException`

``` purescript
newtype PredictorNotMountedException
  = PredictorNotMountedException { message :: NullOrUndefined (ErrorMessage) }
```

<p>The exception is thrown when a predict request is made to an unmounted <code>MLModel</code>.</p>

##### Instances
``` purescript
Newtype PredictorNotMountedException _
Generic PredictorNotMountedException _
Show PredictorNotMountedException
Decode PredictorNotMountedException
Encode PredictorNotMountedException
```

#### `newPredictorNotMountedException`

``` purescript
newPredictorNotMountedException :: PredictorNotMountedException
```

Constructs PredictorNotMountedException from required parameters

#### `newPredictorNotMountedException'`

``` purescript
newPredictorNotMountedException' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> PredictorNotMountedException
```

Constructs PredictorNotMountedException's fields from required parameters

#### `PresignedS3Url`

``` purescript
newtype PresignedS3Url
  = PresignedS3Url String
```

##### Instances
``` purescript
Newtype PresignedS3Url _
Generic PresignedS3Url _
Show PresignedS3Url
Decode PresignedS3Url
Encode PresignedS3Url
```

#### `RDSDataSpec`

``` purescript
newtype RDSDataSpec
  = RDSDataSpec { "DatabaseInformation" :: RDSDatabase, "SelectSqlQuery" :: RDSSelectSqlQuery, "DatabaseCredentials" :: RDSDatabaseCredentials, "S3StagingLocation" :: S3Url, "DataRearrangement" :: NullOrUndefined (DataRearrangement), "DataSchema" :: NullOrUndefined (DataSchema), "DataSchemaUri" :: NullOrUndefined (S3Url), "ResourceRole" :: EDPResourceRole, "ServiceRole" :: EDPServiceRole, "SubnetId" :: EDPSubnetId, "SecurityGroupIds" :: EDPSecurityGroupIds }
```

<p>The data specification of an Amazon Relational Database Service (Amazon RDS) <code>DataSource</code>.</p>

##### Instances
``` purescript
Newtype RDSDataSpec _
Generic RDSDataSpec _
Show RDSDataSpec
Decode RDSDataSpec
Encode RDSDataSpec
```

#### `newRDSDataSpec`

``` purescript
newRDSDataSpec :: RDSDatabaseCredentials -> RDSDatabase -> EDPResourceRole -> S3Url -> EDPSecurityGroupIds -> RDSSelectSqlQuery -> EDPServiceRole -> EDPSubnetId -> RDSDataSpec
```

Constructs RDSDataSpec from required parameters

#### `newRDSDataSpec'`

``` purescript
newRDSDataSpec' :: RDSDatabaseCredentials -> RDSDatabase -> EDPResourceRole -> S3Url -> EDPSecurityGroupIds -> RDSSelectSqlQuery -> EDPServiceRole -> EDPSubnetId -> ({ "DatabaseInformation" :: RDSDatabase, "SelectSqlQuery" :: RDSSelectSqlQuery, "DatabaseCredentials" :: RDSDatabaseCredentials, "S3StagingLocation" :: S3Url, "DataRearrangement" :: NullOrUndefined (DataRearrangement), "DataSchema" :: NullOrUndefined (DataSchema), "DataSchemaUri" :: NullOrUndefined (S3Url), "ResourceRole" :: EDPResourceRole, "ServiceRole" :: EDPServiceRole, "SubnetId" :: EDPSubnetId, "SecurityGroupIds" :: EDPSecurityGroupIds } -> { "DatabaseInformation" :: RDSDatabase, "SelectSqlQuery" :: RDSSelectSqlQuery, "DatabaseCredentials" :: RDSDatabaseCredentials, "S3StagingLocation" :: S3Url, "DataRearrangement" :: NullOrUndefined (DataRearrangement), "DataSchema" :: NullOrUndefined (DataSchema), "DataSchemaUri" :: NullOrUndefined (S3Url), "ResourceRole" :: EDPResourceRole, "ServiceRole" :: EDPServiceRole, "SubnetId" :: EDPSubnetId, "SecurityGroupIds" :: EDPSecurityGroupIds }) -> RDSDataSpec
```

Constructs RDSDataSpec's fields from required parameters

#### `RDSDatabase`

``` purescript
newtype RDSDatabase
  = RDSDatabase { "InstanceIdentifier" :: RDSInstanceIdentifier, "DatabaseName" :: RDSDatabaseName }
```

<p>The database details of an Amazon RDS database.</p>

##### Instances
``` purescript
Newtype RDSDatabase _
Generic RDSDatabase _
Show RDSDatabase
Decode RDSDatabase
Encode RDSDatabase
```

#### `newRDSDatabase`

``` purescript
newRDSDatabase :: RDSDatabaseName -> RDSInstanceIdentifier -> RDSDatabase
```

Constructs RDSDatabase from required parameters

#### `newRDSDatabase'`

``` purescript
newRDSDatabase' :: RDSDatabaseName -> RDSInstanceIdentifier -> ({ "InstanceIdentifier" :: RDSInstanceIdentifier, "DatabaseName" :: RDSDatabaseName } -> { "InstanceIdentifier" :: RDSInstanceIdentifier, "DatabaseName" :: RDSDatabaseName }) -> RDSDatabase
```

Constructs RDSDatabase's fields from required parameters

#### `RDSDatabaseCredentials`

``` purescript
newtype RDSDatabaseCredentials
  = RDSDatabaseCredentials { "Username" :: RDSDatabaseUsername, "Password" :: RDSDatabasePassword }
```

<p>The database credentials to connect to a database on an RDS DB instance.</p>

##### Instances
``` purescript
Newtype RDSDatabaseCredentials _
Generic RDSDatabaseCredentials _
Show RDSDatabaseCredentials
Decode RDSDatabaseCredentials
Encode RDSDatabaseCredentials
```

#### `newRDSDatabaseCredentials`

``` purescript
newRDSDatabaseCredentials :: RDSDatabasePassword -> RDSDatabaseUsername -> RDSDatabaseCredentials
```

Constructs RDSDatabaseCredentials from required parameters

#### `newRDSDatabaseCredentials'`

``` purescript
newRDSDatabaseCredentials' :: RDSDatabasePassword -> RDSDatabaseUsername -> ({ "Username" :: RDSDatabaseUsername, "Password" :: RDSDatabasePassword } -> { "Username" :: RDSDatabaseUsername, "Password" :: RDSDatabasePassword }) -> RDSDatabaseCredentials
```

Constructs RDSDatabaseCredentials's fields from required parameters

#### `RDSDatabaseName`

``` purescript
newtype RDSDatabaseName
  = RDSDatabaseName String
```

<p>The name of a database hosted on an RDS DB instance.</p>

##### Instances
``` purescript
Newtype RDSDatabaseName _
Generic RDSDatabaseName _
Show RDSDatabaseName
Decode RDSDatabaseName
Encode RDSDatabaseName
```

#### `RDSDatabasePassword`

``` purescript
newtype RDSDatabasePassword
  = RDSDatabasePassword String
```

<p>The password to be used by Amazon ML to connect to a database on an RDS DB instance. The password should have sufficient permissions to execute the <code>RDSSelectQuery</code> query.</p>

##### Instances
``` purescript
Newtype RDSDatabasePassword _
Generic RDSDatabasePassword _
Show RDSDatabasePassword
Decode RDSDatabasePassword
Encode RDSDatabasePassword
```

#### `RDSDatabaseUsername`

``` purescript
newtype RDSDatabaseUsername
  = RDSDatabaseUsername String
```

<p>The username to be used by Amazon ML to connect to database on an Amazon RDS instance. The username should have sufficient permissions to execute an <code>RDSSelectSqlQuery</code> query.</p>

##### Instances
``` purescript
Newtype RDSDatabaseUsername _
Generic RDSDatabaseUsername _
Show RDSDatabaseUsername
Decode RDSDatabaseUsername
Encode RDSDatabaseUsername
```

#### `RDSInstanceIdentifier`

``` purescript
newtype RDSInstanceIdentifier
  = RDSInstanceIdentifier String
```

Identifier of RDS DB Instances.

##### Instances
``` purescript
Newtype RDSInstanceIdentifier _
Generic RDSInstanceIdentifier _
Show RDSInstanceIdentifier
Decode RDSInstanceIdentifier
Encode RDSInstanceIdentifier
```

#### `RDSMetadata`

``` purescript
newtype RDSMetadata
  = RDSMetadata { "Database" :: NullOrUndefined (RDSDatabase), "DatabaseUserName" :: NullOrUndefined (RDSDatabaseUsername), "SelectSqlQuery" :: NullOrUndefined (RDSSelectSqlQuery), "ResourceRole" :: NullOrUndefined (EDPResourceRole), "ServiceRole" :: NullOrUndefined (EDPServiceRole), "DataPipelineId" :: NullOrUndefined (EDPPipelineId) }
```

<p>The datasource details that are specific to Amazon RDS.</p>

##### Instances
``` purescript
Newtype RDSMetadata _
Generic RDSMetadata _
Show RDSMetadata
Decode RDSMetadata
Encode RDSMetadata
```

#### `newRDSMetadata`

``` purescript
newRDSMetadata :: RDSMetadata
```

Constructs RDSMetadata from required parameters

#### `newRDSMetadata'`

``` purescript
newRDSMetadata' :: ({ "Database" :: NullOrUndefined (RDSDatabase), "DatabaseUserName" :: NullOrUndefined (RDSDatabaseUsername), "SelectSqlQuery" :: NullOrUndefined (RDSSelectSqlQuery), "ResourceRole" :: NullOrUndefined (EDPResourceRole), "ServiceRole" :: NullOrUndefined (EDPServiceRole), "DataPipelineId" :: NullOrUndefined (EDPPipelineId) } -> { "Database" :: NullOrUndefined (RDSDatabase), "DatabaseUserName" :: NullOrUndefined (RDSDatabaseUsername), "SelectSqlQuery" :: NullOrUndefined (RDSSelectSqlQuery), "ResourceRole" :: NullOrUndefined (EDPResourceRole), "ServiceRole" :: NullOrUndefined (EDPServiceRole), "DataPipelineId" :: NullOrUndefined (EDPPipelineId) }) -> RDSMetadata
```

Constructs RDSMetadata's fields from required parameters

#### `RDSSelectSqlQuery`

``` purescript
newtype RDSSelectSqlQuery
  = RDSSelectSqlQuery String
```

<p>The SQL query to be executed against the Amazon RDS database. The SQL query should be valid for the Amazon RDS type being used. </p>

##### Instances
``` purescript
Newtype RDSSelectSqlQuery _
Generic RDSSelectSqlQuery _
Show RDSSelectSqlQuery
Decode RDSSelectSqlQuery
Encode RDSSelectSqlQuery
```

#### `RealtimeEndpointInfo`

``` purescript
newtype RealtimeEndpointInfo
  = RealtimeEndpointInfo { "PeakRequestsPerSecond" :: NullOrUndefined (IntegerType), "CreatedAt" :: NullOrUndefined (EpochTime), "EndpointUrl" :: NullOrUndefined (VipURL), "EndpointStatus" :: NullOrUndefined (RealtimeEndpointStatus) }
```

<p> Describes the real-time endpoint information for an <code>MLModel</code>.</p>

##### Instances
``` purescript
Newtype RealtimeEndpointInfo _
Generic RealtimeEndpointInfo _
Show RealtimeEndpointInfo
Decode RealtimeEndpointInfo
Encode RealtimeEndpointInfo
```

#### `newRealtimeEndpointInfo`

``` purescript
newRealtimeEndpointInfo :: RealtimeEndpointInfo
```

Constructs RealtimeEndpointInfo from required parameters

#### `newRealtimeEndpointInfo'`

``` purescript
newRealtimeEndpointInfo' :: ({ "PeakRequestsPerSecond" :: NullOrUndefined (IntegerType), "CreatedAt" :: NullOrUndefined (EpochTime), "EndpointUrl" :: NullOrUndefined (VipURL), "EndpointStatus" :: NullOrUndefined (RealtimeEndpointStatus) } -> { "PeakRequestsPerSecond" :: NullOrUndefined (IntegerType), "CreatedAt" :: NullOrUndefined (EpochTime), "EndpointUrl" :: NullOrUndefined (VipURL), "EndpointStatus" :: NullOrUndefined (RealtimeEndpointStatus) }) -> RealtimeEndpointInfo
```

Constructs RealtimeEndpointInfo's fields from required parameters

#### `RealtimeEndpointStatus`

``` purescript
newtype RealtimeEndpointStatus
  = RealtimeEndpointStatus String
```

##### Instances
``` purescript
Newtype RealtimeEndpointStatus _
Generic RealtimeEndpointStatus _
Show RealtimeEndpointStatus
Decode RealtimeEndpointStatus
Encode RealtimeEndpointStatus
```

#### `Recipe`

``` purescript
newtype Recipe
  = Recipe String
```

##### Instances
``` purescript
Newtype Recipe _
Generic Recipe _
Show Recipe
Decode Recipe
Encode Recipe
```

#### `Record''`

``` purescript
newtype Record''
  = Record'' (StrMap VariableValue)
```

<p>A map of variable name-value pairs that represent an observation.</p>

##### Instances
``` purescript
Newtype Record'' _
Generic Record'' _
Show Record''
Decode Record''
Encode Record''
```

#### `RedshiftClusterIdentifier`

``` purescript
newtype RedshiftClusterIdentifier
  = RedshiftClusterIdentifier String
```

<p>The ID of an Amazon Redshift cluster.</p>

##### Instances
``` purescript
Newtype RedshiftClusterIdentifier _
Generic RedshiftClusterIdentifier _
Show RedshiftClusterIdentifier
Decode RedshiftClusterIdentifier
Encode RedshiftClusterIdentifier
```

#### `RedshiftDataSpec`

``` purescript
newtype RedshiftDataSpec
  = RedshiftDataSpec { "DatabaseInformation" :: RedshiftDatabase, "SelectSqlQuery" :: RedshiftSelectSqlQuery, "DatabaseCredentials" :: RedshiftDatabaseCredentials, "S3StagingLocation" :: S3Url, "DataRearrangement" :: NullOrUndefined (DataRearrangement), "DataSchema" :: NullOrUndefined (DataSchema), "DataSchemaUri" :: NullOrUndefined (S3Url) }
```

<p>Describes the data specification of an Amazon Redshift <code>DataSource</code>.</p>

##### Instances
``` purescript
Newtype RedshiftDataSpec _
Generic RedshiftDataSpec _
Show RedshiftDataSpec
Decode RedshiftDataSpec
Encode RedshiftDataSpec
```

#### `newRedshiftDataSpec`

``` purescript
newRedshiftDataSpec :: RedshiftDatabaseCredentials -> RedshiftDatabase -> S3Url -> RedshiftSelectSqlQuery -> RedshiftDataSpec
```

Constructs RedshiftDataSpec from required parameters

#### `newRedshiftDataSpec'`

``` purescript
newRedshiftDataSpec' :: RedshiftDatabaseCredentials -> RedshiftDatabase -> S3Url -> RedshiftSelectSqlQuery -> ({ "DatabaseInformation" :: RedshiftDatabase, "SelectSqlQuery" :: RedshiftSelectSqlQuery, "DatabaseCredentials" :: RedshiftDatabaseCredentials, "S3StagingLocation" :: S3Url, "DataRearrangement" :: NullOrUndefined (DataRearrangement), "DataSchema" :: NullOrUndefined (DataSchema), "DataSchemaUri" :: NullOrUndefined (S3Url) } -> { "DatabaseInformation" :: RedshiftDatabase, "SelectSqlQuery" :: RedshiftSelectSqlQuery, "DatabaseCredentials" :: RedshiftDatabaseCredentials, "S3StagingLocation" :: S3Url, "DataRearrangement" :: NullOrUndefined (DataRearrangement), "DataSchema" :: NullOrUndefined (DataSchema), "DataSchemaUri" :: NullOrUndefined (S3Url) }) -> RedshiftDataSpec
```

Constructs RedshiftDataSpec's fields from required parameters

#### `RedshiftDatabase`

``` purescript
newtype RedshiftDatabase
  = RedshiftDatabase { "DatabaseName" :: RedshiftDatabaseName, "ClusterIdentifier" :: RedshiftClusterIdentifier }
```

<p>Describes the database details required to connect to an Amazon Redshift database.</p>

##### Instances
``` purescript
Newtype RedshiftDatabase _
Generic RedshiftDatabase _
Show RedshiftDatabase
Decode RedshiftDatabase
Encode RedshiftDatabase
```

#### `newRedshiftDatabase`

``` purescript
newRedshiftDatabase :: RedshiftClusterIdentifier -> RedshiftDatabaseName -> RedshiftDatabase
```

Constructs RedshiftDatabase from required parameters

#### `newRedshiftDatabase'`

``` purescript
newRedshiftDatabase' :: RedshiftClusterIdentifier -> RedshiftDatabaseName -> ({ "DatabaseName" :: RedshiftDatabaseName, "ClusterIdentifier" :: RedshiftClusterIdentifier } -> { "DatabaseName" :: RedshiftDatabaseName, "ClusterIdentifier" :: RedshiftClusterIdentifier }) -> RedshiftDatabase
```

Constructs RedshiftDatabase's fields from required parameters

#### `RedshiftDatabaseCredentials`

``` purescript
newtype RedshiftDatabaseCredentials
  = RedshiftDatabaseCredentials { "Username" :: RedshiftDatabaseUsername, "Password" :: RedshiftDatabasePassword }
```

<p> Describes the database credentials for connecting to a database on an Amazon Redshift cluster.</p>

##### Instances
``` purescript
Newtype RedshiftDatabaseCredentials _
Generic RedshiftDatabaseCredentials _
Show RedshiftDatabaseCredentials
Decode RedshiftDatabaseCredentials
Encode RedshiftDatabaseCredentials
```

#### `newRedshiftDatabaseCredentials`

``` purescript
newRedshiftDatabaseCredentials :: RedshiftDatabasePassword -> RedshiftDatabaseUsername -> RedshiftDatabaseCredentials
```

Constructs RedshiftDatabaseCredentials from required parameters

#### `newRedshiftDatabaseCredentials'`

``` purescript
newRedshiftDatabaseCredentials' :: RedshiftDatabasePassword -> RedshiftDatabaseUsername -> ({ "Username" :: RedshiftDatabaseUsername, "Password" :: RedshiftDatabasePassword } -> { "Username" :: RedshiftDatabaseUsername, "Password" :: RedshiftDatabasePassword }) -> RedshiftDatabaseCredentials
```

Constructs RedshiftDatabaseCredentials's fields from required parameters

#### `RedshiftDatabaseName`

``` purescript
newtype RedshiftDatabaseName
  = RedshiftDatabaseName String
```

<p>The name of a database hosted on an Amazon Redshift cluster.</p>

##### Instances
``` purescript
Newtype RedshiftDatabaseName _
Generic RedshiftDatabaseName _
Show RedshiftDatabaseName
Decode RedshiftDatabaseName
Encode RedshiftDatabaseName
```

#### `RedshiftDatabasePassword`

``` purescript
newtype RedshiftDatabasePassword
  = RedshiftDatabasePassword String
```

<p>A password to be used by Amazon ML to connect to a database on an Amazon Redshift cluster. The password should have sufficient permissions to execute a <code>RedshiftSelectSqlQuery</code> query. The password should be valid for an Amazon Redshift <a href="http://docs.aws.amazon.com/redshift/latest/dg/r_CREATE_USER.html">USER</a>.</p>

##### Instances
``` purescript
Newtype RedshiftDatabasePassword _
Generic RedshiftDatabasePassword _
Show RedshiftDatabasePassword
Decode RedshiftDatabasePassword
Encode RedshiftDatabasePassword
```

#### `RedshiftDatabaseUsername`

``` purescript
newtype RedshiftDatabaseUsername
  = RedshiftDatabaseUsername String
```

<p>A username to be used by Amazon Machine Learning (Amazon ML)to connect to a database on an Amazon Redshift cluster. The username should have sufficient permissions to execute the <code>RedshiftSelectSqlQuery</code> query. The username should be valid for an Amazon Redshift <a href="http://docs.aws.amazon.com/redshift/latest/dg/r_CREATE_USER.html">USER</a>.</p>

##### Instances
``` purescript
Newtype RedshiftDatabaseUsername _
Generic RedshiftDatabaseUsername _
Show RedshiftDatabaseUsername
Decode RedshiftDatabaseUsername
Encode RedshiftDatabaseUsername
```

#### `RedshiftMetadata`

``` purescript
newtype RedshiftMetadata
  = RedshiftMetadata { "RedshiftDatabase" :: NullOrUndefined (RedshiftDatabase), "DatabaseUserName" :: NullOrUndefined (RedshiftDatabaseUsername), "SelectSqlQuery" :: NullOrUndefined (RedshiftSelectSqlQuery) }
```

<p>Describes the <code>DataSource</code> details specific to Amazon Redshift.</p>

##### Instances
``` purescript
Newtype RedshiftMetadata _
Generic RedshiftMetadata _
Show RedshiftMetadata
Decode RedshiftMetadata
Encode RedshiftMetadata
```

#### `newRedshiftMetadata`

``` purescript
newRedshiftMetadata :: RedshiftMetadata
```

Constructs RedshiftMetadata from required parameters

#### `newRedshiftMetadata'`

``` purescript
newRedshiftMetadata' :: ({ "RedshiftDatabase" :: NullOrUndefined (RedshiftDatabase), "DatabaseUserName" :: NullOrUndefined (RedshiftDatabaseUsername), "SelectSqlQuery" :: NullOrUndefined (RedshiftSelectSqlQuery) } -> { "RedshiftDatabase" :: NullOrUndefined (RedshiftDatabase), "DatabaseUserName" :: NullOrUndefined (RedshiftDatabaseUsername), "SelectSqlQuery" :: NullOrUndefined (RedshiftSelectSqlQuery) }) -> RedshiftMetadata
```

Constructs RedshiftMetadata's fields from required parameters

#### `RedshiftSelectSqlQuery`

``` purescript
newtype RedshiftSelectSqlQuery
  = RedshiftSelectSqlQuery String
```

<p> Describes the SQL query to execute on the Amazon Redshift database. The SQL query should be valid for an Amazon Redshift <a href="http://docs.aws.amazon.com/redshift/latest/dg/r_SELECT_synopsis.html">SELECT</a>. </p>

##### Instances
``` purescript
Newtype RedshiftSelectSqlQuery _
Generic RedshiftSelectSqlQuery _
Show RedshiftSelectSqlQuery
Decode RedshiftSelectSqlQuery
Encode RedshiftSelectSqlQuery
```

#### `ResourceNotFoundException`

``` purescript
newtype ResourceNotFoundException
  = ResourceNotFoundException { message :: NullOrUndefined (ErrorMessage), code :: NullOrUndefined (ErrorCode) }
```

<p>A specified resource cannot be located.</p>

##### Instances
``` purescript
Newtype ResourceNotFoundException _
Generic ResourceNotFoundException _
Show ResourceNotFoundException
Decode ResourceNotFoundException
Encode ResourceNotFoundException
```

#### `newResourceNotFoundException`

``` purescript
newResourceNotFoundException :: ResourceNotFoundException
```

Constructs ResourceNotFoundException from required parameters

#### `newResourceNotFoundException'`

``` purescript
newResourceNotFoundException' :: ({ message :: NullOrUndefined (ErrorMessage), code :: NullOrUndefined (ErrorCode) } -> { message :: NullOrUndefined (ErrorMessage), code :: NullOrUndefined (ErrorCode) }) -> ResourceNotFoundException
```

Constructs ResourceNotFoundException's fields from required parameters

#### `RoleARN`

``` purescript
newtype RoleARN
  = RoleARN String
```

<p>The Amazon Resource Name (ARN) of an <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/roles-toplevel.html#roles-about-termsandconcepts">AWS IAM Role</a>, such as the following: arn:aws:iam::account:role/rolename. </p>

##### Instances
``` purescript
Newtype RoleARN _
Generic RoleARN _
Show RoleARN
Decode RoleARN
Encode RoleARN
```

#### `S3DataSpec`

``` purescript
newtype S3DataSpec
  = S3DataSpec { "DataLocationS3" :: S3Url, "DataRearrangement" :: NullOrUndefined (DataRearrangement), "DataSchema" :: NullOrUndefined (DataSchema), "DataSchemaLocationS3" :: NullOrUndefined (S3Url) }
```

<p> Describes the data specification of a <code>DataSource</code>.</p>

##### Instances
``` purescript
Newtype S3DataSpec _
Generic S3DataSpec _
Show S3DataSpec
Decode S3DataSpec
Encode S3DataSpec
```

#### `newS3DataSpec`

``` purescript
newS3DataSpec :: S3Url -> S3DataSpec
```

Constructs S3DataSpec from required parameters

#### `newS3DataSpec'`

``` purescript
newS3DataSpec' :: S3Url -> ({ "DataLocationS3" :: S3Url, "DataRearrangement" :: NullOrUndefined (DataRearrangement), "DataSchema" :: NullOrUndefined (DataSchema), "DataSchemaLocationS3" :: NullOrUndefined (S3Url) } -> { "DataLocationS3" :: S3Url, "DataRearrangement" :: NullOrUndefined (DataRearrangement), "DataSchema" :: NullOrUndefined (DataSchema), "DataSchemaLocationS3" :: NullOrUndefined (S3Url) }) -> S3DataSpec
```

Constructs S3DataSpec's fields from required parameters

#### `S3Url`

``` purescript
newtype S3Url
  = S3Url String
```

<p>A reference to a file or bucket on Amazon Simple Storage Service (Amazon S3).</p>

##### Instances
``` purescript
Newtype S3Url _
Generic S3Url _
Show S3Url
Decode S3Url
Encode S3Url
```

#### `ScoreThreshold`

``` purescript
newtype ScoreThreshold
  = ScoreThreshold Number
```

##### Instances
``` purescript
Newtype ScoreThreshold _
Generic ScoreThreshold _
Show ScoreThreshold
Decode ScoreThreshold
Encode ScoreThreshold
```

#### `ScoreValue`

``` purescript
newtype ScoreValue
  = ScoreValue Number
```

##### Instances
``` purescript
Newtype ScoreValue _
Generic ScoreValue _
Show ScoreValue
Decode ScoreValue
Encode ScoreValue
```

#### `ScoreValuePerLabelMap`

``` purescript
newtype ScoreValuePerLabelMap
  = ScoreValuePerLabelMap (StrMap ScoreValue)
```

Provides the raw classification score corresponding to each label.

##### Instances
``` purescript
Newtype ScoreValuePerLabelMap _
Generic ScoreValuePerLabelMap _
Show ScoreValuePerLabelMap
Decode ScoreValuePerLabelMap
Encode ScoreValuePerLabelMap
```

#### `SortOrder`

``` purescript
newtype SortOrder
  = SortOrder String
```

<p>The sort order specified in a listing condition. Possible values include the following:</p> <ul> <li> <code>asc</code> - Present the information in ascending order (from A-Z).</li> <li> <code>dsc</code> - Present the information in descending order (from Z-A).</li> </ul>

##### Instances
``` purescript
Newtype SortOrder _
Generic SortOrder _
Show SortOrder
Decode SortOrder
Encode SortOrder
```

#### `StringType`

``` purescript
newtype StringType
  = StringType String
```

<p>String type.</p>

##### Instances
``` purescript
Newtype StringType _
Generic StringType _
Show StringType
Decode StringType
Encode StringType
```

#### `Tag`

``` purescript
newtype Tag
  = Tag { "Key" :: NullOrUndefined (TagKey), "Value" :: NullOrUndefined (TagValue) }
```

<p>A custom key-value pair associated with an ML object, such as an ML model.</p>

##### Instances
``` purescript
Newtype Tag _
Generic Tag _
Show Tag
Decode Tag
Encode Tag
```

#### `newTag`

``` purescript
newTag :: Tag
```

Constructs Tag from required parameters

#### `newTag'`

``` purescript
newTag' :: ({ "Key" :: NullOrUndefined (TagKey), "Value" :: NullOrUndefined (TagValue) } -> { "Key" :: NullOrUndefined (TagKey), "Value" :: NullOrUndefined (TagValue) }) -> Tag
```

Constructs Tag's fields from required parameters

#### `TagKey`

``` purescript
newtype TagKey
  = TagKey String
```

##### Instances
``` purescript
Newtype TagKey _
Generic TagKey _
Show TagKey
Decode TagKey
Encode TagKey
```

#### `TagKeyList`

``` purescript
newtype TagKeyList
  = TagKeyList (Array TagKey)
```

##### Instances
``` purescript
Newtype TagKeyList _
Generic TagKeyList _
Show TagKeyList
Decode TagKeyList
Encode TagKeyList
```

#### `TagLimitExceededException`

``` purescript
newtype TagLimitExceededException
  = TagLimitExceededException { message :: NullOrUndefined (ErrorMessage) }
```

##### Instances
``` purescript
Newtype TagLimitExceededException _
Generic TagLimitExceededException _
Show TagLimitExceededException
Decode TagLimitExceededException
Encode TagLimitExceededException
```

#### `newTagLimitExceededException`

``` purescript
newTagLimitExceededException :: TagLimitExceededException
```

Constructs TagLimitExceededException from required parameters

#### `newTagLimitExceededException'`

``` purescript
newTagLimitExceededException' :: ({ message :: NullOrUndefined (ErrorMessage) } -> { message :: NullOrUndefined (ErrorMessage) }) -> TagLimitExceededException
```

Constructs TagLimitExceededException's fields from required parameters

#### `TagList`

``` purescript
newtype TagList
  = TagList (Array Tag)
```

##### Instances
``` purescript
Newtype TagList _
Generic TagList _
Show TagList
Decode TagList
Encode TagList
```

#### `TagValue`

``` purescript
newtype TagValue
  = TagValue String
```

##### Instances
``` purescript
Newtype TagValue _
Generic TagValue _
Show TagValue
Decode TagValue
Encode TagValue
```

#### `TaggableResourceType`

``` purescript
newtype TaggableResourceType
  = TaggableResourceType String
```

##### Instances
``` purescript
Newtype TaggableResourceType _
Generic TaggableResourceType _
Show TaggableResourceType
Decode TaggableResourceType
Encode TaggableResourceType
```

#### `TrainingParameters`

``` purescript
newtype TrainingParameters
  = TrainingParameters (StrMap StringType)
```

##### Instances
``` purescript
Newtype TrainingParameters _
Generic TrainingParameters _
Show TrainingParameters
Decode TrainingParameters
Encode TrainingParameters
```

#### `UpdateBatchPredictionInput`

``` purescript
newtype UpdateBatchPredictionInput
  = UpdateBatchPredictionInput { "BatchPredictionId" :: EntityId, "BatchPredictionName" :: EntityName }
```

##### Instances
``` purescript
Newtype UpdateBatchPredictionInput _
Generic UpdateBatchPredictionInput _
Show UpdateBatchPredictionInput
Decode UpdateBatchPredictionInput
Encode UpdateBatchPredictionInput
```

#### `newUpdateBatchPredictionInput`

``` purescript
newUpdateBatchPredictionInput :: EntityId -> EntityName -> UpdateBatchPredictionInput
```

Constructs UpdateBatchPredictionInput from required parameters

#### `newUpdateBatchPredictionInput'`

``` purescript
newUpdateBatchPredictionInput' :: EntityId -> EntityName -> ({ "BatchPredictionId" :: EntityId, "BatchPredictionName" :: EntityName } -> { "BatchPredictionId" :: EntityId, "BatchPredictionName" :: EntityName }) -> UpdateBatchPredictionInput
```

Constructs UpdateBatchPredictionInput's fields from required parameters

#### `UpdateBatchPredictionOutput`

``` purescript
newtype UpdateBatchPredictionOutput
  = UpdateBatchPredictionOutput { "BatchPredictionId" :: NullOrUndefined (EntityId) }
```

<p>Represents the output of an <code>UpdateBatchPrediction</code> operation.</p> <p>You can see the updated content by using the <code>GetBatchPrediction</code> operation.</p>

##### Instances
``` purescript
Newtype UpdateBatchPredictionOutput _
Generic UpdateBatchPredictionOutput _
Show UpdateBatchPredictionOutput
Decode UpdateBatchPredictionOutput
Encode UpdateBatchPredictionOutput
```

#### `newUpdateBatchPredictionOutput`

``` purescript
newUpdateBatchPredictionOutput :: UpdateBatchPredictionOutput
```

Constructs UpdateBatchPredictionOutput from required parameters

#### `newUpdateBatchPredictionOutput'`

``` purescript
newUpdateBatchPredictionOutput' :: ({ "BatchPredictionId" :: NullOrUndefined (EntityId) } -> { "BatchPredictionId" :: NullOrUndefined (EntityId) }) -> UpdateBatchPredictionOutput
```

Constructs UpdateBatchPredictionOutput's fields from required parameters

#### `UpdateDataSourceInput`

``` purescript
newtype UpdateDataSourceInput
  = UpdateDataSourceInput { "DataSourceId" :: EntityId, "DataSourceName" :: EntityName }
```

##### Instances
``` purescript
Newtype UpdateDataSourceInput _
Generic UpdateDataSourceInput _
Show UpdateDataSourceInput
Decode UpdateDataSourceInput
Encode UpdateDataSourceInput
```

#### `newUpdateDataSourceInput`

``` purescript
newUpdateDataSourceInput :: EntityId -> EntityName -> UpdateDataSourceInput
```

Constructs UpdateDataSourceInput from required parameters

#### `newUpdateDataSourceInput'`

``` purescript
newUpdateDataSourceInput' :: EntityId -> EntityName -> ({ "DataSourceId" :: EntityId, "DataSourceName" :: EntityName } -> { "DataSourceId" :: EntityId, "DataSourceName" :: EntityName }) -> UpdateDataSourceInput
```

Constructs UpdateDataSourceInput's fields from required parameters

#### `UpdateDataSourceOutput`

``` purescript
newtype UpdateDataSourceOutput
  = UpdateDataSourceOutput { "DataSourceId" :: NullOrUndefined (EntityId) }
```

<p>Represents the output of an <code>UpdateDataSource</code> operation.</p> <p>You can see the updated content by using the <code>GetBatchPrediction</code> operation.</p>

##### Instances
``` purescript
Newtype UpdateDataSourceOutput _
Generic UpdateDataSourceOutput _
Show UpdateDataSourceOutput
Decode UpdateDataSourceOutput
Encode UpdateDataSourceOutput
```

#### `newUpdateDataSourceOutput`

``` purescript
newUpdateDataSourceOutput :: UpdateDataSourceOutput
```

Constructs UpdateDataSourceOutput from required parameters

#### `newUpdateDataSourceOutput'`

``` purescript
newUpdateDataSourceOutput' :: ({ "DataSourceId" :: NullOrUndefined (EntityId) } -> { "DataSourceId" :: NullOrUndefined (EntityId) }) -> UpdateDataSourceOutput
```

Constructs UpdateDataSourceOutput's fields from required parameters

#### `UpdateEvaluationInput`

``` purescript
newtype UpdateEvaluationInput
  = UpdateEvaluationInput { "EvaluationId" :: EntityId, "EvaluationName" :: EntityName }
```

##### Instances
``` purescript
Newtype UpdateEvaluationInput _
Generic UpdateEvaluationInput _
Show UpdateEvaluationInput
Decode UpdateEvaluationInput
Encode UpdateEvaluationInput
```

#### `newUpdateEvaluationInput`

``` purescript
newUpdateEvaluationInput :: EntityId -> EntityName -> UpdateEvaluationInput
```

Constructs UpdateEvaluationInput from required parameters

#### `newUpdateEvaluationInput'`

``` purescript
newUpdateEvaluationInput' :: EntityId -> EntityName -> ({ "EvaluationId" :: EntityId, "EvaluationName" :: EntityName } -> { "EvaluationId" :: EntityId, "EvaluationName" :: EntityName }) -> UpdateEvaluationInput
```

Constructs UpdateEvaluationInput's fields from required parameters

#### `UpdateEvaluationOutput`

``` purescript
newtype UpdateEvaluationOutput
  = UpdateEvaluationOutput { "EvaluationId" :: NullOrUndefined (EntityId) }
```

<p>Represents the output of an <code>UpdateEvaluation</code> operation.</p> <p>You can see the updated content by using the <code>GetEvaluation</code> operation.</p>

##### Instances
``` purescript
Newtype UpdateEvaluationOutput _
Generic UpdateEvaluationOutput _
Show UpdateEvaluationOutput
Decode UpdateEvaluationOutput
Encode UpdateEvaluationOutput
```

#### `newUpdateEvaluationOutput`

``` purescript
newUpdateEvaluationOutput :: UpdateEvaluationOutput
```

Constructs UpdateEvaluationOutput from required parameters

#### `newUpdateEvaluationOutput'`

``` purescript
newUpdateEvaluationOutput' :: ({ "EvaluationId" :: NullOrUndefined (EntityId) } -> { "EvaluationId" :: NullOrUndefined (EntityId) }) -> UpdateEvaluationOutput
```

Constructs UpdateEvaluationOutput's fields from required parameters

#### `UpdateMLModelInput`

``` purescript
newtype UpdateMLModelInput
  = UpdateMLModelInput { "MLModelId" :: EntityId, "MLModelName" :: NullOrUndefined (EntityName), "ScoreThreshold" :: NullOrUndefined (ScoreThreshold) }
```

##### Instances
``` purescript
Newtype UpdateMLModelInput _
Generic UpdateMLModelInput _
Show UpdateMLModelInput
Decode UpdateMLModelInput
Encode UpdateMLModelInput
```

#### `newUpdateMLModelInput`

``` purescript
newUpdateMLModelInput :: EntityId -> UpdateMLModelInput
```

Constructs UpdateMLModelInput from required parameters

#### `newUpdateMLModelInput'`

``` purescript
newUpdateMLModelInput' :: EntityId -> ({ "MLModelId" :: EntityId, "MLModelName" :: NullOrUndefined (EntityName), "ScoreThreshold" :: NullOrUndefined (ScoreThreshold) } -> { "MLModelId" :: EntityId, "MLModelName" :: NullOrUndefined (EntityName), "ScoreThreshold" :: NullOrUndefined (ScoreThreshold) }) -> UpdateMLModelInput
```

Constructs UpdateMLModelInput's fields from required parameters

#### `UpdateMLModelOutput`

``` purescript
newtype UpdateMLModelOutput
  = UpdateMLModelOutput { "MLModelId" :: NullOrUndefined (EntityId) }
```

<p>Represents the output of an <code>UpdateMLModel</code> operation.</p> <p>You can see the updated content by using the <code>GetMLModel</code> operation.</p>

##### Instances
``` purescript
Newtype UpdateMLModelOutput _
Generic UpdateMLModelOutput _
Show UpdateMLModelOutput
Decode UpdateMLModelOutput
Encode UpdateMLModelOutput
```

#### `newUpdateMLModelOutput`

``` purescript
newUpdateMLModelOutput :: UpdateMLModelOutput
```

Constructs UpdateMLModelOutput from required parameters

#### `newUpdateMLModelOutput'`

``` purescript
newUpdateMLModelOutput' :: ({ "MLModelId" :: NullOrUndefined (EntityId) } -> { "MLModelId" :: NullOrUndefined (EntityId) }) -> UpdateMLModelOutput
```

Constructs UpdateMLModelOutput's fields from required parameters

#### `VariableName`

``` purescript
newtype VariableName
  = VariableName String
```

<p>The name of a variable. Currently it's used to specify the name of the target value, label, weight, and tags.</p>

##### Instances
``` purescript
Newtype VariableName _
Generic VariableName _
Show VariableName
Decode VariableName
Encode VariableName
```

#### `VariableValue`

``` purescript
newtype VariableValue
  = VariableValue String
```

<p>The value of a variable. Currently it's used to specify values of the target value, weights, and tag variables and for filtering variable values.</p>

##### Instances
``` purescript
Newtype VariableValue _
Generic VariableValue _
Show VariableValue
Decode VariableValue
Encode VariableValue
```

#### `Verbose`

``` purescript
newtype Verbose
  = Verbose Boolean
```

<p>Specifies whether a describe operation should return exhaustive or abbreviated information.</p>

##### Instances
``` purescript
Newtype Verbose _
Generic Verbose _
Show Verbose
Decode Verbose
Encode Verbose
```

#### `VipURL`

``` purescript
newtype VipURL
  = VipURL String
```

##### Instances
``` purescript
Newtype VipURL _
Generic VipURL _
Show VipURL
Decode VipURL
Encode VipURL
```

#### `FloatLabel'`

``` purescript
newtype FloatLabel'
  = FloatLabel' Number
```

##### Instances
``` purescript
Newtype FloatLabel' _
Generic FloatLabel' _
Show FloatLabel'
Decode FloatLabel'
Encode FloatLabel'
```


