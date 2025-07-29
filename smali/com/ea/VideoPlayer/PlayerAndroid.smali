.class public Lcom/ea/VideoPlayer/PlayerAndroid;
.super Ljava/lang/Object;
.source "PlayerAndroid.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# static fields
.field public static mActivity:Landroid/app/Activity;

.field public static mViewGroup:Landroid/view/ViewGroup;


# instance fields
.field public mLayout:Landroid/widget/RelativeLayout;

.field public mPlayerAndroidHelper:Lcom/ea/VideoPlayer/PlayerAndroidHelper;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public static Shutdown()V
    .locals 0

    .prologue
    .line 40
    invoke-static {}, Lcom/ea/VideoPlayer/PlayerAndroid;->ShutdownNativeImpl()V

    .line 41
    return-void
.end method

.method private static native ShutdownNativeImpl()V
.end method

.method public static Startup(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 33
    sput-object p0, Lcom/ea/VideoPlayer/PlayerAndroid;->mActivity:Landroid/app/Activity;

    .line 34
    sput-object p1, Lcom/ea/VideoPlayer/PlayerAndroid;->mViewGroup:Landroid/view/ViewGroup;

    .line 35
    invoke-static {}, Lcom/ea/VideoPlayer/PlayerAndroid;->StartupNativeImpl()V

    .line 36
    return-void
.end method

.method private static native StartupNativeImpl()V
.end method


# virtual methods
.method public native OnCompletionNativeImpl()V
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 156
    new-instance v0, Lcom/ea/VideoPlayer/PlayerAndroid$3;

    invoke-direct {v0, p0}, Lcom/ea/VideoPlayer/PlayerAndroid$3;-><init>(Lcom/ea/VideoPlayer/PlayerAndroid;)V

    .line 167
    .local v0, "uiThreadRunnable":Ljava/lang/Runnable;
    sget-object v1, Lcom/ea/VideoPlayer/PlayerAndroid;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 168
    return-void
.end method

.method public init(Ljava/lang/String;IIIII)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "uiMode"    # I

    .prologue
    .line 56
    move-object v2, p0

    .line 59
    .local v2, "player":Lcom/ea/VideoPlayer/PlayerAndroid;
    new-instance v0, Lcom/ea/VideoPlayer/PlayerAndroid$1;

    move-object v1, p0

    move-object v3, p1

    move v4, p4

    move v5, p5

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/ea/VideoPlayer/PlayerAndroid$1;-><init>(Lcom/ea/VideoPlayer/PlayerAndroid;Lcom/ea/VideoPlayer/PlayerAndroid;Ljava/lang/String;IIII)V

    .line 109
    .local v0, "uiThreadRunnable":Ljava/lang/Runnable;
    sget-object v1, Lcom/ea/VideoPlayer/PlayerAndroid;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 110
    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/ea/VideoPlayer/PlayerAndroid;->mPlayerAndroidHelper:Lcom/ea/VideoPlayer/PlayerAndroidHelper;

    if-nez v0, :cond_0

    .line 146
    const/4 v0, 0x0

    .line 149
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ea/VideoPlayer/PlayerAndroid;->mPlayerAndroidHelper:Lcom/ea/VideoPlayer/PlayerAndroidHelper;

    invoke-virtual {v0}, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->isPlaying()Z

    move-result v0

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/ea/VideoPlayer/PlayerAndroid;->OnCompletionNativeImpl()V

    .line 173
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/ea/VideoPlayer/PlayerAndroid;->mPlayerAndroidHelper:Lcom/ea/VideoPlayer/PlayerAndroidHelper;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/ea/VideoPlayer/PlayerAndroid;->mPlayerAndroidHelper:Lcom/ea/VideoPlayer/PlayerAndroidHelper;

    invoke-virtual {v0}, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->pause()V

    .line 140
    :cond_0
    return-void
.end method

.method public play()V
    .locals 2

    .prologue
    .line 115
    new-instance v0, Lcom/ea/VideoPlayer/PlayerAndroid$2;

    invoke-direct {v0, p0}, Lcom/ea/VideoPlayer/PlayerAndroid$2;-><init>(Lcom/ea/VideoPlayer/PlayerAndroid;)V

    .line 123
    .local v0, "uiThreadRunnable":Ljava/lang/Runnable;
    sget-object v1, Lcom/ea/VideoPlayer/PlayerAndroid;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 124
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/ea/VideoPlayer/PlayerAndroid;->mPlayerAndroidHelper:Lcom/ea/VideoPlayer/PlayerAndroidHelper;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/ea/VideoPlayer/PlayerAndroid;->mPlayerAndroidHelper:Lcom/ea/VideoPlayer/PlayerAndroidHelper;

    invoke-virtual {v0}, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->stop()V

    .line 132
    :cond_0
    return-void
.end method
