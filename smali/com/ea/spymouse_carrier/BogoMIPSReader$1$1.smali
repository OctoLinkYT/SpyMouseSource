.class Lcom/ea/spymouse_carrier/BogoMIPSReader$1$1;
.super Ljava/lang/Object;
.source "BogoMIPSReader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/spymouse_carrier/BogoMIPSReader$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/spymouse_carrier/BogoMIPSReader$1;

.field final synthetic val$f:F


# direct methods
.method constructor <init>(Lcom/ea/spymouse_carrier/BogoMIPSReader$1;F)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/ea/spymouse_carrier/BogoMIPSReader$1$1;->this$0:Lcom/ea/spymouse_carrier/BogoMIPSReader$1;

    iput p2, p0, Lcom/ea/spymouse_carrier/BogoMIPSReader$1$1;->val$f:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/ea/spymouse_carrier/BogoMIPSReader$1$1;->val$f:F

    invoke-static {v0}, Lcom/ea/spymouse_carrier/BogoMIPSReader;->access$000(F)V

    .line 36
    return-void
.end method
