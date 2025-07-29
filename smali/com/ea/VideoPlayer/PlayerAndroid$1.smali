.class Lcom/ea/VideoPlayer/PlayerAndroid$1;
.super Ljava/lang/Object;
.source "PlayerAndroid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ea/VideoPlayer/PlayerAndroid;->init(Ljava/lang/String;IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ea/VideoPlayer/PlayerAndroid;

.field final synthetic val$height:I

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$player:Lcom/ea/VideoPlayer/PlayerAndroid;

.field final synthetic val$width:I

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/ea/VideoPlayer/PlayerAndroid;Lcom/ea/VideoPlayer/PlayerAndroid;Ljava/lang/String;IIII)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/ea/VideoPlayer/PlayerAndroid$1;->this$0:Lcom/ea/VideoPlayer/PlayerAndroid;

    iput-object p2, p0, Lcom/ea/VideoPlayer/PlayerAndroid$1;->val$player:Lcom/ea/VideoPlayer/PlayerAndroid;

    iput-object p3, p0, Lcom/ea/VideoPlayer/PlayerAndroid$1;->val$path:Ljava/lang/String;

    iput p4, p0, Lcom/ea/VideoPlayer/PlayerAndroid$1;->val$width:I

    iput p5, p0, Lcom/ea/VideoPlayer/PlayerAndroid$1;->val$height:I

    iput p6, p0, Lcom/ea/VideoPlayer/PlayerAndroid$1;->val$x:I

    iput p7, p0, Lcom/ea/VideoPlayer/PlayerAndroid$1;->val$y:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 65
    iget-object v5, p0, Lcom/ea/VideoPlayer/PlayerAndroid$1;->this$0:Lcom/ea/VideoPlayer/PlayerAndroid;

    new-instance v6, Landroid/widget/RelativeLayout;

    sget-object v7, Lcom/ea/VideoPlayer/PlayerAndroid;->mActivity:Landroid/app/Activity;

    invoke-direct {v6, v7}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, v5, Lcom/ea/VideoPlayer/PlayerAndroid;->mLayout:Landroid/widget/RelativeLayout;

    .line 66
    sget-object v5, Lcom/ea/VideoPlayer/PlayerAndroid;->mViewGroup:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/ea/VideoPlayer/PlayerAndroid$1;->this$0:Lcom/ea/VideoPlayer/PlayerAndroid;

    iget-object v6, v6, Lcom/ea/VideoPlayer/PlayerAndroid;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 69
    iget-object v5, p0, Lcom/ea/VideoPlayer/PlayerAndroid$1;->this$0:Lcom/ea/VideoPlayer/PlayerAndroid;

    new-instance v6, Lcom/ea/VideoPlayer/PlayerAndroidHelper;

    sget-object v7, Lcom/ea/VideoPlayer/PlayerAndroid;->mActivity:Landroid/app/Activity;

    invoke-direct {v6, v7}, Lcom/ea/VideoPlayer/PlayerAndroidHelper;-><init>(Landroid/content/Context;)V

    iput-object v6, v5, Lcom/ea/VideoPlayer/PlayerAndroid;->mPlayerAndroidHelper:Lcom/ea/VideoPlayer/PlayerAndroidHelper;

    .line 70
    iget-object v5, p0, Lcom/ea/VideoPlayer/PlayerAndroid$1;->this$0:Lcom/ea/VideoPlayer/PlayerAndroid;

    iget-object v5, v5, Lcom/ea/VideoPlayer/PlayerAndroid;->mPlayerAndroidHelper:Lcom/ea/VideoPlayer/PlayerAndroidHelper;

    iget-object v6, p0, Lcom/ea/VideoPlayer/PlayerAndroid$1;->val$player:Lcom/ea/VideoPlayer/PlayerAndroid;

    invoke-virtual {v5, v6}, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 71
    iget-object v5, p0, Lcom/ea/VideoPlayer/PlayerAndroid$1;->this$0:Lcom/ea/VideoPlayer/PlayerAndroid;

    iget-object v5, v5, Lcom/ea/VideoPlayer/PlayerAndroid;->mPlayerAndroidHelper:Lcom/ea/VideoPlayer/PlayerAndroidHelper;

    invoke-virtual {v5}, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->requestFocus()Z

    .line 72
    iget-object v5, p0, Lcom/ea/VideoPlayer/PlayerAndroid$1;->this$0:Lcom/ea/VideoPlayer/PlayerAndroid;

    iget-object v5, v5, Lcom/ea/VideoPlayer/PlayerAndroid;->mPlayerAndroidHelper:Lcom/ea/VideoPlayer/PlayerAndroidHelper;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->setZOrderOnTop(Z)V

    .line 76
    iget-object v0, p0, Lcom/ea/VideoPlayer/PlayerAndroid$1;->val$path:Ljava/lang/String;

    .line 78
    .local v0, "actualPath":Ljava/lang/String;
    const-string v5, "appbundle:/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 80
    const/16 v5, 0xb

    iget-object v6, p0, Lcom/ea/VideoPlayer/PlayerAndroid$1;->val$path:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 82
    const/4 v1, 0x0

    .line 86
    .local v1, "asset":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    sget-object v5, Lcom/ea/VideoPlayer/PlayerAndroid;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    .line 87
    .local v4, "mgr":Landroid/content/res/AssetManager;
    invoke-virtual {v4, v0}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 95
    iget-object v5, p0, Lcom/ea/VideoPlayer/PlayerAndroid$1;->this$0:Lcom/ea/VideoPlayer/PlayerAndroid;

    iget-object v5, v5, Lcom/ea/VideoPlayer/PlayerAndroid;->mPlayerAndroidHelper:Lcom/ea/VideoPlayer/PlayerAndroidHelper;

    invoke-virtual {v5, v1}, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->setVideoAsset(Landroid/content/res/AssetFileDescriptor;)V

    .line 102
    .end local v1    # "asset":Landroid/content/res/AssetFileDescriptor;
    .end local v4    # "mgr":Landroid/content/res/AssetManager;
    :goto_0
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, p0, Lcom/ea/VideoPlayer/PlayerAndroid$1;->val$width:I

    iget v6, p0, Lcom/ea/VideoPlayer/PlayerAndroid$1;->val$height:I

    invoke-direct {v3, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 103
    .local v3, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget v5, p0, Lcom/ea/VideoPlayer/PlayerAndroid$1;->val$x:I

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 104
    iget v5, p0, Lcom/ea/VideoPlayer/PlayerAndroid$1;->val$y:I

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 105
    iget-object v5, p0, Lcom/ea/VideoPlayer/PlayerAndroid$1;->this$0:Lcom/ea/VideoPlayer/PlayerAndroid;

    iget-object v5, v5, Lcom/ea/VideoPlayer/PlayerAndroid;->mLayout:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/ea/VideoPlayer/PlayerAndroid$1;->this$0:Lcom/ea/VideoPlayer/PlayerAndroid;

    iget-object v6, v6, Lcom/ea/VideoPlayer/PlayerAndroid;->mPlayerAndroidHelper:Lcom/ea/VideoPlayer/PlayerAndroidHelper;

    invoke-virtual {v5, v6, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    .end local v3    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_1
    return-void

    .line 89
    .restart local v1    # "asset":Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 91
    .local v2, "e":Ljava/io/IOException;
    const-string v5, "VideoPlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "asset == null: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 99
    .end local v1    # "asset":Landroid/content/res/AssetFileDescriptor;
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    iget-object v5, p0, Lcom/ea/VideoPlayer/PlayerAndroid$1;->this$0:Lcom/ea/VideoPlayer/PlayerAndroid;

    iget-object v5, v5, Lcom/ea/VideoPlayer/PlayerAndroid;->mPlayerAndroidHelper:Lcom/ea/VideoPlayer/PlayerAndroidHelper;

    iget-object v6, p0, Lcom/ea/VideoPlayer/PlayerAndroid$1;->val$path:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->setVideoPath(Ljava/lang/String;)V

    goto :goto_0
.end method
