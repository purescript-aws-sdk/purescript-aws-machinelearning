
module AWS.MachineLearning.Requests where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Request (MethodName(..), request) as AWS
import AWS.Request.Types as Types

import AWS.MachineLearning as MachineLearning
import AWS.MachineLearning.Types as MachineLearningTypes


-- | <p>Adds one or more tags to an object, up to a limit of 10. Each tag consists of a key and an optional value. If you add a tag using a key that is already associated with the ML object, <code>AddTags</code> updates the tag's value.</p>
addTags :: forall eff. MachineLearning.Service -> MachineLearningTypes.AddTagsInput -> Aff (exception :: EXCEPTION | eff) MachineLearningTypes.AddTagsOutput
addTags (MachineLearning.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "addTags"


-- | <p>Generates predictions for a group of observations. The observations to process exist in one or more data files referenced by a <code>DataSource</code>. This operation creates a new <code>BatchPrediction</code>, and uses an <code>MLModel</code> and the data files referenced by the <code>DataSource</code> as information sources. </p> <p><code>CreateBatchPrediction</code> is an asynchronous operation. In response to <code>CreateBatchPrediction</code>, Amazon Machine Learning (Amazon ML) immediately returns and sets the <code>BatchPrediction</code> status to <code>PENDING</code>. After the <code>BatchPrediction</code> completes, Amazon ML sets the status to <code>COMPLETED</code>. </p> <p>You can poll for status updates by using the <a>GetBatchPrediction</a> operation and checking the <code>Status</code> parameter of the result. After the <code>COMPLETED</code> status appears, the results are available in the location specified by the <code>OutputUri</code> parameter.</p>
createBatchPrediction :: forall eff. MachineLearning.Service -> MachineLearningTypes.CreateBatchPredictionInput -> Aff (exception :: EXCEPTION | eff) MachineLearningTypes.CreateBatchPredictionOutput
createBatchPrediction (MachineLearning.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createBatchPrediction"


-- | <p>Creates a <code>DataSource</code> object from an <a href="http://aws.amazon.com/rds/"> Amazon Relational Database Service</a> (Amazon RDS). A <code>DataSource</code> references data that can be used to perform <code>CreateMLModel</code>, <code>CreateEvaluation</code>, or <code>CreateBatchPrediction</code> operations.</p> <p><code>CreateDataSourceFromRDS</code> is an asynchronous operation. In response to <code>CreateDataSourceFromRDS</code>, Amazon Machine Learning (Amazon ML) immediately returns and sets the <code>DataSource</code> status to <code>PENDING</code>. After the <code>DataSource</code> is created and ready for use, Amazon ML sets the <code>Status</code> parameter to <code>COMPLETED</code>. <code>DataSource</code> in the <code>COMPLETED</code> or <code>PENDING</code> state can be used only to perform <code>&gt;CreateMLModel</code>&gt;, <code>CreateEvaluation</code>, or <code>CreateBatchPrediction</code> operations. </p> <p> If Amazon ML cannot accept the input source, it sets the <code>Status</code> parameter to <code>FAILED</code> and includes an error message in the <code>Message</code> attribute of the <code>GetDataSource</code> operation response. </p>
createDataSourceFromRDS :: forall eff. MachineLearning.Service -> MachineLearningTypes.CreateDataSourceFromRDSInput -> Aff (exception :: EXCEPTION | eff) MachineLearningTypes.CreateDataSourceFromRDSOutput
createDataSourceFromRDS (MachineLearning.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createDataSourceFromRDS"


-- | <p>Creates a <code>DataSource</code> from a database hosted on an Amazon Redshift cluster. A <code>DataSource</code> references data that can be used to perform either <code>CreateMLModel</code>, <code>CreateEvaluation</code>, or <code>CreateBatchPrediction</code> operations.</p> <p><code>CreateDataSourceFromRedshift</code> is an asynchronous operation. In response to <code>CreateDataSourceFromRedshift</code>, Amazon Machine Learning (Amazon ML) immediately returns and sets the <code>DataSource</code> status to <code>PENDING</code>. After the <code>DataSource</code> is created and ready for use, Amazon ML sets the <code>Status</code> parameter to <code>COMPLETED</code>. <code>DataSource</code> in <code>COMPLETED</code> or <code>PENDING</code> states can be used to perform only <code>CreateMLModel</code>, <code>CreateEvaluation</code>, or <code>CreateBatchPrediction</code> operations. </p> <p> If Amazon ML can't accept the input source, it sets the <code>Status</code> parameter to <code>FAILED</code> and includes an error message in the <code>Message</code> attribute of the <code>GetDataSource</code> operation response. </p> <p>The observations should be contained in the database hosted on an Amazon Redshift cluster and should be specified by a <code>SelectSqlQuery</code> query. Amazon ML executes an <code>Unload</code> command in Amazon Redshift to transfer the result set of the <code>SelectSqlQuery</code> query to <code>S3StagingLocation</code>.</p> <p>After the <code>DataSource</code> has been created, it's ready for use in evaluations and batch predictions. If you plan to use the <code>DataSource</code> to train an <code>MLModel</code>, the <code>DataSource</code> also requires a recipe. A recipe describes how each input variable will be used in training an <code>MLModel</code>. Will the variable be included or excluded from training? Will the variable be manipulated; for example, will it be combined with another variable or will it be split apart into word combinations? The recipe provides answers to these questions.</p> <?oxy_insert_start author="laurama" timestamp="20160406T153842-0700"><p>You can't change an existing datasource, but you can copy and modify the settings from an existing Amazon Redshift datasource to create a new datasource. To do so, call <code>GetDataSource</code> for an existing datasource and copy the values to a <code>CreateDataSource</code> call. Change the settings that you want to change and make sure that all required fields have the appropriate values.</p> <?oxy_insert_end>
createDataSourceFromRedshift :: forall eff. MachineLearning.Service -> MachineLearningTypes.CreateDataSourceFromRedshiftInput -> Aff (exception :: EXCEPTION | eff) MachineLearningTypes.CreateDataSourceFromRedshiftOutput
createDataSourceFromRedshift (MachineLearning.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createDataSourceFromRedshift"


-- | <p>Creates a <code>DataSource</code> object. A <code>DataSource</code> references data that can be used to perform <code>CreateMLModel</code>, <code>CreateEvaluation</code>, or <code>CreateBatchPrediction</code> operations.</p> <p><code>CreateDataSourceFromS3</code> is an asynchronous operation. In response to <code>CreateDataSourceFromS3</code>, Amazon Machine Learning (Amazon ML) immediately returns and sets the <code>DataSource</code> status to <code>PENDING</code>. After the <code>DataSource</code> has been created and is ready for use, Amazon ML sets the <code>Status</code> parameter to <code>COMPLETED</code>. <code>DataSource</code> in the <code>COMPLETED</code> or <code>PENDING</code> state can be used to perform only <code>CreateMLModel</code>, <code>CreateEvaluation</code> or <code>CreateBatchPrediction</code> operations. </p> <p> If Amazon ML can't accept the input source, it sets the <code>Status</code> parameter to <code>FAILED</code> and includes an error message in the <code>Message</code> attribute of the <code>GetDataSource</code> operation response. </p> <p>The observation data used in a <code>DataSource</code> should be ready to use; that is, it should have a consistent structure, and missing data values should be kept to a minimum. The observation data must reside in one or more .csv files in an Amazon Simple Storage Service (Amazon S3) location, along with a schema that describes the data items by name and type. The same schema must be used for all of the data files referenced by the <code>DataSource</code>. </p> <p>After the <code>DataSource</code> has been created, it's ready to use in evaluations and batch predictions. If you plan to use the <code>DataSource</code> to train an <code>MLModel</code>, the <code>DataSource</code> also needs a recipe. A recipe describes how each input variable will be used in training an <code>MLModel</code>. Will the variable be included or excluded from training? Will the variable be manipulated; for example, will it be combined with another variable or will it be split apart into word combinations? The recipe provides answers to these questions.</p>
createDataSourceFromS3 :: forall eff. MachineLearning.Service -> MachineLearningTypes.CreateDataSourceFromS3Input -> Aff (exception :: EXCEPTION | eff) MachineLearningTypes.CreateDataSourceFromS3Output
createDataSourceFromS3 (MachineLearning.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createDataSourceFromS3"


-- | <p>Creates a new <code>Evaluation</code> of an <code>MLModel</code>. An <code>MLModel</code> is evaluated on a set of observations associated to a <code>DataSource</code>. Like a <code>DataSource</code> for an <code>MLModel</code>, the <code>DataSource</code> for an <code>Evaluation</code> contains values for the <code>Target Variable</code>. The <code>Evaluation</code> compares the predicted result for each observation to the actual outcome and provides a summary so that you know how effective the <code>MLModel</code> functions on the test data. Evaluation generates a relevant performance metric, such as BinaryAUC, RegressionRMSE or MulticlassAvgFScore based on the corresponding <code>MLModelType</code>: <code>BINARY</code>, <code>REGRESSION</code> or <code>MULTICLASS</code>. </p> <p><code>CreateEvaluation</code> is an asynchronous operation. In response to <code>CreateEvaluation</code>, Amazon Machine Learning (Amazon ML) immediately returns and sets the evaluation status to <code>PENDING</code>. After the <code>Evaluation</code> is created and ready for use, Amazon ML sets the status to <code>COMPLETED</code>. </p> <p>You can use the <code>GetEvaluation</code> operation to check progress of the evaluation during the creation operation.</p>
createEvaluation :: forall eff. MachineLearning.Service -> MachineLearningTypes.CreateEvaluationInput -> Aff (exception :: EXCEPTION | eff) MachineLearningTypes.CreateEvaluationOutput
createEvaluation (MachineLearning.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createEvaluation"


-- | <p>Creates a new <code>MLModel</code> using the <code>DataSource</code> and the recipe as information sources. </p> <p>An <code>MLModel</code> is nearly immutable. Users can update only the <code>MLModelName</code> and the <code>ScoreThreshold</code> in an <code>MLModel</code> without creating a new <code>MLModel</code>. </p> <p><code>CreateMLModel</code> is an asynchronous operation. In response to <code>CreateMLModel</code>, Amazon Machine Learning (Amazon ML) immediately returns and sets the <code>MLModel</code> status to <code>PENDING</code>. After the <code>MLModel</code> has been created and ready is for use, Amazon ML sets the status to <code>COMPLETED</code>. </p> <p>You can use the <code>GetMLModel</code> operation to check the progress of the <code>MLModel</code> during the creation operation.</p> <p> <code>CreateMLModel</code> requires a <code>DataSource</code> with computed statistics, which can be created by setting <code>ComputeStatistics</code> to <code>true</code> in <code>CreateDataSourceFromRDS</code>, <code>CreateDataSourceFromS3</code>, or <code>CreateDataSourceFromRedshift</code> operations. </p>
createMLModel :: forall eff. MachineLearning.Service -> MachineLearningTypes.CreateMLModelInput -> Aff (exception :: EXCEPTION | eff) MachineLearningTypes.CreateMLModelOutput
createMLModel (MachineLearning.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createMLModel"


-- | <p>Creates a real-time endpoint for the <code>MLModel</code>. The endpoint contains the URI of the <code>MLModel</code>; that is, the location to send real-time prediction requests for the specified <code>MLModel</code>.</p>
createRealtimeEndpoint :: forall eff. MachineLearning.Service -> MachineLearningTypes.CreateRealtimeEndpointInput -> Aff (exception :: EXCEPTION | eff) MachineLearningTypes.CreateRealtimeEndpointOutput
createRealtimeEndpoint (MachineLearning.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createRealtimeEndpoint"


-- | <p>Assigns the DELETED status to a <code>BatchPrediction</code>, rendering it unusable.</p> <p>After using the <code>DeleteBatchPrediction</code> operation, you can use the <a>GetBatchPrediction</a> operation to verify that the status of the <code>BatchPrediction</code> changed to DELETED.</p> <p><b>Caution:</b> The result of the <code>DeleteBatchPrediction</code> operation is irreversible.</p>
deleteBatchPrediction :: forall eff. MachineLearning.Service -> MachineLearningTypes.DeleteBatchPredictionInput -> Aff (exception :: EXCEPTION | eff) MachineLearningTypes.DeleteBatchPredictionOutput
deleteBatchPrediction (MachineLearning.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteBatchPrediction"


-- | <p>Assigns the DELETED status to a <code>DataSource</code>, rendering it unusable.</p> <p>After using the <code>DeleteDataSource</code> operation, you can use the <a>GetDataSource</a> operation to verify that the status of the <code>DataSource</code> changed to DELETED.</p> <p><b>Caution:</b> The results of the <code>DeleteDataSource</code> operation are irreversible.</p>
deleteDataSource :: forall eff. MachineLearning.Service -> MachineLearningTypes.DeleteDataSourceInput -> Aff (exception :: EXCEPTION | eff) MachineLearningTypes.DeleteDataSourceOutput
deleteDataSource (MachineLearning.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteDataSource"


-- | <p>Assigns the <code>DELETED</code> status to an <code>Evaluation</code>, rendering it unusable.</p> <p>After invoking the <code>DeleteEvaluation</code> operation, you can use the <code>GetEvaluation</code> operation to verify that the status of the <code>Evaluation</code> changed to <code>DELETED</code>.</p> <caution><title>Caution</title> <p>The results of the <code>DeleteEvaluation</code> operation are irreversible.</p></caution>
deleteEvaluation :: forall eff. MachineLearning.Service -> MachineLearningTypes.DeleteEvaluationInput -> Aff (exception :: EXCEPTION | eff) MachineLearningTypes.DeleteEvaluationOutput
deleteEvaluation (MachineLearning.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteEvaluation"


-- | <p>Assigns the <code>DELETED</code> status to an <code>MLModel</code>, rendering it unusable.</p> <p>After using the <code>DeleteMLModel</code> operation, you can use the <code>GetMLModel</code> operation to verify that the status of the <code>MLModel</code> changed to DELETED.</p> <p><b>Caution:</b> The result of the <code>DeleteMLModel</code> operation is irreversible.</p>
deleteMLModel :: forall eff. MachineLearning.Service -> MachineLearningTypes.DeleteMLModelInput -> Aff (exception :: EXCEPTION | eff) MachineLearningTypes.DeleteMLModelOutput
deleteMLModel (MachineLearning.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteMLModel"


-- | <p>Deletes a real time endpoint of an <code>MLModel</code>.</p>
deleteRealtimeEndpoint :: forall eff. MachineLearning.Service -> MachineLearningTypes.DeleteRealtimeEndpointInput -> Aff (exception :: EXCEPTION | eff) MachineLearningTypes.DeleteRealtimeEndpointOutput
deleteRealtimeEndpoint (MachineLearning.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteRealtimeEndpoint"


-- | <p>Deletes the specified tags associated with an ML object. After this operation is complete, you can't recover deleted tags.</p> <p>If you specify a tag that doesn't exist, Amazon ML ignores it.</p>
deleteTags :: forall eff. MachineLearning.Service -> MachineLearningTypes.DeleteTagsInput -> Aff (exception :: EXCEPTION | eff) MachineLearningTypes.DeleteTagsOutput
deleteTags (MachineLearning.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteTags"


-- | <p>Returns a list of <code>BatchPrediction</code> operations that match the search criteria in the request.</p>
describeBatchPredictions :: forall eff. MachineLearning.Service -> MachineLearningTypes.DescribeBatchPredictionsInput -> Aff (exception :: EXCEPTION | eff) MachineLearningTypes.DescribeBatchPredictionsOutput
describeBatchPredictions (MachineLearning.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeBatchPredictions"


-- | <p>Returns a list of <code>DataSource</code> that match the search criteria in the request.</p>
describeDataSources :: forall eff. MachineLearning.Service -> MachineLearningTypes.DescribeDataSourcesInput -> Aff (exception :: EXCEPTION | eff) MachineLearningTypes.DescribeDataSourcesOutput
describeDataSources (MachineLearning.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeDataSources"


-- | <p>Returns a list of <code>DescribeEvaluations</code> that match the search criteria in the request.</p>
describeEvaluations :: forall eff. MachineLearning.Service -> MachineLearningTypes.DescribeEvaluationsInput -> Aff (exception :: EXCEPTION | eff) MachineLearningTypes.DescribeEvaluationsOutput
describeEvaluations (MachineLearning.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeEvaluations"


-- | <p>Returns a list of <code>MLModel</code> that match the search criteria in the request.</p>
describeMLModels :: forall eff. MachineLearning.Service -> MachineLearningTypes.DescribeMLModelsInput -> Aff (exception :: EXCEPTION | eff) MachineLearningTypes.DescribeMLModelsOutput
describeMLModels (MachineLearning.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeMLModels"


-- | <p>Describes one or more of the tags for your Amazon ML object.</p>
describeTags :: forall eff. MachineLearning.Service -> MachineLearningTypes.DescribeTagsInput -> Aff (exception :: EXCEPTION | eff) MachineLearningTypes.DescribeTagsOutput
describeTags (MachineLearning.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeTags"


-- | <p>Returns a <code>BatchPrediction</code> that includes detailed metadata, status, and data file information for a <code>Batch Prediction</code> request.</p>
getBatchPrediction :: forall eff. MachineLearning.Service -> MachineLearningTypes.GetBatchPredictionInput -> Aff (exception :: EXCEPTION | eff) MachineLearningTypes.GetBatchPredictionOutput
getBatchPrediction (MachineLearning.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getBatchPrediction"


-- | <p>Returns a <code>DataSource</code> that includes metadata and data file information, as well as the current status of the <code>DataSource</code>.</p> <p><code>GetDataSource</code> provides results in normal or verbose format. The verbose format adds the schema description and the list of files pointed to by the DataSource to the normal format.</p>
getDataSource :: forall eff. MachineLearning.Service -> MachineLearningTypes.GetDataSourceInput -> Aff (exception :: EXCEPTION | eff) MachineLearningTypes.GetDataSourceOutput
getDataSource (MachineLearning.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getDataSource"


-- | <p>Returns an <code>Evaluation</code> that includes metadata as well as the current status of the <code>Evaluation</code>.</p>
getEvaluation :: forall eff. MachineLearning.Service -> MachineLearningTypes.GetEvaluationInput -> Aff (exception :: EXCEPTION | eff) MachineLearningTypes.GetEvaluationOutput
getEvaluation (MachineLearning.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getEvaluation"


-- | <p>Returns an <code>MLModel</code> that includes detailed metadata, data source information, and the current status of the <code>MLModel</code>.</p> <p><code>GetMLModel</code> provides results in normal or verbose format. </p>
getMLModel :: forall eff. MachineLearning.Service -> MachineLearningTypes.GetMLModelInput -> Aff (exception :: EXCEPTION | eff) MachineLearningTypes.GetMLModelOutput
getMLModel (MachineLearning.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "getMLModel"


-- | <p>Generates a prediction for the observation using the specified <code>ML Model</code>.</p> <note><title>Note</title> <p>Not all response parameters will be populated. Whether a response parameter is populated depends on the type of model requested.</p></note>
predict :: forall eff. MachineLearning.Service -> MachineLearningTypes.PredictInput -> Aff (exception :: EXCEPTION | eff) MachineLearningTypes.PredictOutput
predict (MachineLearning.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "predict"


-- | <p>Updates the <code>BatchPredictionName</code> of a <code>BatchPrediction</code>.</p> <p>You can use the <code>GetBatchPrediction</code> operation to view the contents of the updated data element.</p>
updateBatchPrediction :: forall eff. MachineLearning.Service -> MachineLearningTypes.UpdateBatchPredictionInput -> Aff (exception :: EXCEPTION | eff) MachineLearningTypes.UpdateBatchPredictionOutput
updateBatchPrediction (MachineLearning.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateBatchPrediction"


-- | <p>Updates the <code>DataSourceName</code> of a <code>DataSource</code>.</p> <p>You can use the <code>GetDataSource</code> operation to view the contents of the updated data element.</p>
updateDataSource :: forall eff. MachineLearning.Service -> MachineLearningTypes.UpdateDataSourceInput -> Aff (exception :: EXCEPTION | eff) MachineLearningTypes.UpdateDataSourceOutput
updateDataSource (MachineLearning.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateDataSource"


-- | <p>Updates the <code>EvaluationName</code> of an <code>Evaluation</code>.</p> <p>You can use the <code>GetEvaluation</code> operation to view the contents of the updated data element.</p>
updateEvaluation :: forall eff. MachineLearning.Service -> MachineLearningTypes.UpdateEvaluationInput -> Aff (exception :: EXCEPTION | eff) MachineLearningTypes.UpdateEvaluationOutput
updateEvaluation (MachineLearning.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateEvaluation"


-- | <p>Updates the <code>MLModelName</code> and the <code>ScoreThreshold</code> of an <code>MLModel</code>.</p> <p>You can use the <code>GetMLModel</code> operation to view the contents of the updated data element.</p>
updateMLModel :: forall eff. MachineLearning.Service -> MachineLearningTypes.UpdateMLModelInput -> Aff (exception :: EXCEPTION | eff) MachineLearningTypes.UpdateMLModelOutput
updateMLModel (MachineLearning.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateMLModel"
