.class public Lcom/eamobile/download/RandomAccessFileReadThread;
.super Ljava/lang/Thread;
.source "RandomAccessFileReadThread.java"


# instance fields
.field private buffer:[B

.field public currentFileSize:I

.field private file:Ljava/io/RandomAccessFile;

.field private in:Ljava/io/InputStream;

.field public killMe:Z

.field public reading:Z

.field public sizeDownloaded:I

.field public timestamp:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/RandomAccessFile;)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "file"    # Ljava/io/RandomAccessFile;

    .prologue
    const/4 v2, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 9
    iput-boolean v2, p0, Lcom/eamobile/download/RandomAccessFileReadThread;->killMe:Z

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/eamobile/download/RandomAccessFileReadThread;->timestamp:J

    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/eamobile/download/RandomAccessFileReadThread;->reading:Z

    .line 14
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/eamobile/download/RandomAccessFileReadThread;->buffer:[B

    .line 15
    iput v2, p0, Lcom/eamobile/download/RandomAccessFileReadThread;->sizeDownloaded:I

    .line 16
    iput v2, p0, Lcom/eamobile/download/RandomAccessFileReadThread;->currentFileSize:I

    .line 20
    iput-object p1, p0, Lcom/eamobile/download/RandomAccessFileReadThread;->in:Ljava/io/InputStream;

    .line 21
    iput-object p2, p0, Lcom/eamobile/download/RandomAccessFileReadThread;->file:Ljava/io/RandomAccessFile;

    .line 22
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 28
    const/4 v1, 0x0

    .line 29
    .local v1, "len":I
    :cond_0
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 32
    if-eqz v1, :cond_1

    .line 34
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/eamobile/download/RandomAccessFileReadThread;->timestamp:J

    .line 38
    :cond_1
    iget-object v2, p0, Lcom/eamobile/download/RandomAccessFileReadThread;->in:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/eamobile/download/RandomAccessFileReadThread;->buffer:[B

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 41
    iget-boolean v2, p0, Lcom/eamobile/download/RandomAccessFileReadThread;->killMe:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_3

    .line 66
    :cond_2
    :goto_1
    iput-boolean v5, p0, Lcom/eamobile/download/RandomAccessFileReadThread;->reading:Z

    .line 67
    return-void

    .line 46
    :cond_3
    if-nez v1, :cond_4

    .line 48
    :try_start_1
    const-string v2, "0 BYTES READ>>>"

    invoke-static {v2}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 63
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem in RandomAccessFileReadThread:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    goto :goto_1

    .line 50
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    if-lez v1, :cond_0

    .line 52
    :try_start_2
    iget-object v2, p0, Lcom/eamobile/download/RandomAccessFileReadThread;->file:Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcom/eamobile/download/RandomAccessFileReadThread;->buffer:[B

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 53
    iget v2, p0, Lcom/eamobile/download/RandomAccessFileReadThread;->sizeDownloaded:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/eamobile/download/RandomAccessFileReadThread;->sizeDownloaded:I

    .line 55
    iget-object v2, p0, Lcom/eamobile/download/RandomAccessFileReadThread;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    long-to-int v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/eamobile/download/RandomAccessFileReadThread;->currentFileSize:I

    .line 56
    iget v2, p0, Lcom/eamobile/download/RandomAccessFileReadThread;->currentFileSize:I

    if-gez v2, :cond_0

    .line 57
    const/4 v2, 0x0

    iput v2, p0, Lcom/eamobile/download/RandomAccessFileReadThread;->currentFileSize:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method
