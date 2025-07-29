.class Lcom/ea/spymouse_na/SpyMouseActivity$1;
.super Ljava/lang/Object;
.source "SpyMouseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/spymouse_na/SpyMouseActivity;->onResult(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/spymouse_na/SpyMouseActivity;


# direct methods
.method constructor <init>(Lcom/ea/spymouse_na/SpyMouseActivity;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/ea/spymouse_na/SpyMouseActivity$1;->this$0:Lcom/ea/spymouse_na/SpyMouseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/ea/spymouse_na/SpyMouseActivity$1;->this$0:Lcom/ea/spymouse_na/SpyMouseActivity;

    iget-object v1, v1, Lcom/ea/spymouse_na/SpyMouseActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 103
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/ea/spymouse_na/SpyMouseActivity$1;->this$0:Lcom/ea/spymouse_na/SpyMouseActivity;

    iget-object v1, v1, Lcom/ea/spymouse_na/SpyMouseActivity;->mGLView:Lcom/ea/blast/MainView;

    invoke-virtual {v1}, Lcom/ea/blast/MainView;->requestFocus()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 108
    :goto_1
    iget-object v1, p0, Lcom/ea/spymouse_na/SpyMouseActivity$1;->this$0:Lcom/ea/spymouse_na/SpyMouseActivity;

    iget-object v1, v1, Lcom/ea/spymouse_na/SpyMouseActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/ea/spymouse_na/SpyMouseActivity$1;->this$0:Lcom/ea/spymouse_na/SpyMouseActivity;

    iget-object v2, v2, Lcom/ea/spymouse_na/SpyMouseActivity;->mGLView:Lcom/ea/blast/MainView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 109
    iget-object v1, p0, Lcom/ea/spymouse_na/SpyMouseActivity$1;->this$0:Lcom/ea/spymouse_na/SpyMouseActivity;

    iget-object v2, p0, Lcom/ea/spymouse_na/SpyMouseActivity$1;->this$0:Lcom/ea/spymouse_na/SpyMouseActivity;

    iget-object v2, v2, Lcom/ea/spymouse_na/SpyMouseActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Lcom/ea/spymouse_na/SpyMouseActivity;->setContentView(Landroid/view/View;)V

    .line 111
    new-instance v0, Lcom/ea/spymouse_na/SpyMouseActivity$1$1;

    invoke-direct {v0, p0}, Lcom/ea/spymouse_na/SpyMouseActivity$1$1;-><init>(Lcom/ea/spymouse_na/SpyMouseActivity$1;)V

    .line 119
    .local v0, "releaseDisplay":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/ea/spymouse_na/SpyMouseActivity$1;->this$0:Lcom/ea/spymouse_na/SpyMouseActivity;

    iget-object v1, v1, Lcom/ea/spymouse_na/SpyMouseActivity;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x14

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 120
    return-void

    .line 105
    .end local v0    # "releaseDisplay":Ljava/lang/Runnable;
    :catch_0
    move-exception v1

    goto :goto_1

    .line 97
    :catch_1
    move-exception v1

    goto :goto_0
.end method
