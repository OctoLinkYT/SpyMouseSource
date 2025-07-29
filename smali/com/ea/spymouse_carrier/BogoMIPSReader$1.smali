.class final Lcom/ea/spymouse_carrier/BogoMIPSReader$1;
.super Ljava/lang/Object;
.source "BogoMIPSReader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/spymouse_carrier/BogoMIPSReader;->readBogoMIPS()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 9
    iput-object p1, p0, Lcom/ea/spymouse_carrier/BogoMIPSReader$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 13
    const/4 v10, 0x2

    :try_start_0
    new-array v0, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "/system/bin/cat"

    aput-object v11, v0, v10

    const/4 v10, 0x1

    const-string v11, "/proc/cpuinfo"

    aput-object v11, v0, v10

    .line 14
    .local v0, "args":[Ljava/lang/String;
    new-instance v7, Ljava/lang/ProcessBuilder;

    invoke-direct {v7, v0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 16
    .local v7, "pb":Ljava/lang/ProcessBuilder;
    invoke-virtual {v7}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v8

    .line 17
    .local v8, "process":Ljava/lang/Process;
    invoke-virtual {v8}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 18
    .local v5, "in":Ljava/io/InputStream;
    const/16 v10, 0x400

    new-array v2, v10, [B

    .line 19
    .local v2, "data":[B
    const/4 v6, -0x1

    .line 20
    .local v6, "len":I
    invoke-virtual {v5, v2}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .line 22
    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v9, v2, v10, v6}, Ljava/lang/String;-><init>([BII)V

    .line 24
    .local v9, "s":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/Process;->destroy()V

    .line 26
    const-string v10, "BogoMIPS"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 27
    .local v1, "bogoMipsString":Ljava/lang/String;
    const-string v10, ": "

    invoke-virtual {v1, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v10, v10, 0x2

    invoke-virtual {v1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 28
    const/4 v10, 0x0

    const-string v11, "\n"

    invoke-virtual {v1, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v1, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 30
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 32
    .local v4, "f":F
    iget-object v10, p0, Lcom/ea/spymouse_carrier/BogoMIPSReader$1;->val$handler:Landroid/os/Handler;

    new-instance v11, Lcom/ea/spymouse_carrier/BogoMIPSReader$1$1;

    invoke-direct {v11, p0, v4}, Lcom/ea/spymouse_carrier/BogoMIPSReader$1$1;-><init>(Lcom/ea/spymouse_carrier/BogoMIPSReader$1;F)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .end local v0    # "args":[Ljava/lang/String;
    .end local v1    # "bogoMipsString":Ljava/lang/String;
    .end local v2    # "data":[B
    .end local v4    # "f":F
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v6    # "len":I
    .end local v7    # "pb":Ljava/lang/ProcessBuilder;
    .end local v8    # "process":Ljava/lang/Process;
    .end local v9    # "s":Ljava/lang/String;
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v10

    move-object v3, v10

    .line 39
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
