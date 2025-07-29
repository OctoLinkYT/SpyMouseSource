.class final Lcom/eamobile/download/ShowBGView$1;
.super Ljava/lang/Object;
.source "ShowBGView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eamobile/download/ShowBGView;->showContent(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eamobile/download/ShowBGView;


# direct methods
.method constructor <init>(Lcom/eamobile/download/ShowBGView;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/eamobile/download/ShowBGView$1;->this$0:Lcom/eamobile/download/ShowBGView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 55
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/eamobile/download/ShowBGView$1;->this$0:Lcom/eamobile/download/ShowBGView;

    iget-boolean v1, v1, Lcom/eamobile/download/ShowBGView;->showBG:Z

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/eamobile/download/ShowBGView$1;->this$0:Lcom/eamobile/download/ShowBGView;

    iget v1, v1, Lcom/eamobile/download/ShowBGView;->count:I

    if-gtz v1, :cond_1

    .line 59
    iget-object v1, p0, Lcom/eamobile/download/ShowBGView$1;->this$0:Lcom/eamobile/download/ShowBGView;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/eamobile/download/ShowBGView;->showBG:Z

    .line 60
    iget-object v1, p0, Lcom/eamobile/download/ShowBGView$1;->this$0:Lcom/eamobile/download/ShowBGView;

    iget-object v1, v1, Lcom/eamobile/download/ShowBGView;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShowBGView bg thread Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 73
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void

    .line 65
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/eamobile/download/ShowBGView$1;->this$0:Lcom/eamobile/download/ShowBGView;

    iget-object v1, v1, Lcom/eamobile/download/ShowBGView;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
