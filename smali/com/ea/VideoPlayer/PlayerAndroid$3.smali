.class Lcom/ea/VideoPlayer/PlayerAndroid$3;
.super Ljava/lang/Object;
.source "PlayerAndroid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/VideoPlayer/PlayerAndroid;->destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/VideoPlayer/PlayerAndroid;


# direct methods
.method constructor <init>(Lcom/ea/VideoPlayer/PlayerAndroid;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/ea/VideoPlayer/PlayerAndroid$3;->this$0:Lcom/ea/VideoPlayer/PlayerAndroid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/ea/VideoPlayer/PlayerAndroid$3;->this$0:Lcom/ea/VideoPlayer/PlayerAndroid;

    iget-object v0, v0, Lcom/ea/VideoPlayer/PlayerAndroid;->mPlayerAndroidHelper:Lcom/ea/VideoPlayer/PlayerAndroidHelper;

    invoke-virtual {v0}, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->destroy()V

    .line 161
    iget-object v0, p0, Lcom/ea/VideoPlayer/PlayerAndroid$3;->this$0:Lcom/ea/VideoPlayer/PlayerAndroid;

    iget-object v0, v0, Lcom/ea/VideoPlayer/PlayerAndroid;->mLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/ea/VideoPlayer/PlayerAndroid$3;->this$0:Lcom/ea/VideoPlayer/PlayerAndroid;

    iget-object v1, v1, Lcom/ea/VideoPlayer/PlayerAndroid;->mPlayerAndroidHelper:Lcom/ea/VideoPlayer/PlayerAndroidHelper;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 162
    sget-object v0, Lcom/ea/VideoPlayer/PlayerAndroid;->mViewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/ea/VideoPlayer/PlayerAndroid$3;->this$0:Lcom/ea/VideoPlayer/PlayerAndroid;

    iget-object v1, v1, Lcom/ea/VideoPlayer/PlayerAndroid;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 163
    iget-object v0, p0, Lcom/ea/VideoPlayer/PlayerAndroid$3;->this$0:Lcom/ea/VideoPlayer/PlayerAndroid;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/ea/VideoPlayer/PlayerAndroid;->mLayout:Landroid/widget/RelativeLayout;

    .line 164
    return-void
.end method
