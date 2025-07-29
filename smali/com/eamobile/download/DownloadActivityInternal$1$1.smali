.class final Lcom/eamobile/download/DownloadActivityInternal$1$1;
.super Ljava/lang/Object;
.source "DownloadActivityInternal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eamobile/download/DownloadActivityInternal$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/eamobile/download/DownloadActivityInternal$1;


# direct methods
.method constructor <init>(Lcom/eamobile/download/DownloadActivityInternal$1;)V
    .locals 0

    .prologue
    .line 566
    iput-object p1, p0, Lcom/eamobile/download/DownloadActivityInternal$1$1;->this$1:Lcom/eamobile/download/DownloadActivityInternal$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setState: pCurrentView = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eamobile/download/DownloadActivityInternal$1$1;->this$1:Lcom/eamobile/download/DownloadActivityInternal$1;

    iget-object v1, v1, Lcom/eamobile/download/DownloadActivityInternal$1;->this$0:Lcom/eamobile/download/DownloadActivityInternal;

    invoke-static {v1}, Lcom/eamobile/download/DownloadActivityInternal;->access$100(Lcom/eamobile/download/DownloadActivityInternal;)Lcom/eamobile/download/CustomView;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 570
    const-string v0, "setState: before calling pCurrentView.init()"

    invoke-static {v0}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 571
    iget-object v0, p0, Lcom/eamobile/download/DownloadActivityInternal$1$1;->this$1:Lcom/eamobile/download/DownloadActivityInternal$1;

    iget-object v0, v0, Lcom/eamobile/download/DownloadActivityInternal$1;->this$0:Lcom/eamobile/download/DownloadActivityInternal;

    invoke-static {v0}, Lcom/eamobile/download/DownloadActivityInternal;->access$100(Lcom/eamobile/download/DownloadActivityInternal;)Lcom/eamobile/download/CustomView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/eamobile/download/CustomView;->init()V

    .line 572
    const-string v0, "setState: after calling pCurrentView.init()"

    invoke-static {v0}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 573
    invoke-static {}, Lcom/eamobile/download/DownloadActivityInternal;->access$000()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/eamobile/download/DownloadActivityInternal$1$1;->this$1:Lcom/eamobile/download/DownloadActivityInternal$1;

    iget-object v1, v1, Lcom/eamobile/download/DownloadActivityInternal$1;->this$0:Lcom/eamobile/download/DownloadActivityInternal;

    invoke-static {v1}, Lcom/eamobile/download/DownloadActivityInternal;->access$100(Lcom/eamobile/download/DownloadActivityInternal;)Lcom/eamobile/download/CustomView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 574
    const-string v0, "setState: after calling setContentView"

    invoke-static {v0}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 575
    return-void
.end method
