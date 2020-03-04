# ViReport v0.0.1 &mdash; 2020-03-03

## Input Dataset
The analysis was conducted on a dataset containing 188 sequences.
The average sequence length was 29802.441489361703,
with a standard deviation of 398.1848733754408.
The earliest sample date was 2013-07-24,
the median sample date was 2020-01-23,
and the most recent sample date was 2020-02-28.


<figure>
<img src="./report_files/figs/input_sequence_lengths.png" width="auto" height="auto" style="max-width:75%;">
<figcaption>Distribution of input sequence lengths</figcaption>
</figure>



<figure>
<img src="./report_files/figs/input_sample_dates.png" width="auto" height="auto" style="max-width:75%;">
<figcaption>Distribution of input sample dates</figcaption>
</figure>


## Preprocessed Dataset
The input dataset was preprocessed such that sequences were given safe names: non-letters/digits in sequence IDs were converted to underscores.
After preprocessing, the dataset contained 188 sequences.
The average sequence length was 29802.441489361703,
with a standard deviation of 398.1848733754408.
The earliest sample date was 2013-07-24,
the median sample date was 2020-01-23,
and the most recent sample date was 2020-02-28.


<figure>
<img src="./report_files/figs/processed_sequence_lengths.png" width="auto" height="auto" style="max-width:75%;">
<figcaption>Distribution of preprocessed sequence lengths</figcaption>
</figure>



<figure>
<img src="./report_files/figs/processed_sample_dates.png" width="auto" height="auto" style="max-width:75%;">
<figcaption>Distribution of preprocessed sample dates</figcaption>
</figure>


## Multiple Sequence Alignment
Multiple sequence alignment was performed using MAFFT (Katoh & Standley, 2013) in automatic mode.
There were 30379 positions (16955 invariant) and 166 unique sequences in the multiple sequence alignment.
Pairwise distances were computed from the multiple sequence alignment using the tn93 tool of HIV-TRACE (Pond et al., 2018).
The average pairwise sequence distance was 0.00023931959492795083,
with a standard deviation of 0.000241191693733296.


<figure>
<img src="./report_files/figs/pairwise_distances_sequences.png" width="auto" height="auto" style="max-width:75%;">
<figcaption>Distribution of pairwise sequence distances</figcaption>
</figure>


## Phylogenetic Inference
A maximum-likelihood phylogeny was inferred using IQ-TREE (Nguyen et al., 2015) in ModelFinder Plus mode (Kalyaanamoorthy et al., 2017).
The inferred phylogeny was MinVar-rooted using FastRoot (Mai et al., 2017).
Pairwise distances were computed from the phylogeny using TreeSwift (Moshiri, 2020).
The maximum pairwise phylogenetic distance (i.e., tree diameter) was 0.0030542688,
and the average pairwise phylogenetic distance was 0.00036952013843712307,
with a standard deviation of 0.0003455742429518303.


<figure>
<img src="./report_files/figs/tree_mutations.png" width="auto" height="auto" style="max-width:100%;max-height:100%;">
<figcaption>Rooted phylogenetic tree in unit of expected per-site mutations</figcaption>
</figure>



<figure>
<img src="./report_files/figs/pairwise_distances_tree.png" width="auto" height="auto" style="max-width:75%;">
<figcaption>Distribution of pairwise phylogenetic distances</figcaption>
</figure>


## Phylogenetic Dating
The rooted phylogeny was dated using treedater (Volz & Frost, 2017).
The height of the dated tree was 0.2920058166923287 days,
so given that the most recent sample was collected on 2020-02-28,
the estimated time of the most recent common ancestor (tMRCA) was 2020-02-27.


<figure>
<img src="./report_files/figs/tree_time.png" width="auto" height="auto" style="max-width:100%;max-height:100%;">
<figcaption>Dated phylogenetic tree in unit of years</figcaption>
</figure>


## Transmission Clustering
Transmission clustering was performed using TreeN93 (Moshiri, 2018) using pairwise phylogenetic distances.
The total number of singletons (i.e., non-clustered individuals) was 113,
and the total number of clusters (excluding singletons) was 22.
The average cluster size (excluding singletons) was 2.9545454545454546,
with a standard deviation of 1.0214638661020106,
and the maximum and minimum cluster sizes were 5 and 2, respectively.


<figure>
<img src="./report_files/figs/cluster_sizes.png" width="auto" height="auto" style="max-width:75%;">
<figcaption>Distribution of cluster sizes (excluding singletons)</figcaption>
</figure>

