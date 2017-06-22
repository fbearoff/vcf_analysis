library(vcfR)
ref_file <-file.path("~/GRCm38_construct/Mus_musculus.GRCm38.dna.chromosome.10.fa")
gff_file <- file.path("~/GRCm38_construct/Mus_musculus.GRCm38.89.chromosome.10.gff3.gz")

library(VariantAnnotation)


vcf_103 <- read.vcfR("103.vcf", verbose = FALSE)
ref <- ape::read.dna(ref_file, format = "fasta")
gff <- read.table(gff_file, sep = "\t", quote = "")

vcf_103.df[ which(vcf_103.df$CHROM=="10"),]
subset(vcf_103.df, CHROM==10)