.class public Lcom/eamobile/download/ChecksumValidator;
.super Ljava/lang/Object;
.source "ChecksumValidator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static validate(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 11
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "dirPath"    # Ljava/lang/String;
    .param p2, "checksumValue"    # J

    .prologue
    const/4 v10, 0x0

    .line 12
    move-object v7, p0

    .line 13
    .local v7, "shortFileName":Ljava/lang/String;
    invoke-virtual {v7, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 15
    invoke-virtual {v7, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 17
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "validating checksum for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 21
    const/4 v1, 0x0

    .line 22
    .local v1, "cis":Ljava/util/zip/CheckedInputStream;
    :try_start_0
    new-instance v2, Ljava/util/zip/CheckedInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/util/zip/CRC32;

    invoke-direct {v9}, Ljava/util/zip/CRC32;-><init>()V

    invoke-direct {v2, v8, v9}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 23
    .end local v1    # "cis":Ljava/util/zip/CheckedInputStream;
    .local v2, "cis":Ljava/util/zip/CheckedInputStream;
    const/16 v8, 0x2000

    :try_start_1
    new-array v0, v8, [B

    .line 25
    .local v0, "buf":[B
    :cond_1
    invoke-virtual {v2, v0}, Ljava/util/zip/CheckedInputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    .line 28
    invoke-virtual {v2}, Ljava/util/zip/CheckedInputStream;->getChecksum()Ljava/util/zip/Checksum;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v5

    .line 30
    .local v5, "filechecksum":J
    cmp-long v8, v5, p2

    if-nez v8, :cond_2

    const/4 v8, 0x1

    move v3, v8

    .line 31
    .local v3, "doChecksumsMatch":Z
    :goto_0
    if-eqz v3, :cond_3

    .line 33
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checksums match: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 34
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " downloaded successfully"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    :goto_1
    move v8, v3

    .line 46
    .end local v0    # "buf":[B
    .end local v2    # "cis":Ljava/util/zip/CheckedInputStream;
    .end local v3    # "doChecksumsMatch":Z
    .end local v5    # "filechecksum":J
    :goto_2
    return v8

    .restart local v0    # "buf":[B
    .restart local v2    # "cis":Ljava/util/zip/CheckedInputStream;
    .restart local v5    # "filechecksum":J
    :cond_2
    move v3, v10

    .line 30
    goto :goto_0

    .line 38
    .restart local v3    # "doChecksumsMatch":Z
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checksums do not match FileChecksum:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", Server Checksums:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 39
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " failed to download"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 44
    .end local v0    # "buf":[B
    .end local v3    # "doChecksumsMatch":Z
    .end local v5    # "filechecksum":J
    :catch_0
    move-exception v8

    move-object v4, v8

    move-object v1, v2

    .end local v2    # "cis":Ljava/util/zip/CheckedInputStream;
    .restart local v1    # "cis":Ljava/util/zip/CheckedInputStream;
    .local v4, "e":Ljava/io/IOException;
    :goto_3
    move v8, v10

    .line 46
    goto :goto_2

    .line 44
    .end local v4    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v8

    move-object v4, v8

    goto :goto_3
.end method
