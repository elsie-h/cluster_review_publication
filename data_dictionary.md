Data Dictionary
================
Elsie Horne
08/09/2019

The following table contains the names of all items for which data were extracted, along with a short description. Items are grouped according to the step of cluster analysis.

Some items take values yes/no, e.g. 'Was the study identified in the PubMed search?'

-   yes = it was identified
-   no = it was not identified

Some items take values yes/no/NA, e.g. 'Were smokers exluded?'

-   yes = the article states that smokers were excluded
-   no = the article states that smokers were not excluded
-   NA = the article does not mention whether smokers were excluded

Some items take the values yes/NA, e.g. 'Complete case analysis'

-   yes = the article states that a complete case analysis was carried out
-   NA = the article does not mention a complete case analysis (but we cannot categorically say that it was not as this may just be poor reporting)

<table>
<colgroup>
<col width="27%" />
<col width="11%" />
<col width="60%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Item group</th>
<th align="left">Item name</th>
<th align="left">Description of item</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><strong>General study information</strong></td>
<td align="left">author</td>
<td align="left">First author on study</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">year</td>
<td align="left">Year of publication</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">journal</td>
<td align="left">Publication journal</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">id</td>
<td align="left">Unique study ID</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">pubmed</td>
<td align="left">Was the study identified in the PubMed search? yes/no</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">scopus</td>
<td align="left">Was the study identified in the Scopus search? yes/no</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">date_extract</td>
<td align="left">Date of extraction</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">population</td>
<td align="left">Study population used in the cluster analysis</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">country</td>
<td align="left">Country of origin of study population</td>
</tr>
<tr class="even">
<td align="left">Details regarding exclusion criteria</td>
<td align="left">exc_smoke</td>
<td align="left">Were smokers were excluded? yes/no/NA</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">exc_copd</td>
<td align="left">Were patients with Chronic Obstructive Pulmonary Disease (COPD) were excluded? yes/no/NA</td>
</tr>
<tr class="even">
<td align="left">Methods for chosing candidate cluster features</td>
<td align="left">clinical_easy</td>
<td align="left">Were candidate cluster features chosen on the basis of being easy to measure in clinical practice? yes/NA</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">clinical_previous</td>
<td align="left">Were candidate cluster features chosen on the basis of previous studies? yes/NA</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">clinical_redundance</td>
<td align="left">Were candidate cluster features chosen on the basis of avoiding clinical redundancy? yes/NA</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">clinical_relevence</td>
<td align="left">Were candidate cluster features chosen on the basis of their relevance to asthma subtypes? yes/NA</td>
</tr>
<tr class="even">
<td align="left">Method for dealing with missing data</td>
<td align="left">miss_cc</td>
<td align="left">Complete case analysis: yes/NA</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">miss_handle</td>
<td align="left">Cluster analysis methods could handle missing data: yes/NA</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">miss_impute</td>
<td align="left">Imputation: yes/NA</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">miss_none</td>
<td align="left">No missing data present: yes/NA</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">miss_pat</td>
<td align="left">Patients with &gt;x% missing data removed: yes/NA</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">miss_var</td>
<td align="left">Features with &gt;x% missing values removed: yes/NA</td>
</tr>
<tr class="even">
<td align="left">Patients included in cluster analysis</td>
<td align="left">n_pat</td>
<td align="left">Number of patients</td>
</tr>
<tr class="odd">
<td align="left">Univariate variable transformations</td>
<td align="left">ut_box</td>
<td align="left">Box-cox power transformation: yes/NA</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">ut_log</td>
<td align="left">Log-transformation: yes/NA</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">ut_unclear</td>
<td align="left">Univariate feature transformation carried out but methods unclear: yes/NA</td>
</tr>
<tr class="even">
<td align="left">Method of feature selection</td>
<td align="left">vselect_coll</td>
<td align="left">Avoid collinearity: yes/NA</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">vselect_fa</td>
<td align="left">Factor analysis: yes/NA</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">vselect_mca</td>
<td align="left">Multiple correspondence analysis: yes/NA</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">vselect_multico</td>
<td align="left">Avoid multicollinearity: yes/NA</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">vselect_pca</td>
<td align="left">Principal component analysis: yes/NA</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">vselect_supervised</td>
<td align="left">On the basis of statistical tests: yes/NA</td>
</tr>
<tr class="even">
<td align="left">Methods of feature transformation</td>
<td align="left">ft_factor</td>
<td align="left">Factor analysis: yes/NA</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">ft_mca</td>
<td align="left">Multiple correspondence analysis: yes/NA</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">ft_pca</td>
<td align="left">Principal component analysis: yes/NA</td>
</tr>
<tr class="odd">
<td align="left">Cluster feature details</td>
<td align="left">data_type</td>
<td align="left">Type of cluster features: categorical/continuous/mixed/unclear</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">n_cat_feat</td>
<td align="left">Number of categorical cluster features</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">n_cont_feat</td>
<td align="left">Number of continuous cluster features</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">n_feat</td>
<td align="left">Total number of cluster features</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">encode_bin</td>
<td align="left">Were all categorical variables encoded as binary variables: yes/NA</td>
</tr>
<tr class="even">
<td align="left">Methods used to scale the features</td>
<td align="left">scale_01</td>
<td align="left">Scaled to the range [0,1]: yes/NA</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">scale_aad</td>
<td align="left">Average absolute deviation: yes/NA</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">scale_centre</td>
<td align="left">Centre-scaled: yes/NA</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">scale_gower</td>
<td align="left">Gower standardisation: yes/NA</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">scale_unit</td>
<td align="left">Scaled to unit length: yes/NA</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">scale_unspec</td>
<td align="left">Standardised but method unspecified: yes/NA</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">scale_z</td>
<td align="left">z-scores: yes/NA</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">scale_z_one</td>
<td align="left">One feature scaled to z-scores: yes/NA</td>
</tr>
<tr class="even">
<td align="left">Dissimilarity measure used</td>
<td align="left">prox_euc_ass</td>
<td align="left">Euclidean assumed due to cluster analysis method: yes/NA</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">prox_euc_ex</td>
<td align="left">Euclidean stated: yes/NA</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">prox_gower</td>
<td align="left">Gower's coefficient: yes/NA</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">prox_ll_ass</td>
<td align="left">Log-likelihood measure assumed due to cluster analysis method: yes/NA</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">prox_ll_exp</td>
<td align="left">Log-likelihood measure stated: yes/NA</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">prox_spearman</td>
<td align="left">Dissimilarity measure based on Sprearman's Rho: yes/NA</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">prox_tree</td>
<td align="left">Tree-based method using the treeClust R package: yes/NA</td>
</tr>
<tr class="odd">
<td align="left">Methods of cluster analysis</td>
<td align="left">cluster_fuzzypam</td>
<td align="left">Fuzzy Partition Around Medoids: yes/NA</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">cluster_hier</td>
<td align="left">Hierarchical clustering with no details of linkage: yes/NA</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">cluster_hier_ave</td>
<td align="left">Hierarchical clustering with average linkage: yes/NA</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">cluster_kmean</td>
<td align="left">k-means: yes/NA</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">cluster_kmean_ward</td>
<td align="left">k-means for pre-clusters, hierarchical with Ward's linkage for final clusters: yes/NA</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">cluster_kmedoid</td>
<td align="left">k-medoids: yes/NA</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">cluster_mmlmkkc</td>
<td align="left">Multiple kernel k-means: yes/NA</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">cluster_pre_hier</td>
<td align="left">Pre-clustering followed by hierarchical clustering: yes/NA</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">cluster_spec</td>
<td align="left">Spectral clustering: yes/NA</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">cluster_spss</td>
<td align="left">SPSS TwoStep: yes/NA</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">cluster_unclear</td>
<td align="left">Unclear clustering methods: yes/NA</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">cluster_ward</td>
<td align="left">Hierarchical clustering with Ward's linkage: yes/NA</td>
</tr>
<tr class="odd">
<td align="left">Method for choosing the number of clusters</td>
<td align="left">k_bic</td>
<td align="left">Bayesian Information Criterion (Implemented as part of SPSS Two Step): yes/NA</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">k_dend</td>
<td align="left">Dendrogram (explicitly stated or diagram included, stating hierarchical techniques not sufficient): yes/NA</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">k_interp</td>
<td align="left">Clinical interpretation of the cluster solution: yes/NA</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">k_max</td>
<td align="left">Did the study specify the maximum number of clusters which they considered?: yes/NA</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">details_k_max</td>
<td align="left">What was the maximum number of clusters considered?</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">k_mpc</td>
<td align="left">Did the study state the minumum size of cluster which they accept? yes/NA</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">details_k_mpc</td>
<td align="left">What was the minimum size of cluster considered?</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">k_previous</td>
<td align="left">Previous studies/results: yes/NA</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">k_scree</td>
<td align="left">Scree plot: yes/NA</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">k_silhouette</td>
<td align="left">Silhouette plot: yes/NA</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">k_stat</td>
<td align="left">Statistic(s): yes/NA</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">details_k_stat</td>
<td align="left">Which statistic(s) were used?</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">details_k_stat_n</td>
<td align="left">How many statistics were used?</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">k_unclear</td>
<td align="left">Unclear methods for choosing the number of clusters: : yes/NA</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">k_wards</td>
<td align="left">Hierarchical clustering with Ward's linkage: yes/NA</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">n_k</td>
<td align="left">Number of clusters chosen</td>
</tr>
<tr class="odd">
<td align="left">Method for testing quality of clusters</td>
<td align="left">rep_initial</td>
<td align="left">Repeat with different initial values: yes/NA</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">rep_method</td>
<td align="left">Repeat with different methods: yes/NA</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">rep_select</td>
<td align="left">Repeat in a selected subset: yes/NA</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">rep_sep</td>
<td align="left">Repeat in a separate cohort: yes/NA</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">rep_software</td>
<td align="left">Repeat with different software: yes/NA</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">rep_time</td>
<td align="left">Repeat at different time-point: yes/NA</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">rep_var</td>
<td align="left">Repeat with altered variables: yes/NA</td>
</tr>
<tr class="even">
<td align="left">Method for testing the stability of the clusters</td>
<td align="left">stab_boot</td>
<td align="left">Bootstrap methods: yes/NA</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">stab_loo</td>
<td align="left">Leave-one-out cross-validation: yes/NA</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">stab_random</td>
<td align="left">Repeat in random subset: yes/NA</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">stab_tt</td>
<td align="left">Split into train and test set: yes/NA</td>
</tr>
<tr class="even">
<td align="left"></td>
<td align="left">stab_unclear</td>
<td align="left">Methods unclear: yes/NA</td>
</tr>
<tr class="odd">
<td align="left">Reporting</td>
<td align="left">details_report_stab</td>
<td align="left">Were the results of testing the stability/quality of the solution reported: yes/no</td>
</tr>
</tbody>
</table>
