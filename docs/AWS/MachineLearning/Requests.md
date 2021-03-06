## Module AWS.MachineLearning.Requests

#### `addTags`

``` purescript
addTags :: forall eff. Service -> AddTagsInput -> Aff (exception :: EXCEPTION | eff) AddTagsOutput
```

<p>Adds one or more tags to an object, up to a limit of 10. Each tag consists of a key and an optional value. If you add a tag using a key that is already associated with the ML object, <code>AddTags</code> updates the tag's value.</p>

#### `createBatchPrediction`

``` purescript
createBatchPrediction :: forall eff. Service -> CreateBatchPredictionInput -> Aff (exception :: EXCEPTION | eff) CreateBatchPredictionOutput
```

<p>Generates predictions for a group of observations. The observations to process exist in one or more data files referenced by a <code>DataSource</code>. This operation creates a new <code>BatchPrediction</code>, and uses an <code>MLModel</code> and the data files referenced by the <code>DataSource</code> as information sources. </p> <p><code>CreateBatchPrediction</code> is an asynchronous operation. In response to <code>CreateBatchPrediction</code>, Amazon Machine Learning (Amazon ML) immediately returns and sets the <code>BatchPrediction</code> status to <code>PENDING</code>. After the <code>BatchPrediction</code> completes, Amazon ML sets the status to <code>COMPLETED</code>. </p> <p>You can poll for status updates by using the <a>GetBatchPrediction</a> operation and checking the <code>Status</code> parameter of the result. After the <code>COMPLETED</code> status appears, the results are available in the location specified by the <code>OutputUri</code> parameter.</p>

#### `createDataSourceFromRDS`

``` purescript
createDataSourceFromRDS :: forall eff. Service -> CreateDataSourceFromRDSInput -> Aff (exception :: EXCEPTION | eff) CreateDataSourceFromRDSOutput
```

<p>Creates a <code>DataSource</code> object from an <a href="http://aws.amazon.com/rds/"> Amazon Relational Database Service</a> (Amazon RDS). A <code>DataSource</code> references data that can be used to perform <code>CreateMLModel</code>, <code>CreateEvaluation</code>, or <code>CreateBatchPrediction</code> operations.</p> <p><code>CreateDataSourceFromRDS</code> is an asynchronous operation. In response to <code>CreateDataSourceFromRDS</code>, Amazon Machine Learning (Amazon ML) immediately returns and sets the <code>DataSource</code> status to <code>PENDING</code>. After the <code>DataSource</code> is created and ready for use, Amazon ML sets the <code>Status</code> parameter to <code>COMPLETED</code>. <code>DataSource</code> in the <code>COMPLETED</code> or <code>PENDING</code> state can be used only to perform <code>&gt;CreateMLModel</code>&gt;, <code>CreateEvaluation</code>, or <code>CreateBatchPrediction</code> operations. </p> <p> If Amazon ML cannot accept the input source, it sets the <code>Status</code> parameter to <code>FAILED</code> and includes an error message in the <code>Message</code> attribute of the <code>GetDataSource</code> operation response. </p>

#### `createDataSourceFromRedshift`

``` purescript
createDataSourceFromRedshift :: forall eff. Service -> CreateDataSourceFromRedshiftInput -> Aff (exception :: EXCEPTION | eff) CreateDataSourceFromRedshiftOutput
```

<p>Creates a <code>DataSource</code> from a database hosted on an Amazon Redshift cluster. A <code>DataSource</code> references data that can be used to perform either <code>CreateMLModel</code>, <code>CreateEvaluation</code>, or <code>CreateBatchPrediction</code> operations.</p> <p><code>CreateDataSourceFromRedshift</code> is an asynchronous operation. In response to <code>CreateDataSourceFromRedshift</code>, Amazon Machine Learning (Amazon ML) immediately returns and sets the <code>DataSource</code> status to <code>PENDING</code>. After the <code>DataSource</code> is created and ready for use, Amazon ML sets the <code>Status</code> parameter to <code>COMPLETED</code>. <code>DataSource</code> in <code>COMPLETED</code> or <code>PENDING</code> states can be used to perform only <code>CreateMLModel</code>, <code>CreateEvaluation</code>, or <code>CreateBatchPrediction</code> operations. </p> <p> If Amazon ML can't accept the input source, it sets the <code>Status</code> parameter to <code>FAILED</code> and includes an error message in the <code>Message</code> attribute of the <code>GetDataSource</code> operation response. </p> <p>The observations should be contained in the database hosted on an Amazon Redshift cluster and should be specified by a <code>SelectSqlQuery</code> query. Amazon ML executes an <code>Unload</code> command in Amazon Redshift to transfer the result set of the <code>SelectSqlQuery</code> query to <code>S3StagingLocation</code>.</p> <p>After the <code>DataSource</code> has been created, it's ready for use in evaluations and batch predictions. If you plan to use the <code>DataSource</code> to train an <code>MLModel</code>, the <code>DataSource</code> also requires a recipe. A recipe describes how each input variable will be used in training an <code>MLModel</code>. Will the variable be included or excluded from training? Will the variable be manipulated; for example, will it be combined with another variable or will it be split apart into word combinations? The recipe provides answers to these questions.</p> <?oxy_insert_start author="laurama" timestamp="20160406T153842-0700"><p>You can't change an existing datasource, but you can copy and modify the settings from an existing Amazon Redshift datasource to create a new datasource. To do so, call <code>GetDataSource</code> for an existing datasource and copy the values to a <code>CreateDataSource</code> call. Change the settings that you want to change and make sure that all required fields have the appropriate values.</p> <?oxy_insert_end>

