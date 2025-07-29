.class public Lcom/eamobile/download/ZipExtractor;
.super Ljava/lang/Object;
.source "ZipExtractor.java"


# instance fields
.field private zipExtractorEvent:Lcom/eamobile/download/IZipExtractorEvent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public extractFiles(Ljava/io/InputStream;Ljava/util/Hashtable;Ljava/lang/String;ILcom/eamobile/download/IZipExtractorEvent;)Z
    .locals 25
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p3, "dirPath"    # Ljava/lang/String;
    .param p4, "timeout"    # I
    .param p5, "zipExtractorEvent"    # Lcom/eamobile/download/IZipExtractorEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Lcom/eamobile/download/IZipExtractorEvent;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 21
    .local p2, "checksums":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Long;>;"
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/eamobile/download/ZipExtractor;->zipExtractorEvent:Lcom/eamobile/download/IZipExtractorEvent;

    .line 23
    const/16 v19, 0x0

    .line 26
    .local v19, "zip":Ljava/util/zip/ZipInputStream;
    :try_start_0
    new-instance v20, Ljava/util/zip/ZipInputStream;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .end local v19    # "zip":Ljava/util/zip/ZipInputStream;
    .local v20, "zip":Ljava/util/zip/ZipInputStream;
    const-wide/16 v21, 0x3e8

    :try_start_1
    invoke-static/range {v21 .. v22}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 34
    const/4 v7, 0x0

    .line 37
    .local v7, "entry":Ljava/util/zip/ZipEntry;
    const/4 v12, 0x0

    .line 40
    .local v12, "numFilesInZip":I
    :cond_0
    :goto_0
    const/4 v7, 0x0

    .line 43
    :try_start_2
    invoke-virtual/range {v20 .. v20}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v7

    .line 51
    if-nez v7, :cond_2

    .line 53
    if-lez v12, :cond_1

    :try_start_3
    invoke-virtual/range {p2 .. p2}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_1

    .line 56
    const-string v21, "Read all the files from Zip Stream"

    invoke-static/range {v21 .. v21}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 57
    const/16 v21, 0x1

    move-object/from16 v19, v20

    .line 173
    .end local v7    # "entry":Ljava/util/zip/ZipEntry;
    .end local v12    # "numFilesInZip":I
    .end local v20    # "zip":Ljava/util/zip/ZipInputStream;
    .restart local v19    # "zip":Ljava/util/zip/ZipInputStream;
    :goto_1
    return v21

    .line 29
    :catch_0
    move-exception v21

    move-object/from16 v6, v21

    .line 31
    .local v6, "e":Ljava/lang/Exception;
    :goto_2
    const/16 v21, 0x0

    goto :goto_1

    .line 45
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v19    # "zip":Ljava/util/zip/ZipInputStream;
    .restart local v7    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v12    # "numFilesInZip":I
    .restart local v20    # "zip":Ljava/util/zip/ZipInputStream;
    :catch_1
    move-exception v6

    .line 47
    .restart local v6    # "e":Ljava/lang/Exception;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Exception getNextEntry:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 48
    const/16 v21, 0x0

    move-object/from16 v19, v20

    .end local v20    # "zip":Ljava/util/zip/ZipInputStream;
    .restart local v19    # "zip":Ljava/util/zip/ZipInputStream;
    goto :goto_1

    .line 62
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v19    # "zip":Ljava/util/zip/ZipInputStream;
    .restart local v20    # "zip":Ljava/util/zip/ZipInputStream;
    :cond_1
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Num files in Zip file:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 63
    const/16 v21, 0x0

    move-object/from16 v19, v20

    .end local v20    # "zip":Ljava/util/zip/ZipInputStream;
    .restart local v19    # "zip":Ljava/util/zip/ZipInputStream;
    goto :goto_1

    .line 67
    .end local v19    # "zip":Ljava/util/zip/ZipInputStream;
    .restart local v20    # "zip":Ljava/util/zip/ZipInputStream;
    :cond_2
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v10

    .line 69
    .local v10, "fileSize":J
    add-int/lit8 v12, v12, 0x1

    .line 71
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->isDirectory()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    move-result v21

    if-eqz v21, :cond_3

    .line 75
    :try_start_4
    new-instance v8, Ljava/io/File;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object v0, v8

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    .local v8, "f":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 77
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v21

    if-nez v21, :cond_0

    .line 79
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 82
    .end local v8    # "f":Ljava/io/File;
    :catch_2
    move-exception v21

    move-object/from16 v6, v21

    .line 84
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_5
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Exception createNewFile:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 85
    const/16 v21, 0x0

    move-object/from16 v19, v20

    .end local v20    # "zip":Ljava/util/zip/ZipInputStream;
    .restart local v19    # "zip":Ljava/util/zip/ZipInputStream;
    goto/16 :goto_1

    .line 91
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v19    # "zip":Ljava/util/zip/ZipInputStream;
    .restart local v20    # "zip":Ljava/util/zip/ZipInputStream;
    :cond_3
    const/4 v13, 0x0

    .line 92
    .local v13, "out":Ljava/io/OutputStream;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 93
    .local v14, "path":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    .local v9, "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    move-result v21

    if-nez v21, :cond_5

    .line 98
    :try_start_6
    new-instance v5, Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v21

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    .local v5, "dir":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v21

    if-nez v21, :cond_4

    .line 101
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 103
    :cond_4
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 114
    .end local v5    # "dir":Ljava/io/File;
    :cond_5
    :try_start_7
    new-instance v13, Ljava/io/FileOutputStream;

    .end local v13    # "out":Ljava/io/OutputStream;
    invoke-direct {v13, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 122
    .restart local v13    # "out":Ljava/io/OutputStream;
    :try_start_8
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v22

    move-object/from16 v0, p5

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-interface {v0, v1, v2, v3}, Lcom/eamobile/download/IZipExtractorEvent;->onExtractEntryStart(Ljava/lang/String;J)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 126
    :try_start_9
    new-instance v15, Lcom/eamobile/download/ReadThread;

    move-object v0, v15

    move-object/from16 v1, v20

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lcom/eamobile/download/ReadThread;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 127
    .local v15, "readThread":Lcom/eamobile/download/ReadThread;
    invoke-virtual {v15}, Lcom/eamobile/download/ReadThread;->start()V

    .line 130
    :goto_3
    move-object v0, v15

    iget-boolean v0, v0, Lcom/eamobile/download/ReadThread;->reading:Z

    move/from16 v21, v0

    if-eqz v21, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    move-object v0, v15

    iget-wide v0, v0, Lcom/eamobile/download/ReadThread;->timestamp:J

    move-wide/from16 v23, v0

    sub-long v21, v21, v23

    move/from16 v0, p4

    int-to-long v0, v0

    move-wide/from16 v23, v0

    cmp-long v21, v21, v23

    if-gez v21, :cond_6

    .line 132
    const-wide/16 v21, 0xa

    invoke-static/range {v21 .. v22}, Ljava/lang/Thread;->sleep(J)V

    .line 134
    move-object v0, v15

    iget v0, v0, Lcom/eamobile/download/ReadThread;->sizeDownloaded:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-wide v0, v10

    long-to-float v0, v0

    move/from16 v22, v0

    div-float v16, v21, v22

    .line 135
    .local v16, "relSize":F
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v21

    move-wide/from16 v0, v21

    long-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v16

    move/from16 v0, v21

    float-to-int v0, v0

    move v4, v0

    .line 136
    .local v4, "compressedCurrentSize":I
    move-object/from16 v0, p5

    move v1, v4

    invoke-interface {v0, v1}, Lcom/eamobile/download/IZipExtractorEvent;->onReportProgress(I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_3

    .line 163
    .end local v4    # "compressedCurrentSize":I
    .end local v15    # "readThread":Lcom/eamobile/download/ReadThread;
    .end local v16    # "relSize":F
    :catch_3
    move-exception v21

    move-object/from16 v6, v21

    .line 165
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_a
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Error writing file: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ",Exception:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 166
    const/16 v21, 0x0

    move-object/from16 v19, v20

    .end local v20    # "zip":Ljava/util/zip/ZipInputStream;
    .restart local v19    # "zip":Ljava/util/zip/ZipInputStream;
    goto/16 :goto_1

    .line 105
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v19    # "zip":Ljava/util/zip/ZipInputStream;
    .restart local v20    # "zip":Ljava/util/zip/ZipInputStream;
    :catch_4
    move-exception v21

    move-object/from16 v6, v21

    .line 107
    .restart local v6    # "e":Ljava/lang/Exception;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "File creation failed for:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 108
    const/16 v21, 0x0

    move-object/from16 v19, v20

    .end local v20    # "zip":Ljava/util/zip/ZipInputStream;
    .restart local v19    # "zip":Ljava/util/zip/ZipInputStream;
    goto/16 :goto_1

    .line 116
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v13    # "out":Ljava/io/OutputStream;
    .end local v19    # "zip":Ljava/util/zip/ZipInputStream;
    .restart local v20    # "zip":Ljava/util/zip/ZipInputStream;
    :catch_5
    move-exception v21

    move-object/from16 v6, v21

    .line 118
    .restart local v6    # "e":Ljava/lang/Exception;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Writing into a File creation failed for:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 119
    const/16 v21, 0x0

    move-object/from16 v19, v20

    .end local v20    # "zip":Ljava/util/zip/ZipInputStream;
    .restart local v19    # "zip":Ljava/util/zip/ZipInputStream;
    goto/16 :goto_1

    .line 139
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v19    # "zip":Ljava/util/zip/ZipInputStream;
    .restart local v13    # "out":Ljava/io/OutputStream;
    .restart local v15    # "readThread":Lcom/eamobile/download/ReadThread;
    .restart local v20    # "zip":Ljava/util/zip/ZipInputStream;
    :cond_6
    :try_start_b
    move-object v0, v15

    iget-boolean v0, v0, Lcom/eamobile/download/ReadThread;->reading:Z

    move/from16 v21, v0

    if-eqz v21, :cond_7

    .line 141
    const-string v21, "Read took too long, killing thread, restarting download."

    invoke-static/range {v21 .. v21}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 142
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object v1, v15

    iput-boolean v0, v1, Lcom/eamobile/download/ReadThread;->killMe:Z

    .line 143
    const/4 v15, 0x0

    .line 146
    :cond_7
    invoke-virtual {v13}, Ljava/io/OutputStream;->flush()V

    .line 147
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    .line 148
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v17

    .line 150
    .local v17, "writtenFile":J
    cmp-long v21, v10, v17

    if-nez v21, :cond_8

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v23

    add-int/lit8 v23, v23, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Lcom/eamobile/download/ChecksumValidator;->validate(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v21

    if-nez v21, :cond_9

    .line 154
    :cond_8
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 155
    const/16 v21, 0x0

    move-object/from16 v19, v20

    .end local v20    # "zip":Ljava/util/zip/ZipInputStream;
    .restart local v19    # "zip":Ljava/util/zip/ZipInputStream;
    goto/16 :goto_1

    .line 159
    .end local v19    # "zip":Ljava/util/zip/ZipInputStream;
    .restart local v20    # "zip":Ljava/util/zip/ZipInputStream;
    :cond_9
    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-interface/range {p5 .. p5}, Lcom/eamobile/download/IZipExtractorEvent;->onExtractEntryFinish()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_0

    .line 170
    .end local v9    # "file":Ljava/io/File;
    .end local v10    # "fileSize":J
    .end local v13    # "out":Ljava/io/OutputStream;
    .end local v14    # "path":Ljava/lang/String;
    .end local v15    # "readThread":Lcom/eamobile/download/ReadThread;
    .end local v17    # "writtenFile":J
    :catch_6
    move-exception v21

    move-object/from16 v6, v21

    .line 172
    .restart local v6    # "e":Ljava/lang/Exception;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Exception: downloadAndValidateZipFile():"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 173
    const/16 v21, 0x0

    move-object/from16 v19, v20

    .end local v20    # "zip":Ljava/util/zip/ZipInputStream;
    .restart local v19    # "zip":Ljava/util/zip/ZipInputStream;
    goto/16 :goto_1

    .line 29
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "entry":Ljava/util/zip/ZipEntry;
    .end local v12    # "numFilesInZip":I
    .end local v19    # "zip":Ljava/util/zip/ZipInputStream;
    .restart local v20    # "zip":Ljava/util/zip/ZipInputStream;
    :catch_7
    move-exception v21

    move-object/from16 v6, v21

    move-object/from16 v19, v20

    .end local v20    # "zip":Ljava/util/zip/ZipInputStream;
    .restart local v19    # "zip":Ljava/util/zip/ZipInputStream;
    goto/16 :goto_2
.end method
