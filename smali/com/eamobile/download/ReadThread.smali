.class Lcom/eamobile/download/ReadThread;
.super Ljava/lang/Thread;
.source "ZipExtractor.java"


# instance fields
.field private buffer:[B

.field private in:Ljava/io/InputStream;

.field public killMe:Z

.field private out:Ljava/io/OutputStream;

.field public reading:Z

.field public sizeDownloaded:I

.field public timestamp:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;

    .prologue
    const/4 v2, 0x0

    .line 189
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 180
    iput-boolean v2, p0, Lcom/eamobile/download/ReadThread;->killMe:Z

    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/eamobile/download/ReadThread;->timestamp:J

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/eamobile/download/ReadThread;->reading:Z

    .line 185
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/eamobile/download/ReadThread;->buffer:[B

    .line 186
    iput v2, p0, Lcom/eamobile/download/ReadThread;->sizeDownloaded:I

    .line 190
    iput-object p1, p0, Lcom/eamobile/download/ReadThread;->in:Ljava/io/InputStream;

    .line 191
    iput-object p2, p0, Lcom/eamobile/download/ReadThread;->out:Ljava/io/OutputStream;

    .line 192
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 198
    const/4 v1, 0x0

    .line 199
    .local v1, "len":I
    :cond_0
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 202
    if-eqz v1, :cond_1

    .line 204
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/eamobile/download/ReadThread;->timestamp:J

    .line 208
    :cond_1
    iget-object v2, p0, Lcom/eamobile/download/ReadThread;->in:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/eamobile/download/ReadThread;->buffer:[B

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 211
    iget-boolean v2, p0, Lcom/eamobile/download/ReadThread;->killMe:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_3

    .line 231
    :cond_2
    :goto_1
    iput-boolean v5, p0, Lcom/eamobile/download/ReadThread;->reading:Z

    .line 232
    return-void

    .line 216
    :cond_3
    if-nez v1, :cond_4

    .line 218
    :try_start_1
    const-string v2, "0 BYTES READ>>>"

    invoke-static {v2}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 227
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 229
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem in ReadThread:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    goto :goto_1

    .line 220
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    if-lez v1, :cond_0

    .line 222
    :try_start_2
    iget-object v2, p0, Lcom/eamobile/download/ReadThread;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Lcom/eamobile/download/ReadThread;->buffer:[B

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 223
    iget v2, p0, Lcom/eamobile/download/ReadThread;->sizeDownloaded:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/eamobile/download/ReadThread;->sizeDownloaded:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method