#### `createDataSourceFromS3`

``` purescript
createDataSourceFromS3 :: forall eff. Service -> CreateDataSourceFromS3Input -> Aff (exception :: EXCEPTION | eff) CreateDataSourceFromS3Output
```

<p>Creates a <code>DataSource</code> object. A <code>DataSource</code> references data that can be used to perform <code>CreateMLModel</code>, <code>CreateEvaluation</code>, or <code>CreateBatchPrediction</code> operations.</p> <p><code>CreateDataSourceFromS3</code> is an asynchronous operation. In response to <code>CreateDataSourceFromS3</code>, Amazon Machine Learning (Amazon ML) immediately returns and sets the <code>DataSource</code> status to <code>PENDING</code>. After the <code>DataSource</code> has been created and is ready for use, Amazon ML sets the <code>Status</code> parameter to <code>COMPLETED</code>. <code>DataSource</code> in the <code>COMPLETED</code> or <code>PENDING</code> state can be used to perform only <code>CreateMLModel</code>, <code>CreateEvaluation</code> or <code>CreateBatchPrediction</code> operations. </p> <p> If Amazon ML can't accept the input source, it sets the <code>Status</code> parameter to <code>FAILED</code> and includes an error message in the <code>Message</code> attribute of the <code>GetDataSource</code> operation response. </p> <p>The observation data used in a <code>DataSource</code> should be ready to use; that is, it should have a consistent structure, and missing data values should be kept to a minimum. The observation data must reside in one or more .csv files in an Amazon Simple Storage Service (Amazon S3) location, along with a schema that describes the data items by name and type. The same schema must be used for all of the data files referenced by the <code>DataSource</code>. </p> <p>After the <code>DataSource</code> has been created, it's ready to use in evaluations and batch predictions. If you plan to use the <code>DataSource</code> to train an <code>MLModel</code>, the <code>DataSource</code> also needs a recipe. A recipe describes how each input variable will be used in training an <code>MLModel</code>. Will the variable be included or excluded from training? Will the variable be manipulated; for example, will it be combined with another variable or will it be split apart into word combinations? The recipe provides answers to these questions.</p>

#### `createEvaluation`

``` purescript
createEvaluation :: forall eff. Service -> CreateEvaluationInput -> Aff (exception :: EXCEPTION | eff) CreateEvaluationOutput
```

<p>Creates a new <code>Evaluation</code> of an <code>MLModel</code>. An <code>MLModel</code> is evaluated on a set of observations associated to a <code>DataSource</code>. Like a <code>DataSource</code> for an <code>MLModel</code>, the <code>DataSource</code> for an <code>Evaluation</code> contains values for the <code>Target Variable</code>. The <code>Evaluation</code> compares the predicted result for each observation to the actual outcome and provides a summary so that you know how effective the <code>MLModel</code> functions on the test data. Evaluation generates a relevant performance metric, such as BinaryAUC, RegressionRMSE or MulticlassAvgFScore based on the corresponding <code>MLModelType</code>: <code>BINARY</code>, <code>REGRESSION</code> or <code>MULTICLASS</code>. </p> <p><code>CreateEvaluation</code> is an asynchronous operation. In response to <code>CreateEvaluation</code>, Amazon Machine Learning (Amazon ML) immediately returns and sets the evaluation status to <code>PENDING</code>. After the <code>Evaluation</code> is created and ready for use, Amazon ML sets the status to <code>COMPLETED</code>. </p> <p>You can use the <code>GetEvaluation</code> operation to check progress of the evaluation during the creation operation.</p>

#### `createMLModel`

``` purescript
createMLModel :: forall eff. Service -> CreateMLModelInput -> Aff (exception :: EXCEPTION | eff) CreateMLModelOutput
```

