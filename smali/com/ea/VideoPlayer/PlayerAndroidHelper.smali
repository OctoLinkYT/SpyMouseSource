.class public Lcom/ea/VideoPlayer/PlayerAndroidHelper;
.super Landroid/view/SurfaceView;
.source "PlayerAndroidHelper.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field public mAsset:Landroid/content/res/AssetFileDescriptor;

.field public mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field public mMediaPlayer:Landroid/media/MediaPlayer;

.field public mSurfaceHeight:I

.field public mSurfaceHolder:Landroid/view/SurfaceHolder;

.field public mSurfaceWidth:I

.field public mUri:Landroid/net/Uri;

.field public mVideoHeight:I

.field public mVideoWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object v0, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 30
    iput-object v0, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 35
    iput-object v0, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 41
    iput v1, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mVideoWidth:I

    .line 42
    iput v1, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mVideoHeight:I

    .line 43
    invoke-virtual {p0}, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 44
    invoke-virtual {p0}, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 45
    invoke-virtual {p0, v2}, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->setFocusable(Z)V

    .line 46
    invoke-virtual {p0, v2}, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->setFocusableInTouchMode(Z)V

    .line 47
    invoke-virtual {p0}, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->requestFocus()Z

    .line 48
    return-void
.end method

.method private openVideo()V
    .locals 8

    .prologue
    .line 101
    iget-object v0, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mAsset:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_2

    .line 151
    :cond_1
    :goto_0
    return-void

    .line 107
    :cond_2
    invoke-virtual {p0}, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->destroy()V

    .line 111
    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 112
    new-instance v7, Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 115
    .local v7, "fileInputStream":Ljava/io/FileInputStream;
    iget-object v0, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_3

    .line 117
    const-string v0, "PlayerAndroidHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "opening video "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 123
    :cond_3
    iget-object v0, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mAsset:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_4

    .line 127
    iget-object v0, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mAsset:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    iget-object v2, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mAsset:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    iget-object v4, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mAsset:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 130
    :cond_4
    iget-object v0, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 131
    iget-object v0, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 132
    iget-object v0, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 133
    iget-object v0, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 134
    iget-object v0, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 135
    iget-object v0, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 136
    iget-object v0, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 137
    iget-object v0, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 139
    .end local v7    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 141
    .local v6, "e":Ljava/io/IOException;
    iget-object v0, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_5

    .line 143
    const-string v0, "PlayerAndroidHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error opening video "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_5
    iget-object v0, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mAsset:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_1

    .line 148
    const-string v0, "PlayerAndroidHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error opening video "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mAsset:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private setup()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->openVideo()V

    .line 75
    invoke-virtual {p0}, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->requestLayout()V

    .line 76
    invoke-virtual {p0}, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->invalidate()V

    .line 77
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 84
    iget-object v0, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 87
    :cond_0
    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 176
    const-string v0, "VideoPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "what: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   extra: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 165
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mVideoWidth:I

    .line 166
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    iput v0, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mVideoHeight:I

    .line 168
    iget v0, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mVideoWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mVideoHeight:I

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget v1, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mVideoWidth:I

    iget v2, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mVideoHeight:I

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 172
    :cond_0
    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 155
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mVideoWidth:I

    .line 156
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    iput v0, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mVideoHeight:I

    .line 157
    iget v0, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mVideoWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mVideoHeight:I

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget v1, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mVideoWidth:I

    iget v2, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mVideoHeight:I

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 161
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 227
    :cond_0
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .param p1, "completionListener"    # Landroid/media/MediaPlayer$OnCompletionListener;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 70
    return-void
.end method

.method public setVideoAsset(Landroid/content/res/AssetFileDescriptor;)V
    .locals 0
    .param p1, "asset"    # Landroid/content/res/AssetFileDescriptor;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mAsset:Landroid/content/res/AssetFileDescriptor;

    .line 64
    invoke-direct {p0}, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->setup()V

    .line 65
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->setVideoURI(Landroid/net/Uri;)V

    .line 53
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mUri:Landroid/net/Uri;

    .line 58
    invoke-direct {p0}, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->setup()V

    .line 59
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 205
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 213
    iget-object v0, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 214
    iget-object v0, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 216
    :cond_0
    return-void
.end method

.method public stopPlayback()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 94
    iget-object v0, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 97
    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 182
    iput p3, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mSurfaceWidth:I

    .line 183
    iput p4, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mSurfaceHeight:I

    .line 184
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 189
    invoke-direct {p0}, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->openVideo()V

    .line 190
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 196
    invoke-virtual {p0}, Lcom/ea/VideoPlayer/PlayerAndroidHelper;->destroy()V

    .line 197
    return-void
.end method
