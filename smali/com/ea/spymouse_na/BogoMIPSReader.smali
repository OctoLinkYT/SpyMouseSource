.class public Lcom/ea/spymouse_na/BogoMIPSReader;
.super Ljava/lang/Object;
.source "BogoMIPSReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(F)V
    .locals 0
    .param p0, "x0"    # F

    .prologue
    .line 6
    invoke-static {p0}, Lcom/ea/spymouse_na/BogoMIPSReader;->passBogoMIPS(F)V

    return-void
.end method

.method private static native passBogoMIPS(F)V
.end method

.method public static readBogoMIPS()V
    .locals 3

    .prologue
    .line 8
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 9
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/ea/spymouse_na/BogoMIPSReader$1;

    invoke-direct {v2, v0}, Lcom/ea/spymouse_na/BogoMIPSReader$1;-><init>(Landroid/os/Handler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 43
    return-void
.end method