<p>Creates a new <code>MLModel</code> using the <code>DataSource</code> and the recipe as information sources. </p> <p>An <code>MLModel</code> is nearly immutable. Users can update only the <code>MLModelName</code> and the <code>ScoreThreshold</code> in an <code>MLModel</code> without creating a new <code>MLModel</code>. </p> <p><code>CreateMLModel</code> is an asynchronous operation. In response to <code>CreateMLModel</code>, Amazon Machine Learning (Amazon ML) immediately returns and sets the <code>MLModel</code> status to <code>PENDING</code>. After the <code>MLModel</code> has been created and ready is for use, Amazon ML sets the status to <code>COMPLETED</code>. </p> <p>You can use the <code>GetMLModel</code> operation to check the progress of the <code>MLModel</code> during the creation operation.</p> <p> <code>CreateMLModel</code> requires a <code>DataSource</code> with computed statistics, which can be created by setting <code>ComputeStatistics</code> to <code>true</code> in <code>CreateDataSourceFromRDS</code>, <code>CreateDataSourceFromS3</code>, or <code>CreateDataSourceFromRedshift</code> operations. </p>

#### `createRealtimeEndpoint`

``` purescript
createRealtimeEndpoint :: forall eff. Service -> CreateRealtimeEndpointInput -> Aff (exception :: EXCEPTION | eff) CreateRealtimeEndpointOutput
```

<p>Creates a real-time endpoint for the <code>MLModel</code>. The endpoint contains the URI of the <code>MLModel</code>; that is, the location to send real-time prediction requests for the specified <code>MLModel</code>.</p>

#### `deleteBatchPrediction`

``` purescript
deleteBatchPrediction :: forall eff. Service -> DeleteBatchPredictionInput -> Aff (exception :: EXCEPTION | eff) DeleteBatchPredictionOutput
```

<p>Assigns the DELETED status to a <code>BatchPrediction</code>, rendering it unusable.</p> <p>After using the <code>DeleteBatchPrediction</code> operation, you can use the <a>GetBatchPrediction</a> operation to verify that the status of the <code>BatchPrediction</code> changed to DELETED.</p> <p><b>Caution:</b> The result of the <code>DeleteBatchPrediction</code> operation is irreversible.</p>

#### `deleteDataSource`

``` purescript
deleteDataSource :: forall eff. Service -> DeleteDataSourceInput -> Aff (exception :: EXCEPTION | eff) DeleteDataSourceOutput
```

<p>Assigns the DELETED status to a <code>DataSource</code>, rendering it unusable.</p> <p>After using the <code>DeleteDataSource</code> operation, you can use the <a>GetDataSource</a> operation to verify that the status of the <code>DataSource</code> changed to DELETED.</p> <p><b>Caution:</b> The results of the <code>DeleteDataSource</code> operation are irreversible.</p>

#### `deleteEvaluation`

``` purescript
deleteEvaluation :: forall eff. Service -> DeleteEvaluationInput -> Aff (exception :: EXCEPTION | eff) DeleteEvaluationOutput
```

<p>Assigns the <code>DELETED</code> status to an <code>Evaluation</code>, rendering it unusable.</p> <p>After invoking the <code>DeleteEvaluation</code> operation, you can use the <code>GetEvaluation</code> operation to verify that the status of the <code>Evaluation</code> changed to <code>DELETED</code>.</p> <caution><title>Caution</title> <p>The results of the <code>DeleteEvaluation</code> operation are irreversible.</p></caution>

#### `deleteMLModel`

``` purescript
deleteMLModel :: forall eff. Service -> DeleteMLModelInput -> Aff (exception :: EXCEPTION | eff) DeleteMLModelOutput
```

<p>Assigns the <code>DELETED</code> status to an <code>MLModel</code>, rendering it unusable.</p> <p>After using the <code>DeleteMLModel</code> operation, you can use the <code>GetMLModel</code> operation to verify that the status of the <code>MLModel</code> changed to DELETED.</p> <p><b>Caution:</b> The result of the <code>DeleteMLModel</code> operation is irreversible.</p>

#### `deleteRealtimeEndpoint`

``` purescript
deleteRealtimeEndpoint :: forall eff. Service -> DeleteRealtimeEndpointInput -> Aff (exception :: EXCEPTION | eff) DeleteRealtimeEndpointOutput
```

<p>Deletes a real time endpoint of an <code>MLModel</code>.</p>

#### `deleteTags`

``` purescript
deleteTags :: forall eff. Service -> DeleteTagsInput -> Aff (exception :: EXCEPTION | eff) DeleteTagsOutput
```

<p>Deletes the specified tags associated with an ML object. After this operation is complete, you can't recover deleted tags.</p> <p>If you specify a tag that doesn't exist, Amazon ML ignores it.</p>

#### `describeBatchPredictions`

``` purescript
describeBatchPredictions :: forall eff. Service -> DescribeBatchPredictionsInput -> Aff (exception :: EXCEPTION | eff) DescribeBatchPredictionsOutput
```

<p>Returns a list of <code>BatchPrediction</code> operations that match the search criteria in the request.</p>

#### `describeDataSources`

``` purescript
describeDataSources :: forall eff. Service -> DescribeDataSourcesInput -> Aff (exception :: EXCEPTION | eff) DescribeDataSourcesOutput
```

<p>Returns a list of <code>DataSource</code> that match the search criteria in the request.</p>

#### `describeEvaluations`

``` purescript
describeEvaluations :: forall eff. Service -> DescribeEvaluationsInput -> Aff (exception :: EXCEPTION | eff) DescribeEvaluationsOutput
```

<p>Returns a list of <code>DescribeEvaluations</code> that match the search criteria in the request.</p>

#### `describeMLModels`

``` purescript
describeMLModels :: forall eff. Service -> DescribeMLModelsInput -> Aff (exception :: EXCEPTION | eff) DescribeMLModelsOutput
```

<p>Returns a list of <code>MLModel</code> that match the search criteria in the request.</p>

#### `describeTags`

``` purescript
describeTags :: forall eff. Service -> DescribeTagsInput -> Aff (exception :: EXCEPTION | eff) DescribeTagsOutput
```

<p>Describes one or more of the tags for your Amazon ML object.</p>

#### `getBatchPrediction`

``` purescript
getBatchPrediction :: forall eff. Service -> GetBatchPredictionInput -> Aff (exception :: EXCEPTION | eff) GetBatchPredictionOutput
```

<p>Returns a <code>BatchPrediction</code> that includes detailed metadata, status, and data file information for a <code>Batch Prediction</code> request.</p>

#### `getDataSource`

``` purescript
getDataSource :: forall eff. Service -> GetDataSourceInput -> Aff (exception :: EXCEPTION | eff) GetDataSourceOutput
```

<p>Returns a <code>DataSource</code> that includes metadata and data file information, as well as the current status of the <code>DataSource</code>.</p> <p><code>GetDataSource</code> provides results in normal or verbose format. The verbose format adds the schema description and the list of files pointed to by the DataSource to the normal format.</p>

#### `getEvaluation`

``` purescript
getEvaluation :: forall eff. Service -> GetEvaluationInput -> Aff (exception :: EXCEPTION | eff) GetEvaluationOutput
```

<p>Returns an <code>Evaluation</code> that includes metadata as well as the current status of the <code>Evaluation</code>.</p>

#### `getMLModel`

``` purescript
getMLModel :: forall eff. Service -> GetMLModelInput -> Aff (exception :: EXCEPTION | eff) GetMLModelOutput
```

<p>Returns an <code>MLModel</code> that includes detailed metadata, data source information, and the current status of the <code>MLModel</code>.</p> <p><code>GetMLModel</code> provides results in normal or verbose format. </p>

#### `predict`

``` purescript
predict :: forall eff. Service -> PredictInput -> Aff (exception :: EXCEPTION | eff) PredictOutput
```

<p>Generates a prediction for the observation using the specified <code>ML Model</code>.</p> <note><title>Note</title> <p>Not all response parameters will be populated. Whether a response parameter is populated depends on the type of model requested.</p></note>

#### `updateBatchPrediction`

``` purescript
updateBatchPrediction :: forall eff. Service -> UpdateBatchPredictionInput -> Aff (exception :: EXCEPTION | eff) UpdateBatchPredictionOutput
```

<p>Updates the <code>BatchPredictionName</code> of a <code>BatchPrediction</code>.</p> <p>You can use the <code>GetBatchPrediction</code> operation to view the contents of the updated data element.</p>

#### `updateDataSource`

``` purescript
updateDataSource :: forall eff. Service -> UpdateDataSourceInput -> Aff (exception :: EXCEPTION | eff) UpdateDataSourceOutput
```

<p>Updates the <code>DataSourceName</code> of a <code>DataSource</code>.</p> <p>You can use the <code>GetDataSource</code> operation to view the contents of the updated data element.</p>

#### `updateEvaluation`

``` purescript
updateEvaluation :: forall eff. Service -> UpdateEvaluationInput -> Aff (exception :: EXCEPTION | eff) UpdateEvaluationOutput
```

<p>Updates the <code>EvaluationName</code> of an <code>Evaluation</code>.</p> <p>You can use the <code>GetEvaluation</code> operation to view the contents of the updated data element.</p>

#### `updateMLModel`

``` purescript
updateMLModel :: forall eff. Service -> UpdateMLModelInput -> Aff (exception :: EXCEPTION | eff) UpdateMLModelOutput
```

<p>Updates the <code>MLModelName</code> and the <code>ScoreThreshold</code> of an <code>MLModel</code>.</p> <p>You can use the <code>GetMLModel</code> operation to view the contents of the updated data element.</p>


