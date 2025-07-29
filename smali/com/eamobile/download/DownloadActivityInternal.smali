.class public Lcom/eamobile/download/DownloadActivityInternal;
.super Ljava/lang/Object;
.source "DownloadActivityInternal.java"


# static fields
.field static CUSTOM_PROGRESS_BAR:Z = false

.field static final DOWNLOAD_FINISHED:Ljava/lang/String; = "Downloaded.indicate"

.field static DOWNLOAD_URL:Ljava/lang/String; = null

.field static final DOWNLOAD_URL_CONFIG_FILE:Ljava/lang/String; = "DownloadURL.indicate"

.field static final INDICATE_FINIHSED:Ljava/lang/String; = "COMPLETE"

.field static final INDICATE_PROGRESS:Ljava/lang/String; = "PROGRESS"

.field static MASTER_SELL_ID:I = 0x0

.field static PRODUCT_ID:I = 0x0

.field protected static final RESOURCES_PATH:Ljava/lang/String; = "downloadcontent/"

.field static final STATE_3G_UNAVAILABLE:I = 0x7

.field static final STATE_BG_VIEW:I = 0xb

.field static final STATE_CHECK_UPDATES:I = 0x8

.field static final STATE_DOWNLOADING_ASSETS:I = 0x2

.field static final STATE_FAILURE:I = 0x5

.field static final STATE_INVALID:I = -0x1

.field static final STATE_SHOW_3G_DIALOG:I = 0xa

.field static final STATE_SHOW_DOWNLOAD_MSG:I = 0x1

.field static final STATE_SHOW_WIFI_DIALOG:I = 0x6

.field static final STATE_SPACE_UNAVAILABLE:I = 0x4

.field private static STATE_STRINGS:[Ljava/lang/String; = null

.field static final STATE_SUCCESS:I = 0x3

.field static final STATE_UNSUPPORTED_DEVICE:I = 0xc

.field static final STATE_UPDATES_FOUND:I = 0x9

.field static TIMEOUT:I = 0x0

.field static TOTAL_SPACE_MB:I = 0x0

.field static UNCOMPRESS_ZIP_ON_DEVICE:Z = false

.field private static final UNSUPPORTED_DEVICE_ERROR:I = 0x1389

.field private static bLoaded:Z

.field protected static downloadProgress:Lcom/eamobile/download/DownloadProgress;

.field private static instance:Landroid/app/Activity;

.field protected static language:Lcom/eamobile/download/Language;

.field static mMainActivity:Lcom/eamobile/download/DownloadActivityInternal;

.field private static pState:I

.field private static pStatePrev:I

.field public static totalDownloadSizeMB:I


# instance fields
.field bgFileName:Ljava/lang/String;

.field bmpBg:Landroid/graphics/Bitmap;

.field private checkUpadatesView:Lcom/eamobile/download/CheckUpdatesView;

.field private downloadFailedView:Lcom/eamobile/download/DownloadFailedView;

.field private downloadMsgView:Lcom/eamobile/download/DownloadMsgView;

.field private downloadProgressView:Lcom/eamobile/download/DownloadProgressView;

.field glExtensions:Ljava/lang/String;

.field private mAssetPath:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mDownloadActivity:Lcom/eamobile/download/IDownloadActivity;

.field mHandler:Landroid/os/Handler;

.field private mLocale:Ljava/lang/String;

.field private networkUnavailableView:Lcom/eamobile/download/NetworkUnavailableView;

.field private pCurrentView:Lcom/eamobile/download/CustomView;

.field protected percent_downloaded:I

.field private show3GView:Lcom/eamobile/download/Show3GView;

.field private showBGView:Lcom/eamobile/download/ShowBGView;

.field private showWifiView:Lcom/eamobile/download/ShowWifiView;

.field private spaceUnavailableView:Lcom/eamobile/download/SpaceUnavailableView;

.field private unSupportedDeviceView:Lcom/eamobile/download/UnSupportedDeviceView;

.field private updatesFoundView:Lcom/eamobile/download/UpdatesFoundView;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 56
    sput-boolean v3, Lcom/eamobile/download/DownloadActivityInternal;->bLoaded:Z

    .line 87
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "STATE_SHOW_DOWNLOAD_MSG"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "STATE_DOWNLOADING_ASSETS"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "STATE_SUCCESS"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "STATE_SPACE_UNAVAILABLE"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "STATE_FAILURE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "STATE_SHOW_WIFI_DIALOG"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "STATE_3G_UNAVAILABLE"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "STATE_CHECK_UPDATES"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "STATE_UPDATES_FOUND"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "STATE_SHOW_3G_DIALOG"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "STATE_BG_VIEW"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "STATE_UNSUPPORTED_DEVICE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/eamobile/download/DownloadActivityInternal;->STATE_STRINGS:[Ljava/lang/String;

    .line 109
    sput-object v5, Lcom/eamobile/download/DownloadActivityInternal;->DOWNLOAD_URL:Ljava/lang/String;

    .line 110
    sput v3, Lcom/eamobile/download/DownloadActivityInternal;->MASTER_SELL_ID:I

    .line 111
    sput v3, Lcom/eamobile/download/DownloadActivityInternal;->TOTAL_SPACE_MB:I

    .line 112
    sput v3, Lcom/eamobile/download/DownloadActivityInternal;->PRODUCT_ID:I

    .line 113
    const/16 v0, 0x2710

    sput v0, Lcom/eamobile/download/DownloadActivityInternal;->TIMEOUT:I

    .line 114
    sput-boolean v3, Lcom/eamobile/download/DownloadActivityInternal;->UNCOMPRESS_ZIP_ON_DEVICE:Z

    .line 115
    sput-boolean v3, Lcom/eamobile/download/DownloadActivityInternal;->CUSTOM_PROGRESS_BAR:Z

    .line 117
    sput v4, Lcom/eamobile/download/DownloadActivityInternal;->pState:I

    .line 118
    sput v4, Lcom/eamobile/download/DownloadActivityInternal;->pStatePrev:I

    .line 120
    sput v3, Lcom/eamobile/download/DownloadActivityInternal;->totalDownloadSizeMB:I

    .line 133
    sput-object v5, Lcom/eamobile/download/DownloadActivityInternal;->mMainActivity:Lcom/eamobile/download/DownloadActivityInternal;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/eamobile/download/IDownloadActivity;Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "downloadActivity"    # Lcom/eamobile/download/IDownloadActivity;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "glContext"    # Ljava/lang/Object;
    .param p5, "assetPath"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const-string v0, "en"

    iput-object v0, p0, Lcom/eamobile/download/DownloadActivityInternal;->mLocale:Ljava/lang/String;

    .line 126
    iput v2, p0, Lcom/eamobile/download/DownloadActivityInternal;->percent_downloaded:I

    .line 130
    iput-object v1, p0, Lcom/eamobile/download/DownloadActivityInternal;->mDownloadActivity:Lcom/eamobile/download/IDownloadActivity;

    .line 135
    iput-object v1, p0, Lcom/eamobile/download/DownloadActivityInternal;->glExtensions:Ljava/lang/String;

    .line 136
    iput-object v1, p0, Lcom/eamobile/download/DownloadActivityInternal;->bmpBg:Landroid/graphics/Bitmap;

    .line 300
    invoke-static {}, Lcom/eamobile/download/Logging;->DEBUG_INIT()V

    .line 301
    iput-object p3, p0, Lcom/eamobile/download/DownloadActivityInternal;->mContext:Landroid/content/Context;

    .line 304
    invoke-virtual {p0, p5, v2}, Lcom/eamobile/download/DownloadActivityInternal;->setAssetPath(Ljava/lang/String;Z)V

    .line 306
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/eamobile/download/DownloadActivityInternal;->init(Landroid/app/Activity;Lcom/eamobile/download/IDownloadActivity;Landroid/content/Context;Ljava/lang/Object;)V

    .line 307
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 163
    const-string v0, "title.png"

    invoke-direct {p0, p1, v0}, Lcom/eamobile/download/DownloadActivityInternal;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const-string v0, "en"

    iput-object v0, p0, Lcom/eamobile/download/DownloadActivityInternal;->mLocale:Ljava/lang/String;

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Lcom/eamobile/download/DownloadActivityInternal;->percent_downloaded:I

    .line 130
    iput-object v1, p0, Lcom/eamobile/download/DownloadActivityInternal;->mDownloadActivity:Lcom/eamobile/download/IDownloadActivity;

    .line 135
    iput-object v1, p0, Lcom/eamobile/download/DownloadActivityInternal;->glExtensions:Ljava/lang/String;

    .line 136
    iput-object v1, p0, Lcom/eamobile/download/DownloadActivityInternal;->bmpBg:Landroid/graphics/Bitmap;

    .line 169
    invoke-static {}, Lcom/eamobile/download/Logging;->DEBUG_INIT()V

    .line 170
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/eamobile/download/DownloadActivityInternal;->mHandler:Landroid/os/Handler;

    .line 172
    sget-object v0, Lcom/eamobile/download/DownloadActivityInternal;->mMainActivity:Lcom/eamobile/download/DownloadActivityInternal;

    if-nez v0, :cond_0

    .line 174
    sput-object p0, Lcom/eamobile/download/DownloadActivityInternal;->mMainActivity:Lcom/eamobile/download/DownloadActivityInternal;

    .line 177
    :cond_0
    iput-object p1, p0, Lcom/eamobile/download/DownloadActivityInternal;->mContext:Landroid/content/Context;

    .line 178
    iput-object p2, p0, Lcom/eamobile/download/DownloadActivityInternal;->bgFileName:Ljava/lang/String;

    .line 179
    const-string v0, "DownloadActivityInternal.init()"

    invoke-static {v0}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0, p1}, Lcom/eamobile/download/DownloadActivityInternal;->initScreens(Landroid/content/Context;)V

    .line 182
    return-void
.end method

.method static synthetic access$000()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/eamobile/download/DownloadActivityInternal;->instance:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/eamobile/download/DownloadActivityInternal;)Lcom/eamobile/download/CustomView;
    .locals 1
    .param p0, "x0"    # Lcom/eamobile/download/DownloadActivityInternal;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/eamobile/download/DownloadActivityInternal;->pCurrentView:Lcom/eamobile/download/CustomView;

    return-object v0
.end method

.method private assetsFoundLocally()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 797
    new-instance v0, Ljava/io/File;

    iget-object v7, p0, Lcom/eamobile/download/DownloadActivityInternal;->mAssetPath:Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 798
    .local v0, "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 799
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 802
    :cond_0
    :try_start_0
    const-string v7, "Downloaded.indicate"

    invoke-direct {p0, v7}, Lcom/eamobile/download/DownloadActivityInternal;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 803
    .local v4, "path":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 804
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 806
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 v8, 0x2000

    invoke-direct {v5, v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 807
    .local v5, "reader":Ljava/io/BufferedReader;
    const-string v3, ""

    .line 808
    .local v3, "line":Ljava/lang/String;
    const-string v6, ""

    .line 809
    .local v6, "text":Ljava/lang/String;
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 811
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 813
    :cond_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 814
    const-string v7, "COMPLETE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_2

    .line 815
    const/4 v7, 0x1

    .line 821
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "text":Ljava/lang/String;
    :goto_1
    return v7

    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v4    # "path":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "text":Ljava/lang/String;
    :cond_2
    move v7, v9

    .line 816
    goto :goto_1

    .line 818
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "text":Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v1, v7

    .local v1, "e":Ljava/lang/Exception;
    move v7, v9

    .line 819
    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "path":Ljava/lang/String;
    :cond_3
    move v7, v9

    .line 821
    goto :goto_1
.end method

.method private checkBackgroundImage()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 365
    const-string v3, "Calling: DownloadActivityInternal checkBackgroundImage()"

    invoke-static {v3}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 367
    iget-object v3, p0, Lcom/eamobile/download/DownloadActivityInternal;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_1

    .line 369
    iget-object v3, p0, Lcom/eamobile/download/DownloadActivityInternal;->bmpBg:Landroid/graphics/Bitmap;

    if-nez v3, :cond_1

    .line 372
    :try_start_0
    iget-object v3, p0, Lcom/eamobile/download/DownloadActivityInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "downloadcontent/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/eamobile/download/DownloadActivityInternal;->bgFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 373
    .local v1, "is":Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 374
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 375
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    const/16 v3, 0x1000

    new-array v3, v3, [B

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 376
    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/eamobile/download/DownloadActivityInternal;->bmpBg:Landroid/graphics/Bitmap;

    .line 377
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 378
    const/4 v1, 0x0

    .line 380
    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    const-string v3, "\tCreating background image"

    invoke-static {v3}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_1
    :goto_0
    return-void

    .line 381
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 382
    .local v0, "e":Ljava/io/IOException;
    iput-object v6, p0, Lcom/eamobile/download/DownloadActivityInternal;->bmpBg:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private checkLanguageChange()V
    .locals 3

    .prologue
    .line 390
    const-string v1, "Calling: DownloadActivityInternal checkLanguageChange()"

    invoke-static {v1}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 393
    iget-object v1, p0, Lcom/eamobile/download/DownloadActivityInternal;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 395
    iget-object v1, p0, Lcom/eamobile/download/DownloadActivityInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/eamobile/download/DownloadActivityInternal;->mLocale:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    new-instance v1, Lcom/eamobile/download/Language;

    invoke-direct {v1}, Lcom/eamobile/download/Language;-><init>()V

    sput-object v1, Lcom/eamobile/download/DownloadActivityInternal;->language:Lcom/eamobile/download/Language;

    .line 402
    iget-object v1, p0, Lcom/eamobile/download/DownloadActivityInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eamobile/download/DownloadActivityInternal;->mLocale:Ljava/lang/String;

    .line 404
    iget-object v1, p0, Lcom/eamobile/download/DownloadActivityInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 406
    .local v0, "deviceLanguage":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\tLocale: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/eamobile/download/DownloadActivityInternal;->mLocale:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 407
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\tLanguage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 412
    sget-object v1, Lcom/eamobile/download/DownloadActivityInternal;->language:Lcom/eamobile/download/Language;

    iget-object v2, p0, Lcom/eamobile/download/DownloadActivityInternal;->mLocale:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/eamobile/download/Language;->loadStrings(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 415
    sget-object v1, Lcom/eamobile/download/DownloadActivityInternal;->language:Lcom/eamobile/download/Language;

    invoke-virtual {v1, v0}, Lcom/eamobile/download/Language;->loadStrings(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 417
    const-string v1, "en"

    iput-object v1, p0, Lcom/eamobile/download/DownloadActivityInternal;->mLocale:Ljava/lang/String;

    .line 418
    sget-object v1, Lcom/eamobile/download/DownloadActivityInternal;->language:Lcom/eamobile/download/Language;

    const-string v2, "en"

    invoke-virtual {v1, v2}, Lcom/eamobile/download/Language;->loadStrings(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private cleanState(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 707
    packed-switch p1, :pswitch_data_0

    .line 749
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/eamobile/download/DownloadActivityInternal;->pCurrentView:Lcom/eamobile/download/CustomView;

    invoke-virtual {v1}, Lcom/eamobile/download/CustomView;->clean()V

    .line 756
    :goto_1
    return-void

    .line 710
    :pswitch_0
    iget-object v1, p0, Lcom/eamobile/download/DownloadActivityInternal;->downloadMsgView:Lcom/eamobile/download/DownloadMsgView;

    iput-object v1, p0, Lcom/eamobile/download/DownloadActivityInternal;->pCurrentView:Lcom/eamobile/download/CustomView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 751
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 754
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in cleaning State:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    goto :goto_1

    .line 713
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/eamobile/download/DownloadActivityInternal;->spaceUnavailableView:Lcom/eamobile/download/SpaceUnavailableView;

    iput-object v1, p0, Lcom/eamobile/download/DownloadActivityInternal;->pCurrentView:Lcom/eamobile/download/CustomView;

    goto :goto_0

    .line 716
    :pswitch_2
    iget-object v1, p0, Lcom/eamobile/download/DownloadActivityInternal;->showWifiView:Lcom/eamobile/download/ShowWifiView;

    iput-object v1, p0, Lcom/eamobile/download/DownloadActivityInternal;->pCurrentView:Lcom/eamobile/download/CustomView;

    goto :goto_0

    .line 719
    :pswitch_3
    iget-object v1, p0, Lcom/eamobile/download/DownloadActivityInternal;->networkUnavailableView:Lcom/eamobile/download/NetworkUnavailableView;

    iput-object v1, p0, Lcom/eamobile/download/DownloadActivityInternal;->pCurrentView:Lcom/eamobile/download/CustomView;

    goto :goto_0

    .line 722
    :pswitch_4
    iget-object v1, p0, Lcom/eamobile/download/DownloadActivityInternal;->downloadProgressView:Lcom/eamobile/download/DownloadProgressView;

    iput-object v1, p0, Lcom/eamobile/download/DownloadActivityInternal;->pCurrentView:Lcom/eamobile/download/CustomView;

    goto :goto_0

    .line 725
    :pswitch_5
    iget-object v1, p0, Lcom/eamobile/download/DownloadActivityInternal;->mDownloadActivity:Lcom/eamobile/download/IDownloadActivity;

    iget-object v2, p0, Lcom/eamobile/download/DownloadActivityInternal;->mAssetPath:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Lcom/eamobile/download/IDownloadActivity;->onResult(Ljava/lang/String;I)V

    .line 726
    invoke-static {}, Lcom/eamobile/download/Logging;->DEBUG_CLOSE()V

    goto :goto_1

    .line 729
    :pswitch_6
    iget-object v1, p0, Lcom/eamobile/download/DownloadActivityInternal;->checkUpadatesView:Lcom/eamobile/download/CheckUpdatesView;

    iput-object v1, p0, Lcom/eamobile/download/DownloadActivityInternal;->pCurrentView:Lcom/eamobile/download/CustomView;

    goto :goto_0

    .line 732
    :pswitch_7
    iget-object v1, p0, Lcom/eamobile/download/DownloadActivityInternal;->downloadFailedView:Lcom/eamobile/download/DownloadFailedView;

    iput-object v1, p0, Lcom/eamobile/download/DownloadActivityInternal;->pCurrentView:Lcom/eamobile/download/CustomView;

    goto :goto_0

    .line 735
    :pswitch_8
    iget-object v1, p0, Lcom/eamobile/download/DownloadActivityInternal;->updatesFoundView:Lcom/eamobile/download/UpdatesFoundView;

    iput-object v1, p0, Lcom/eamobile/download/DownloadActivityInternal;->pCurrentView:Lcom/eamobile/download/CustomView;

    goto :goto_0

    .line 738
    :pswitch_9
    iget-object v1, p0, Lcom/eamobile/download/DownloadActivityInternal;->show3GView:Lcom/eamobile/download/Show3GView;

    iput-object v1, p0, Lcom/eamobile/download/DownloadActivityInternal;->pCurrentView:Lcom/eamobile/download/CustomView;

    goto :goto_0

    .line 741
    :pswitch_a
    iget-object v1, p0, Lcom/eamobile/download/DownloadActivityInternal;->showBGView:Lcom/eamobile/download/ShowBGView;

    iput-object v1, p0, Lcom/eamobile/download/DownloadActivityInternal;->pCurrentView:Lcom/eamobile/download/CustomView;

    goto :goto_0

    .line 744
    :pswitch_b
    iget-object v1, p0, Lcom/eamobile/download/DownloadActivityInternal;->unSupportedDeviceView:Lcom/eamobile/download/UnSupportedDeviceView;

    iput-object v1, p0, Lcom/eamobile/download/DownloadActivityInternal;->pCurrentView:Lcom/eamobile/download/CustomView;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 707
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_7
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private cleanStates()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 760
    iget-object v0, p0, Lcom/eamobile/download/DownloadActivityInternal;->downloadMsgView:Lcom/eamobile/download/DownloadMsgView;

    if-eqz v0, :cond_0

    .line 761
    iget-object v0, p0, Lcom/eamobile/download/DownloadActivityInternal;->downloadMsgView:Lcom/eamobile/download/DownloadMsgView;

    invoke-virtual {v0}, Lcom/eamobile/download/DownloadMsgView;->clean()V

    .line 762
    :cond_0
    iget-object v0, p0, Lcom/eamobile/download/DownloadActivityInternal;->showWifiView:Lcom/eamobile/download/ShowWifiView;

    if-eqz v0, :cond_1

    .line 763
    iget-object v0, p0, Lcom/eamobile/download/DownloadActivityInternal;->showWifiView:Lcom/eamobile/download/ShowWifiView;

    invoke-virtual {v0}, Lcom/eamobile/download/ShowWifiView;->clean()V

    .line 764
    :cond_1
    iget-object v0, p0, Lcom/eamobile/download/DownloadActivityInternal;->networkUnavailableView:Lcom/eamobile/download/NetworkUnavailableView;

    if-eqz v0, :cond_2

    .line 765
    iget-object v0, p0, Lcom/eamobile/download/DownloadActivityInternal;->networkUnavailableView:Lcom/eamobile/download/NetworkUnavailableView;

    invoke-virtual {v0}, Lcom/eamobile/download/NetworkUnavailableView;->clean()V

    .line 766
    :cond_2
    iget-object v0, p0, Lcom/eamobile/download/DownloadActivityInternal;->downloadProgressView:Lcom/eamobile/download/DownloadProgressView;

    if-eqz v0, :cond_3

    .line 767
    iget-object v0, p0, Lcom/eamobile/download/DownloadActivityInternal;->downloadProgressView:Lcom/eamobile/download/DownloadProgressView;

    invoke-virtual {v0}, Lcom/eamobile/download/DownloadProgressView;->clean()V

    .line 768
    :cond_3
    iget-object v0, p0, Lcom/eamobile/download/DownloadActivityInternal;->downloadFailedView:Lcom/eamobile/download/DownloadFailedView;

    if-eqz v0, :cond_4

    .line 769
    iget-object v0, p0, Lcom/eamobile/download/DownloadActivityInternal;->downloadFailedView:Lcom/eamobile/download/DownloadFailedView;

    invoke-virtual {v0}, Lcom/eamobile/download/DownloadFailedView;->clean()V

    .line 770
    :cond_4
    iget-object v0, p0, Lcom/eamobile/download/DownloadActivityInternal;->spaceUnavailableView:Lcom/eamobile/download/SpaceUnavailableView;

    if-eqz v0, :cond_5

    .line 771
    iget-object v0, p0, Lcom/eamobile/download/DownloadActivityInternal;->spaceUnavailableView:Lcom/eamobile/download/SpaceUnavailableView;

    invoke-virtual {v0}, Lcom/eamobile/download/SpaceUnavailableView;->clean()V

    .line 772
    :cond_5
    iget-object v0, p0, Lcom/eamobile/download/DownloadActivityInternal;->checkUpadatesView:Lcom/eamobile/download/CheckUpdatesView;

    if-eqz v0, :cond_6

    .line 773
    iget-object v0, p0, Lcom/eamobile/download/DownloadActivityInternal;->checkUpadatesView:Lcom/eamobile/download/CheckUpdatesView;

    invoke-virtual {v0}, Lcom/eamobile/download/CheckUpdatesView;->clean()V

    .line 774
    :cond_6
    iget-object v0, p0, Lcom/eamobile/download/DownloadActivityInternal;->updatesFoundView:Lcom/eamobile/download/UpdatesFoundView;

    if-eqz v0, :cond_7

    .line 775
    iget-object v0, p0, Lcom/eamobile/download/DownloadActivityInternal;->updatesFoundView:Lcom/eamobile/download/UpdatesFoundView;

    invoke-virtual {v0}, Lcom/eamobile/download/UpdatesFoundView;->clean()V

    .line 776
    :cond_7
    iget-object v0, p0, Lcom/eamobile/download/DownloadActivityInternal;->show3GView:Lcom/eamobile/download/Show3GView;

    if-eqz v0, :cond_8

    .line 777
    iget-object v0, p0, Lcom/eamobile/download/DownloadActivityInternal;->show3GView:Lcom/eamobile/download/Show3GView;

    invoke-virtual {v0}, Lcom/eamobile/download/Show3GView;->clean()V

    .line 778
    :cond_8
    iget-object v0, p0, Lcom/eamobile/download/DownloadActivityInternal;->showBGView:Lcom/eamobile/download/ShowBGView;

    if-eqz v0, :cond_9

    .line 779
    iget-object v0, p0, Lcom/eamobile/download/DownloadActivityInternal;->showBGView:Lcom/eamobile/download/ShowBGView;

    invoke-virtual {v0}, Lcom/eamobile/download/ShowBGView;->clean()V

    .line 780
    :cond_9
    iget-object v0, p0, Lcom/eamobile/download/DownloadActivityInternal;->unSupportedDeviceView:Lcom/eamobile/download/UnSupportedDeviceView;

    if-eqz v0, :cond_a

    .line 781
    iget-object v0, p0, Lcom/eamobile/download/DownloadActivityInternal;->unSupportedDeviceView:Lcom/eamobile/download/UnSupportedDeviceView;

    invoke-virtual {v0}, Lcom/eamobile/download/UnSupportedDeviceView;->clean()V

    .line 782
    :cond_a
    iput-object v1, p0, Lcom/eamobile/download/DownloadActivityInternal;->showBGView:Lcom/eamobile/download/ShowBGView;

    .line 783
    iput-object v1, p0, Lcom/eamobile/download/DownloadActivityInternal;->show3GView:Lcom/eamobile/download/Show3GView;

    .line 784
    iput-object v1, p0, Lcom/eamobile/download/DownloadActivityInternal;->updatesFoundView:Lcom/eamobile/download/UpdatesFoundView;

    .line 785
    iput-object v1, p0, Lcom/eamobile/download/DownloadActivityInternal;->checkUpadatesView:Lcom/eamobile/download/CheckUpdatesView;

    .line 786
    iput-object v1, p0, Lcom/eamobile/download/DownloadActivityInternal;->downloadMsgView:Lcom/eamobile/download/DownloadMsgView;

    .line 787
    iput-object v1, p0, Lcom/eamobile/download/DownloadActivityInternal;->showWifiView:Lcom/eamobile/download/ShowWifiView;

    .line 788
    iput-object v1, p0, Lcom/eamobile/download/DownloadActivityInternal;->networkUnavailableView:Lcom/eamobile/download/NetworkUnavailableView;

    .line 789
    iput-object v1, p0, Lcom/eamobile/download/DownloadActivityInternal;->downloadProgressView:Lcom/eamobile/download/DownloadProgressView;

    .line 790
    iput-object v1, p0, Lcom/eamobile/download/DownloadActivityInternal;->downloadFailedView:Lcom/eamobile/download/DownloadFailedView;

    .line 791
    iput-object v1, p0, Lcom/eamobile/download/DownloadActivityInternal;->spaceUnavailableView:Lcom/eamobile/download/SpaceUnavailableView;

    .line 792
    iput-object v1, p0, Lcom/eamobile/download/DownloadActivityInternal;->unSupportedDeviceView:Lcom/eamobile/download/UnSupportedDeviceView;

    .line 793
    return-void
.end method

.method private convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 7
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 1710
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v5, 0x2000

    invoke-direct {v2, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 1711
    .local v2, "reader":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1713
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1715
    .local v1, "line":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1716
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1719
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 1721
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "convertStreamToString Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1724
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1730
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1724
    :cond_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 1725
    :catch_1
    move-exception v0

    .line 1727
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "convertStreamToString Unable to close reader:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    goto :goto_1

    .line 1725
    :catch_2
    move-exception v0

    .line 1727
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "convertStreamToString Unable to close reader:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    goto :goto_1

    .line 1723
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 1724
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1728
    :goto_2
    throw v4

    .line 1725
    :catch_3
    move-exception v0

    .line 1727
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "convertStreamToString Unable to close reader:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private downloadAndValidateZipFile(Lcom/eamobile/download/DownloadFileData;Ljava/util/Hashtable;)Z
    .locals 9
    .param p1, "zipFileData"    # Lcom/eamobile/download/DownloadFileData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eamobile/download/DownloadFileData;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "checksums":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v4, 0x0

    .line 1250
    invoke-virtual {p1}, Lcom/eamobile/download/DownloadFileData;->getFileURL()Ljava/lang/String;

    move-result-object v6

    .line 1251
    .local v6, "downloadBinaryItemUrl":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Downloading Zip:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 1253
    const/4 v1, 0x0

    .line 1257
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    .line 1258
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1275
    if-nez v1, :cond_0

    move v2, v4

    .line 1283
    :goto_0
    return v2

    .line 1260
    :catch_0
    move-exception v2

    move-object v7, v2

    .line 1262
    .local v7, "e1":Ljava/net/MalformedURLException;
    invoke-virtual {v7}, Ljava/net/MalformedURLException;->printStackTrace()V

    move v2, v4

    .line 1263
    goto :goto_0

    .line 1265
    .end local v7    # "e1":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v2

    move-object v7, v2

    .line 1267
    .local v7, "e1":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    move v2, v4

    .line 1268
    goto :goto_0

    .line 1270
    .end local v7    # "e1":Ljava/io/IOException;
    :catch_2
    move-exception v2

    move-object v8, v2

    .local v8, "e2":Ljava/lang/InterruptedException;
    move v2, v4

    .line 1272
    goto :goto_0

    .line 1280
    .end local v8    # "e2":Ljava/lang/InterruptedException;
    :cond_0
    new-instance v5, Lcom/eamobile/download/RemoteZipExtractorEvent;

    sget-object v2, Lcom/eamobile/download/DownloadActivityInternal;->downloadProgress:Lcom/eamobile/download/DownloadProgress;

    invoke-direct {v5, v2, p1}, Lcom/eamobile/download/RemoteZipExtractorEvent;-><init>(Lcom/eamobile/download/DownloadProgress;Lcom/eamobile/download/DownloadFileData;)V

    .line 1281
    .local v5, "rzee":Lcom/eamobile/download/RemoteZipExtractorEvent;
    new-instance v0, Lcom/eamobile/download/ZipExtractor;

    invoke-direct {v0}, Lcom/eamobile/download/ZipExtractor;-><init>()V

    .line 1283
    .local v0, "remoteZipExtractor":Lcom/eamobile/download/ZipExtractor;
    iget-object v3, p0, Lcom/eamobile/download/DownloadActivityInternal;->mAssetPath:Ljava/lang/String;

    sget v4, Lcom/eamobile/download/DownloadActivityInternal;->TIMEOUT:I

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/eamobile/download/ZipExtractor;->extractFiles(Ljava/io/InputStream;Ljava/util/Hashtable;Ljava/lang/String;ILcom/eamobile/download/IZipExtractorEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method private downloadOtherFile(Lcom/eamobile/download/DownloadFileData;Ljava/util/Hashtable;)Z
    .locals 18
    .param p1, "fileData"    # Lcom/eamobile/download/DownloadFileData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eamobile/download/DownloadFileData;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1095
    .local p2, "checksums":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v5, 0x0

    .line 1096
    .local v5, "file":Ljava/io/RandomAccessFile;
    const/4 v12, 0x0

    .line 1097
    .local v12, "stream":Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 1098
    .local v8, "localFileSize":I
    const/4 v11, -0x1

    .line 1099
    .local v11, "size":I
    const/4 v10, 0x0

    .line 1103
    .local v10, "result":Z
    :try_start_0
    sget-object v14, Lcom/eamobile/download/DownloadActivityInternal;->downloadProgress:Lcom/eamobile/download/DownloadProgress;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "n_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lcom/eamobile/download/DownloadFileData;->getFileName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lcom/eamobile/download/DownloadFileData;->getSize()I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v14 .. v17}, Lcom/eamobile/download/DownloadProgress;->setCurrentFile(Ljava/lang/String;J)V

    .line 1105
    new-instance v7, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Lcom/eamobile/download/DownloadFileData;->getFileName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/eamobile/download/DownloadActivityInternal;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v7, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1106
    .local v7, "localFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 1108
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v14

    long-to-int v8, v14

    .line 1114
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/eamobile/download/DownloadFileData;->getSize()I

    move-result v14

    if-ge v8, v14, :cond_8

    .line 1116
    new-instance v13, Ljava/net/URL;

    invoke-virtual/range {p1 .. p1}, Lcom/eamobile/download/DownloadFileData;->getFileURL()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1117
    .local v13, "url":Ljava/net/URL;
    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 1119
    .local v2, "connection":Ljava/net/HttpURLConnection;
    const-string v14, "Range"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "bytes="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "-"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Range specification:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 1122
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 1125
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v14

    div-int/lit8 v14, v14, 0x64

    const/4 v15, 0x2

    if-eq v14, v15, :cond_1

    .line 1127
    const/4 v10, 0x0

    .line 1131
    :cond_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    .line 1132
    .local v3, "contentLength":I
    const/4 v14, 0x1

    if-ge v3, v14, :cond_2

    .line 1134
    const/4 v10, 0x0

    .line 1137
    :cond_2
    const/4 v14, -0x1

    if-ne v11, v14, :cond_3

    .line 1139
    move v11, v3

    .line 1143
    :cond_3
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string v14, "rw"

    invoke-direct {v6, v7, v14}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1144
    .end local v5    # "file":Ljava/io/RandomAccessFile;
    .local v6, "file":Ljava/io/RandomAccessFile;
    int-to-long v14, v8

    :try_start_1
    invoke-virtual {v6, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1147
    sget-object v14, Lcom/eamobile/download/DownloadActivityInternal;->downloadProgress:Lcom/eamobile/download/DownloadProgress;

    int-to-long v15, v8

    const/16 v17, 0x1

    invoke-virtual/range {v14 .. v17}, Lcom/eamobile/download/DownloadProgress;->reportProgress(JZ)V

    .line 1149
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    .line 1151
    new-instance v9, Lcom/eamobile/download/RandomAccessFileReadThread;

    invoke-direct {v9, v12, v6}, Lcom/eamobile/download/RandomAccessFileReadThread;-><init>(Ljava/io/InputStream;Ljava/io/RandomAccessFile;)V

    .line 1152
    .local v9, "readThread":Lcom/eamobile/download/RandomAccessFileReadThread;
    invoke-virtual {v9}, Lcom/eamobile/download/RandomAccessFileReadThread;->start()V

    .line 1154
    :goto_0
    iget-boolean v14, v9, Lcom/eamobile/download/RandomAccessFileReadThread;->reading:Z

    if-eqz v14, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object v0, v9

    iget-wide v0, v0, Lcom/eamobile/download/RandomAccessFileReadThread;->timestamp:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    sget v16, Lcom/eamobile/download/DownloadActivityInternal;->TIMEOUT:I

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-gez v14, :cond_7

    .line 1156
    const-wide/16 v14, 0xa

    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V

    .line 1157
    sget-object v14, Lcom/eamobile/download/DownloadActivityInternal;->downloadProgress:Lcom/eamobile/download/DownloadProgress;

    iget v15, v9, Lcom/eamobile/download/RandomAccessFileReadThread;->currentFileSize:I

    int-to-long v15, v15

    const/16 v17, 0x1

    invoke-virtual/range {v14 .. v17}, Lcom/eamobile/download/DownloadProgress;->reportProgress(JZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 1192
    .end local v9    # "readThread":Lcom/eamobile/download/RandomAccessFileReadThread;
    :catch_0
    move-exception v14

    move-object v4, v14

    move-object v5, v6

    .line 1195
    .end local v2    # "connection":Ljava/net/HttpURLConnection;
    .end local v3    # "contentLength":I
    .end local v6    # "file":Ljava/io/RandomAccessFile;
    .end local v7    # "localFile":Ljava/io/File;
    .end local v13    # "url":Ljava/net/URL;
    .local v4, "e":Ljava/lang/Exception;
    .restart local v5    # "file":Ljava/io/RandomAccessFile;
    :goto_1
    :try_start_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exception downloadOtherFile:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1196
    const/4 v10, 0x0

    .line 1201
    if-eqz v5, :cond_4

    .line 1203
    :try_start_3
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 1209
    :cond_4
    :goto_2
    if-eqz v12, :cond_5

    .line 1211
    :try_start_4
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .end local v4    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_3
    move v14, v10

    .line 1218
    :cond_6
    :goto_4
    return v14

    .line 1160
    .end local v5    # "file":Ljava/io/RandomAccessFile;
    .restart local v2    # "connection":Ljava/net/HttpURLConnection;
    .restart local v3    # "contentLength":I
    .restart local v6    # "file":Ljava/io/RandomAccessFile;
    .restart local v7    # "localFile":Ljava/io/File;
    .restart local v9    # "readThread":Lcom/eamobile/download/RandomAccessFileReadThread;
    .restart local v13    # "url":Ljava/net/URL;
    :cond_7
    :try_start_5
    iget-boolean v14, v9, Lcom/eamobile/download/RandomAccessFileReadThread;->reading:Z

    if-eqz v14, :cond_f

    .line 1162
    const-string v14, "Read took too long, killing thread, restarting download."

    invoke-static {v14}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 1163
    const/4 v14, 0x1

    iput-boolean v14, v9, Lcom/eamobile/download/RandomAccessFileReadThread;->killMe:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v5, v6

    .line 1168
    .end local v2    # "connection":Ljava/net/HttpURLConnection;
    .end local v3    # "contentLength":I
    .end local v6    # "file":Ljava/io/RandomAccessFile;
    .end local v9    # "readThread":Lcom/eamobile/download/RandomAccessFileReadThread;
    .end local v13    # "url":Ljava/net/URL;
    .restart local v5    # "file":Ljava/io/RandomAccessFile;
    :cond_8
    :goto_5
    if-eqz p2, :cond_b

    .line 1170
    :try_start_6
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eamobile/download/DownloadActivityInternal;->mAssetPath:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eamobile/download/DownloadActivityInternal;->mAssetPath:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-static/range {v14 .. v17}, Lcom/eamobile/download/ChecksumValidator;->validate(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v14

    if-nez v14, :cond_a

    .line 1177
    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1179
    const/4 v14, 0x0

    .line 1201
    if-eqz v5, :cond_9

    .line 1203
    :try_start_7
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 1209
    :cond_9
    :goto_6
    if-eqz v12, :cond_6

    .line 1211
    :try_start_8
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_4

    .line 1212
    :catch_1
    move-exception v4

    .line 1213
    .restart local v4    # "e":Ljava/lang/Exception;
    const/4 v10, 0x0

    goto :goto_4

    .line 1204
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v4

    .line 1205
    .restart local v4    # "e":Ljava/lang/Exception;
    const/4 v10, 0x0

    goto :goto_6

    .line 1183
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_a
    :try_start_9
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eamobile/download/DownloadActivityInternal;->mAssetPath:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1188
    :cond_b
    sget-object v14, Lcom/eamobile/download/DownloadActivityInternal;->downloadProgress:Lcom/eamobile/download/DownloadProgress;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/eamobile/download/DownloadProgress;->fillCurrentFileDownload(Z)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1190
    const/4 v10, 0x1

    .line 1201
    if-eqz v5, :cond_c

    .line 1203
    :try_start_a
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 1209
    :cond_c
    :goto_7
    if-eqz v12, :cond_5

    .line 1211
    :try_start_b
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_3

    .line 1212
    :catch_3
    move-exception v4

    .line 1213
    .restart local v4    # "e":Ljava/lang/Exception;
    const/4 v10, 0x0

    .line 1214
    goto/16 :goto_3

    .line 1204
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v4

    .line 1205
    .restart local v4    # "e":Ljava/lang/Exception;
    const/4 v10, 0x0

    goto :goto_7

    .line 1204
    .end local v7    # "localFile":Ljava/io/File;
    :catch_5
    move-exception v4

    .line 1205
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 1212
    :catch_6
    move-exception v4

    .line 1213
    const/4 v10, 0x0

    .line 1214
    goto/16 :goto_3

    .line 1201
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    :goto_8
    if-eqz v5, :cond_d

    .line 1203
    :try_start_c
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    .line 1209
    :cond_d
    :goto_9
    if-eqz v12, :cond_e

    .line 1211
    :try_start_d
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    .line 1214
    :cond_e
    :goto_a
    throw v14

    .line 1204
    :catch_7
    move-exception v4

    .line 1205
    .restart local v4    # "e":Ljava/lang/Exception;
    const/4 v10, 0x0

    goto :goto_9

    .line 1212
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_8
    move-exception v4

    .line 1213
    .restart local v4    # "e":Ljava/lang/Exception;
    const/4 v10, 0x0

    goto :goto_a

    .line 1201
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "file":Ljava/io/RandomAccessFile;
    .restart local v2    # "connection":Ljava/net/HttpURLConnection;
    .restart local v3    # "contentLength":I
    .restart local v6    # "file":Ljava/io/RandomAccessFile;
    .restart local v7    # "localFile":Ljava/io/File;
    .restart local v13    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v14

    move-object v5, v6

    .end local v6    # "file":Ljava/io/RandomAccessFile;
    .restart local v5    # "file":Ljava/io/RandomAccessFile;
    goto :goto_8

    .line 1192
    .end local v2    # "connection":Ljava/net/HttpURLConnection;
    .end local v3    # "contentLength":I
    .end local v7    # "localFile":Ljava/io/File;
    .end local v13    # "url":Ljava/net/URL;
    :catch_9
    move-exception v14

    move-object v4, v14

    goto/16 :goto_1

    .end local v5    # "file":Ljava/io/RandomAccessFile;
    .restart local v2    # "connection":Ljava/net/HttpURLConnection;
    .restart local v3    # "contentLength":I
    .restart local v6    # "file":Ljava/io/RandomAccessFile;
    .restart local v7    # "localFile":Ljava/io/File;
    .restart local v9    # "readThread":Lcom/eamobile/download/RandomAccessFileReadThread;
    .restart local v13    # "url":Ljava/net/URL;
    :cond_f
    move-object v5, v6

    .end local v6    # "file":Ljava/io/RandomAccessFile;
    .restart local v5    # "file":Ljava/io/RandomAccessFile;
    goto/16 :goto_5
.end method

.method private exists(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 1836
    const-string v2, ""

    .line 1838
    .local v2, "text":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 v4, 0x2000

    invoke-direct {v1, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 1839
    .local v1, "reader":Ljava/io/BufferedReader;
    const-string v0, ""

    .line 1840
    .local v0, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1842
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1844
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Existing Text:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", new Value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 1845
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1849
    .end local v0    # "line":Ljava/lang/String;
    .end local v1    # "reader":Ljava/io/BufferedReader;
    :goto_1
    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    return v3

    .line 1846
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private extractAndValidateFilesFromZip(Ljava/lang/String;Ljava/util/Hashtable;)Z
    .locals 9
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "checksums":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v4, 0x0

    .line 1223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Extracting files from Zip: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 1225
    const/4 v8, 0x0

    .line 1229
    .local v8, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {p0, p1}, Lcom/eamobile/download/DownloadActivityInternal;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1230
    .end local v8    # "is":Ljava/io/InputStream;
    .local v1, "is":Ljava/io/InputStream;
    const-wide/16 v2, 0x3e8

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1242
    new-instance v5, Lcom/eamobile/download/LocalZipExtractorEvent;

    invoke-direct {v5}, Lcom/eamobile/download/LocalZipExtractorEvent;-><init>()V

    .line 1243
    .local v5, "lzee":Lcom/eamobile/download/LocalZipExtractorEvent;
    new-instance v0, Lcom/eamobile/download/ZipExtractor;

    invoke-direct {v0}, Lcom/eamobile/download/ZipExtractor;-><init>()V

    .line 1245
    .local v0, "localZipExtractor":Lcom/eamobile/download/ZipExtractor;
    iget-object v3, p0, Lcom/eamobile/download/DownloadActivityInternal;->mAssetPath:Ljava/lang/String;

    sget v4, Lcom/eamobile/download/DownloadActivityInternal;->TIMEOUT:I

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/eamobile/download/ZipExtractor;->extractFiles(Ljava/io/InputStream;Ljava/util/Hashtable;Ljava/lang/String;ILcom/eamobile/download/IZipExtractorEvent;)Z

    move-result v2

    .end local v0    # "localZipExtractor":Lcom/eamobile/download/ZipExtractor;
    .end local v5    # "lzee":Lcom/eamobile/download/LocalZipExtractorEvent;
    :goto_0
    return v2

    .line 1232
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v8    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v2

    move-object v6, v2

    move-object v1, v8

    .line 1234
    .end local v8    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    .local v6, "e1":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    move v2, v4

    .line 1235
    goto :goto_0

    .line 1237
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v6    # "e1":Ljava/io/IOException;
    .restart local v8    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v2

    move-object v7, v2

    move-object v1, v8

    .end local v8    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    .local v7, "e2":Ljava/lang/InterruptedException;
    :goto_2
    move v2, v4

    .line 1239
    goto :goto_0

    .line 1237
    .end local v7    # "e2":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v2

    move-object v7, v2

    goto :goto_2

    .line 1232
    :catch_3
    move-exception v2

    move-object v6, v2

    goto :goto_1
.end method

.method private getAPKVersion()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1541
    const-string v1, ""

    .line 1543
    .local v1, "version":Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/eamobile/download/DownloadActivityInternal;->instance:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v3, Lcom/eamobile/download/DownloadActivityInternal;->instance:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1544
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1548
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v1

    .line 1546
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private getChecksumsHashtable(Ljava/lang/String;[Lcom/eamobile/download/DownloadFileData;)Ljava/util/Hashtable;
    .locals 14
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "downloadFilesData"    # [Lcom/eamobile/download/DownloadFileData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lcom/eamobile/download/DownloadFileData;",
            ")",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1288
    const/4 v7, 0x0

    .line 1289
    .local v7, "result":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-direct/range {p0 .. p2}, Lcom/eamobile/download/DownloadActivityInternal;->getMatchingChecksumFile(Ljava/lang/String;[Lcom/eamobile/download/DownloadFileData;)Lcom/eamobile/download/DownloadFileData;

    move-result-object v2

    .line 1290
    .local v2, "checksumsFileData":Lcom/eamobile/download/DownloadFileData;
    if-eqz v2, :cond_2

    .line 1292
    const/4 v3, 0x0

    .line 1293
    .local v3, "dis":Ljava/io/DataInputStream;
    const/4 v0, 0x0

    .line 1294
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 1296
    .local v6, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v11, Ljava/net/URL;

    invoke-virtual {v2}, Lcom/eamobile/download/DownloadFileData;->getFileURL()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v6

    .line 1297
    const-wide/16 v11, 0x3e8

    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1298
    if-nez v6, :cond_1

    .line 1299
    const/4 v11, 0x0

    .line 1315
    if-eqz v6, :cond_0

    .line 1317
    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 1318
    const/4 v6, 0x0

    .line 1319
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    .line 1320
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 1326
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "dis":Ljava/io/DataInputStream;
    .end local v6    # "is":Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-object v11

    .line 1300
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "dis":Ljava/io/DataInputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    :cond_1
    :try_start_2
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1301
    .end local v3    # "dis":Ljava/io/DataInputStream;
    .local v4, "dis":Ljava/io/DataInputStream;
    :try_start_3
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-direct {v11, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v12, 0x2000

    invoke-direct {v1, v11, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1303
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_4
    new-instance v8, Ljava/util/Hashtable;

    invoke-direct {v8}, Ljava/util/Hashtable;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1304
    .end local v7    # "result":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Long;>;"
    .local v8, "result":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Long;>;"
    :goto_1
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .local v10, "strLine":Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 1305
    const-string v11, "\t"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1306
    .local v9, "splitArray":[Ljava/lang/String;
    const/4 v11, 0x0

    aget-object v11, v9, v11

    const/4 v12, 0x1

    aget-object v12, v9, v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_1

    .line 1308
    .end local v9    # "splitArray":[Ljava/lang/String;
    .end local v10    # "strLine":Ljava/lang/String;
    :catch_0
    move-exception v11

    move-object v5, v11

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "dis":Ljava/io/DataInputStream;
    .restart local v3    # "dis":Ljava/io/DataInputStream;
    move-object v7, v8

    .line 1310
    .end local v8    # "result":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Long;>;"
    .local v5, "e":Ljava/lang/Exception;
    .restart local v7    # "result":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Long;>;"
    :goto_2
    :try_start_6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception:getChecksumsHashtable():"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1315
    if-eqz v6, :cond_2

    .line 1317
    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 1318
    const/4 v6, 0x0

    .line 1319
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    .line 1320
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "dis":Ljava/io/DataInputStream;
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "is":Ljava/io/InputStream;
    :cond_2
    :goto_3
    move-object v11, v7

    .line 1326
    goto :goto_0

    .line 1315
    .end local v7    # "result":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "dis":Ljava/io/DataInputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v8    # "result":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v10    # "strLine":Ljava/lang/String;
    :cond_3
    if-eqz v6, :cond_4

    .line 1317
    :try_start_8
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 1318
    const/4 v6, 0x0

    .line 1319
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    .line 1320
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    :cond_4
    move-object v7, v8

    .line 1323
    .end local v8    # "result":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v7    # "result":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Long;>;"
    goto :goto_3

    .line 1322
    .end local v7    # "result":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v8    # "result":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Long;>;"
    :catch_1
    move-exception v11

    move-object v7, v8

    .line 1324
    .end local v8    # "result":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v7    # "result":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Long;>;"
    goto :goto_3

    .line 1314
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "dis":Ljava/io/DataInputStream;
    .end local v10    # "strLine":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "dis":Ljava/io/DataInputStream;
    :catchall_0
    move-exception v11

    .line 1315
    :goto_4
    if-eqz v6, :cond_5

    .line 1317
    :try_start_9
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 1318
    const/4 v6, 0x0

    .line 1319
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    .line 1320
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 1323
    :cond_5
    :goto_5
    throw v11

    .line 1322
    :catch_2
    move-exception v12

    goto :goto_5

    .line 1314
    .end local v3    # "dis":Ljava/io/DataInputStream;
    .restart local v4    # "dis":Ljava/io/DataInputStream;
    :catchall_1
    move-exception v11

    move-object v3, v4

    .end local v4    # "dis":Ljava/io/DataInputStream;
    .restart local v3    # "dis":Ljava/io/DataInputStream;
    goto :goto_4

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "dis":Ljava/io/DataInputStream;
    :catchall_2
    move-exception v11

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "dis":Ljava/io/DataInputStream;
    .restart local v3    # "dis":Ljava/io/DataInputStream;
    goto :goto_4

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "dis":Ljava/io/DataInputStream;
    .end local v7    # "result":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "dis":Ljava/io/DataInputStream;
    .restart local v8    # "result":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Long;>;"
    :catchall_3
    move-exception v11

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "dis":Ljava/io/DataInputStream;
    .restart local v3    # "dis":Ljava/io/DataInputStream;
    move-object v7, v8

    .end local v8    # "result":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v7    # "result":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Long;>;"
    goto :goto_4

    .line 1322
    .restart local v5    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v11

    goto :goto_3

    .line 1308
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v11

    move-object v5, v11

    goto :goto_2

    .end local v3    # "dis":Ljava/io/DataInputStream;
    .restart local v4    # "dis":Ljava/io/DataInputStream;
    :catch_5
    move-exception v11

    move-object v5, v11

    move-object v3, v4

    .end local v4    # "dis":Ljava/io/DataInputStream;
    .restart local v3    # "dis":Ljava/io/DataInputStream;
    goto :goto_2

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "dis":Ljava/io/DataInputStream;
    :catch_6
    move-exception v11

    move-object v5, v11

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "dis":Ljava/io/DataInputStream;
    .restart local v3    # "dis":Ljava/io/DataInputStream;
    goto :goto_2

    .line 1322
    :catch_7
    move-exception v12

    goto/16 :goto_0
.end method

.method private getDownloadFilesData()[Lcom/eamobile/download/DownloadFileData;
    .locals 21

    .prologue
    .line 1345
    invoke-virtual/range {p0 .. p0}, Lcom/eamobile/download/DownloadActivityInternal;->getBrand()Ljava/lang/String;

    move-result-object v10

    .line 1346
    .local v10, "brand":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/eamobile/download/DownloadActivityInternal;->getResolution()Ljava/lang/String;

    move-result-object v20

    .line 1347
    .local v20, "resolution":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/eamobile/download/DownloadActivityInternal;->getDeviceString()Ljava/lang/String;

    move-result-object v11

    .line 1349
    .local v11, "deviceString":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/eamobile/download/DownloadActivityInternal;->DOWNLOAD_URL:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "androidContentWS/cms/android/gameasset/application/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v5, Lcom/eamobile/download/DownloadActivityInternal;->MASTER_SELL_ID:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/pId/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v5, Lcom/eamobile/download/DownloadActivityInternal;->PRODUCT_ID:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/version/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/eamobile/download/DownloadActivityInternal;->getAPKVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/resolution/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/glext/device/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/brand/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "?language="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eamobile/download/DownloadActivityInternal;->mLocale:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1352
    .local v12, "downloadDataURL":Ljava/lang/String;
    const-string v3, "[SENDING REQUEST]"

    invoke-static {v3}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 1353
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DOWNLOAD DATA URL\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 1354
    const-string v3, "TYPE: POST"

    invoke-static {v3}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 1356
    new-instance v16, Lorg/json/JSONObject;

    invoke-direct/range {v16 .. v16}, Lorg/json/JSONObject;-><init>()V

    .line 1357
    .local v16, "json":Lorg/json/JSONObject;
    const/4 v13, 0x0

    .line 1360
    .local v13, "downloadFileData":[Lcom/eamobile/download/DownloadFileData;
    :try_start_0
    const-string v3, "PARAMETERS: "

    invoke-static {v3}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 1362
    const-string v3, "glext"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eamobile/download/DownloadActivityInternal;->glExtensions:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v16

    move-object v1, v3

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1363
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\tglext: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eamobile/download/DownloadActivityInternal;->glExtensions:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 1365
    const-string v3, "ADDITIONAL INFORMATION:"

    invoke-static {v3}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 1366
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\tProduct ID:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v5, Lcom/eamobile/download/DownloadActivityInternal;->PRODUCT_ID:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 1367
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\tSell ID:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v5, Lcom/eamobile/download/DownloadActivityInternal;->MASTER_SELL_ID:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 1368
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\tBrand:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 1369
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\tDevice:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 1370
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\tResolution:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 1371
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\tLanguage:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/eamobile/download/DownloadActivityInternal;->mLocale:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 1373
    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/eamobile/download/DownloadActivityInternal;->sendHttpPost(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v17

    .line 1374
    .local v17, "jsonResult":Lorg/json/JSONObject;
    if-eqz v17, :cond_0

    .line 1376
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[JSON RESULT]\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 1379
    const-string v3, "responseCode"

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "responseCode"

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const/16 v5, 0x1389

    if-ne v3, v5, :cond_1

    .line 1381
    const-string v3, "*** ERROR: UNSUPPORTED DEVICE ***"

    invoke-static {v3}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 1382
    const/16 v3, 0xc

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/eamobile/download/DownloadActivityInternal;->setState(I)V

    .line 1419
    .end local v17    # "jsonResult":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v13

    .line 1386
    .restart local v17    # "jsonResult":Lorg/json/JSONObject;
    :cond_1
    const-string v3, "FILES: "

    invoke-static {v3}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 1388
    const-string v3, "files"

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v18

    .line 1390
    .local v18, "metaData":Lorg/json/JSONArray;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v15, v3, :cond_2

    .line 1392
    move-object/from16 v0, v18

    move v1, v15

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    .line 1393
    .local v19, "obj":Lorg/json/JSONObject;
    const-string v3, "--------------------------------------"

    invoke-static {v3}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 1394
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Filename:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "fileName"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 1395
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Size (bytes): "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "fileSize"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 1396
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Version: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "version"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 1397
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Language: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "language"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 1398
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "URL: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "fileURL"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 1399
    const-string v3, "--------------------------------------"

    invoke-static {v3}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 1390
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 1403
    .end local v19    # "obj":Lorg/json/JSONObject;
    :cond_2
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v13, v3, [Lcom/eamobile/download/DownloadFileData;

    .line 1404
    const/4 v15, 0x0

    :goto_2
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v15, v3, :cond_0

    .line 1406
    move-object/from16 v0, v18

    move v1, v15

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    .line 1407
    .restart local v19    # "obj":Lorg/json/JSONObject;
    const-string v3, "fileName"

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1408
    .local v4, "fileName":Ljava/lang/String;
    new-instance v3, Lcom/eamobile/download/DownloadFileData;

    const-string v5, "fileSize"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "version"

    move-object/from16 v0, v19

    move-object v1, v6

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "language"

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "fileURL"

    move-object/from16 v0, v19

    move-object v1, v8

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    invoke-direct/range {v3 .. v9}, Lcom/eamobile/download/DownloadFileData;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v3, v13, v15

    .line 1409
    const-string v3, ".zip"

    invoke-virtual {v4, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1410
    aget-object v3, v13, v15

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/eamobile/download/DownloadFileData;->setType(I)V

    .line 1404
    :cond_3
    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 1411
    :cond_4
    const-string v3, ".checksums"

    invoke-virtual {v4, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1412
    aget-object v3, v13, v15

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/eamobile/download/DownloadFileData;->setType(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1416
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v15    # "i":I
    .end local v17    # "jsonResult":Lorg/json/JSONObject;
    .end local v18    # "metaData":Lorg/json/JSONArray;
    .end local v19    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    move-object v14, v3

    .line 1417
    .local v14, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDownloadData():"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private getFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/eamobile/download/DownloadActivityInternal;->mAssetPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static getInstance()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lcom/eamobile/download/DownloadActivityInternal;->instance:Landroid/app/Activity;

    return-object v0
.end method

.method protected static getMainActivity()Lcom/eamobile/download/DownloadActivityInternal;
    .locals 1

    .prologue
    .line 145
    sget-object v0, Lcom/eamobile/download/DownloadActivityInternal;->mMainActivity:Lcom/eamobile/download/DownloadActivityInternal;

    return-object v0
.end method

.method private getMatchingChecksumFile(Ljava/lang/String;[Lcom/eamobile/download/DownloadFileData;)Lcom/eamobile/download/DownloadFileData;
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "list"    # [Lcom/eamobile/download/DownloadFileData;

    .prologue
    .line 1331
    const/4 v1, 0x0

    .line 1332
    .local v1, "result":Lcom/eamobile/download/DownloadFileData;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    .line 1334
    aget-object v2, p2, v0

    invoke-virtual {v2}, Lcom/eamobile/download/DownloadFileData;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    aget-object v2, p2, v0

    invoke-virtual {v2}, Lcom/eamobile/download/DownloadFileData;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1336
    aget-object v1, p2, v0

    .line 1340
    :cond_0
    return-object v1

    .line 1332
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getResolution()Ljava/lang/String;
    .locals 4

    .prologue
    .line 280
    const/4 v1, 0x0

    .line 281
    .local v1, "resolution":Ljava/lang/String;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 283
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    sget-object v2, Lcom/eamobile/download/DownloadActivityInternal;->instance:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 284
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayMetrics: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/util/DisplayMetrics;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 286
    sget-object v2, Lcom/eamobile/download/DownloadActivityInternal;->instance:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v2

    if-nez v2, :cond_0

    .line 288
    const-string v2, "SCREEN_ORIENTATION_LANDSCAPE"

    invoke-static {v2}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 295
    :goto_0
    return-object v1

    .line 292
    :cond_0
    const-string v2, "SCREEN_ORIENTATION_PORTRAIT"

    invoke-static {v2}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getSizeDownloaded()J
    .locals 2

    .prologue
    .line 491
    sget-object v0, Lcom/eamobile/download/DownloadActivityInternal;->downloadProgress:Lcom/eamobile/download/DownloadProgress;

    invoke-virtual {v0}, Lcom/eamobile/download/DownloadProgress;->getSizeDownloaded()J

    move-result-wide v0

    return-wide v0
.end method

.method private isFileDownloaded(Ljava/lang/String;)Z
    .locals 10
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 1058
    new-instance v0, Ljava/io/File;

    iget-object v7, p0, Lcom/eamobile/download/DownloadActivityInternal;->mAssetPath:Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1062
    .local v0, "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1064
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 1068
    :cond_0
    :try_start_0
    const-string v7, "Downloaded.indicate"

    invoke-direct {p0, v7}, Lcom/eamobile/download/DownloadActivityInternal;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1069
    .local v4, "path":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1070
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1072
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 v8, 0x2000

    invoke-direct {v5, v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 1073
    .local v5, "reader":Ljava/io/BufferedReader;
    const-string v3, ""

    .line 1074
    .local v3, "line":Ljava/lang/String;
    const-string v6, ""

    .line 1075
    .local v6, "text":Ljava/lang/String;
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1077
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 1079
    :cond_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 1080
    invoke-virtual {v6, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_2

    .line 1081
    const/4 v7, 0x1

    .line 1090
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "text":Ljava/lang/String;
    :goto_1
    return v7

    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v4    # "path":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "text":Ljava/lang/String;
    :cond_2
    move v7, v9

    .line 1082
    goto :goto_1

    .line 1085
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "text":Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 1087
    .local v1, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not downloaded."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    move v7, v9

    .line 1088
    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "path":Ljava/lang/String;
    :cond_3
    move v7, v9

    .line 1090
    goto :goto_1
.end method

.method private isServerVersionHigher(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "existingVersion"    # Ljava/lang/String;
    .param p2, "serverVersion"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1860
    invoke-direct {p0, p1}, Lcom/eamobile/download/DownloadActivityInternal;->normalisedVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1861
    .local v1, "s1":Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/eamobile/download/DownloadActivityInternal;->normalisedVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1862
    .local v2, "s2":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 1863
    .local v0, "cmp":I
    if-gez v0, :cond_1

    .line 1867
    :cond_0
    :goto_0
    return v3

    .line 1865
    :cond_1
    if-lez v0, :cond_0

    .line 1866
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private loadConfigProperties()V
    .locals 9

    .prologue
    .line 1589
    :try_start_0
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 1590
    .local v2, "properties":Ljava/util/Properties;
    sget-object v7, Lcom/eamobile/download/DownloadActivityInternal;->instance:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    const-string v8, "downloadcontent/config.properties"

    invoke-virtual {v7, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 1592
    const-string v7, "MASTER_SELL_ID"

    invoke-virtual {v2, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcom/eamobile/download/DownloadActivityInternal;->MASTER_SELL_ID:I

    .line 1593
    const-string v7, "TOTAL_SPACE_MB"

    invoke-virtual {v2, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcom/eamobile/download/DownloadActivityInternal;->TOTAL_SPACE_MB:I

    .line 1594
    const-string v7, "PRODUCT_ID"

    invoke-virtual {v2, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcom/eamobile/download/DownloadActivityInternal;->PRODUCT_ID:I

    .line 1596
    const-string v7, " "

    invoke-static {v7}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 1597
    const-string v7, "[config.properties]"

    invoke-static {v7}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 1598
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\tMASTER_SELL_ID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/eamobile/download/DownloadActivityInternal;->MASTER_SELL_ID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 1599
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\tPRODUCT_ID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/eamobile/download/DownloadActivityInternal;->PRODUCT_ID:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 1600
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\tTOTAL_SPACE_MB: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/eamobile/download/DownloadActivityInternal;->TOTAL_SPACE_MB:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 1602
    const-string v7, "DATA_FOLDER"

    invoke-virtual {v2, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1603
    .local v0, "dataFolder":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 1605
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\tDATA_FOLDER: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 1606
    const/4 v7, 0x1

    invoke-virtual {p0, v0, v7}, Lcom/eamobile/download/DownloadActivityInternal;->setAssetPath(Ljava/lang/String;Z)V

    .line 1613
    :goto_0
    const-string v7, "TIMEOUT"

    invoke-virtual {v2, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1614
    .local v4, "temp":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 1616
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 1620
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1622
    .local v5, "tempTimeout":I
    if-lez v5, :cond_0

    .line 1624
    mul-int/lit16 v7, v5, 0x3e8

    sput v7, Lcom/eamobile/download/DownloadActivityInternal;->TIMEOUT:I

    .line 1625
    const-string v7, "\tTIMEOUT read from config.properties"

    invoke-static {v7}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1634
    .end local v5    # "tempTimeout":I
    :cond_0
    :goto_1
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\tTIMEOUT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/eamobile/download/DownloadActivityInternal;->TIMEOUT:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " milliseconds"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 1636
    const-string v7, "READ_DOWNLOAD_URL_FROM_SDCARD"

    invoke-virtual {v2, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1637
    if-eqz v4, :cond_1

    .line 1639
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 1642
    :cond_1
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 1644
    .local v3, "readUrlExt":Z
    if-eqz v3, :cond_6

    .line 1646
    const-string v7, "\tWill try to read DOWNLOAD_URL from SD card..."

    invoke-static {v7}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 1648
    invoke-direct {p0}, Lcom/eamobile/download/DownloadActivityInternal;->readUrlFromFile()Ljava/lang/String;

    move-result-object v6

    .line 1649
    .local v6, "url":Ljava/lang/String;
    if-eqz v6, :cond_5

    .line 1651
    const-string v7, "\t\tOK: DOWNLOAD_URL read from SD Card"

    invoke-static {v7}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 1652
    sput-object v6, Lcom/eamobile/download/DownloadActivityInternal;->DOWNLOAD_URL:Ljava/lang/String;

    .line 1665
    .end local v6    # "url":Ljava/lang/String;
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\tDOWNLOAD_URL: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/eamobile/download/DownloadActivityInternal;->DOWNLOAD_URL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 1667
    const-string v7, "UNCOMPRESS_ZIP_ON_DEVICE"

    invoke-virtual {v2, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1668
    if-eqz v4, :cond_2

    .line 1670
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 1673
    :cond_2
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    sput-boolean v7, Lcom/eamobile/download/DownloadActivityInternal;->UNCOMPRESS_ZIP_ON_DEVICE:Z

    .line 1675
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\tUNCOMPRESS_ZIP_ON_DEVICE: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/eamobile/download/DownloadActivityInternal;->UNCOMPRESS_ZIP_ON_DEVICE:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 1678
    const-string v7, "CUSTOM_PROGRESS_BAR"

    invoke-virtual {v2, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1679
    if-eqz v4, :cond_3

    .line 1681
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 1684
    :cond_3
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    sput-boolean v7, Lcom/eamobile/download/DownloadActivityInternal;->CUSTOM_PROGRESS_BAR:Z

    .line 1686
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\tCUSTOM_PROGRESS_BAR: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/eamobile/download/DownloadActivityInternal;->CUSTOM_PROGRESS_BAR:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1694
    const-string v7, " "

    invoke-static {v7}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 1696
    .end local v0    # "dataFolder":Ljava/lang/String;
    .end local v2    # "properties":Ljava/util/Properties;
    .end local v3    # "readUrlExt":Z
    .end local v4    # "temp":Ljava/lang/String;
    :goto_3
    return-void

    .line 1610
    .restart local v0    # "dataFolder":Ljava/lang/String;
    .restart local v2    # "properties":Ljava/util/Properties;
    :cond_4
    :try_start_3
    const-string v7, "\tDATA_FOLDER not specified in config.properties"

    invoke-static {v7}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 1688
    .end local v0    # "dataFolder":Ljava/lang/String;
    .end local v2    # "properties":Ljava/util/Properties;
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 1690
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\tException while loading properties:config.properties"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1694
    const-string v7, " "

    invoke-static {v7}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    goto :goto_3

    .line 1628
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "dataFolder":Ljava/lang/String;
    .restart local v2    # "properties":Ljava/util/Properties;
    .restart local v4    # "temp":Ljava/lang/String;
    :catch_1
    move-exception v7

    move-object v1, v7

    .line 1630
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 1694
    .end local v0    # "dataFolder":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "properties":Ljava/util/Properties;
    .end local v4    # "temp":Ljava/lang/String;
    :catchall_0
    move-exception v7

    const-string v8, " "

    invoke-static {v8}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    throw v7

    .line 1656
    .restart local v0    # "dataFolder":Ljava/lang/String;
    .restart local v2    # "properties":Ljava/util/Properties;
    .restart local v3    # "readUrlExt":Z
    .restart local v4    # "temp":Ljava/lang/String;
    .restart local v6    # "url":Ljava/lang/String;
    :cond_5
    :try_start_6
    const-string v7, "\t\tFAILED. Will use DOWNLOAD_URL defined in config.properties"

    invoke-static {v7}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 1657
    const-string v7, "DOWNLOAD_URL"

    invoke-virtual {v2, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/eamobile/download/DownloadActivityInternal;->DOWNLOAD_URL:Ljava/lang/String;

    goto/16 :goto_2

    .line 1662
    .end local v6    # "url":Ljava/lang/String;
    :cond_6
    const-string v7, "DOWNLOAD_URL"

    invoke-virtual {v2, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/eamobile/download/DownloadActivityInternal;->DOWNLOAD_URL:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2
.end method

.method private normalisedVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 1871
    const-string v0, "."

    const/4 v1, 0x4

    invoke-direct {p0, p1, v0, v1}, Lcom/eamobile/download/DownloadActivityInternal;->normalisedVersion(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private normalisedVersion(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 9
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "sep"    # Ljava/lang/String;
    .param p3, "maxWidth"    # I

    .prologue
    .line 1875
    const/16 v6, 0x10

    invoke-static {p2, v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v5

    .line 1876
    .local v5, "split":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1877
    .local v4, "sb":Ljava/lang/StringBuilder;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 1878
    .local v3, "s":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x73

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1877
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1880
    .end local v3    # "s":Ljava/lang/String;
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private prepareSDCard()V
    .locals 5

    .prologue
    .line 1753
    :try_start_0
    const-string v3, "Downloaded.indicate"

    invoke-direct {p0, v3}, Lcom/eamobile/download/DownloadActivityInternal;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1754
    .local v2, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1755
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1757
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1762
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "path":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1759
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 1760
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while cleaning SDCard:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private printDeviceAndAppInfo()V
    .locals 2

    .prologue
    .line 150
    const-string v0, " "

    invoke-static {v0}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 151
    const-string v0, "[Device/App info]"

    invoke-static {v0}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eamobile/download/DownloadActivityInternal;->getDeviceString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tBrand: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eamobile/download/DownloadActivityInternal;->getBrand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tAndroid Unique ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eamobile/download/DownloadActivityInternal;->getAndroidUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tApplication name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eamobile/download/DownloadActivityInternal;->getApplicationName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tAPK version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/eamobile/download/DownloadActivityInternal;->getAPKVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 157
    const-string v0, " "

    invoke-static {v0}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method private readUrlFromFile()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1561
    :try_start_0
    const-string v5, "DownloadURL.indicate"

    invoke-direct {p0, v5}, Lcom/eamobile/download/DownloadActivityInternal;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1562
    .local v3, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1563
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1565
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1566
    .local v4, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 1568
    .local v2, "line":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    move-object v5, v2

    .line 1582
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    :goto_0
    return-object v5

    .line 1574
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "path":Ljava/lang/String;
    :cond_0
    const-string v5, "\t\tDownloadURL.indicate does not exist."

    invoke-static {v5}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1582
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "path":Ljava/lang/String;
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 1577
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 1579
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\t\tException while reading DownloadURL.indicate: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private sendHttpPost(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 11
    .param p1, "URL"    # Ljava/lang/String;
    .param p2, "jsonObjSend"    # Lorg/json/JSONObject;

    .prologue
    .line 1424
    const/4 v4, 0x0

    .line 1427
    .local v4, "instream":Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 1428
    .local v3, "httpclient":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 1431
    .local v2, "httpPostRequest":Lorg/apache/http/client/methods/HttpPost;
    new-instance v8, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 1432
    .local v8, "se":Lorg/apache/http/entity/StringEntity;
    invoke-virtual {v2, v8}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 1433
    const-string v9, "Accept"

    const-string v10, "application/json"

    invoke-virtual {v2, v9, v10}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1434
    const-string v9, "Content-type"

    const-string v10, "application/json"

    invoke-virtual {v2, v9, v10}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1435
    invoke-virtual {v3, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 1436
    .local v6, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 1437
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v1, :cond_1

    .line 1439
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 1441
    invoke-direct {p0, v4}, Lcom/eamobile/download/DownloadActivityInternal;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    .line 1442
    .local v7, "resultString":Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1454
    .local v5, "jsonObjRecv":Lorg/json/JSONObject;
    if-eqz v4, :cond_0

    .line 1455
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_0
    :goto_0
    move-object v9, v5

    .line 1461
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    .end local v2    # "httpPostRequest":Lorg/apache/http/client/methods/HttpPost;
    .end local v3    # "httpclient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v5    # "jsonObjRecv":Lorg/json/JSONObject;
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    .end local v7    # "resultString":Ljava/lang/String;
    .end local v8    # "se":Lorg/apache/http/entity/StringEntity;
    :goto_1
    return-object v9

    .line 1454
    .restart local v1    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v2    # "httpPostRequest":Lorg/apache/http/client/methods/HttpPost;
    .restart local v3    # "httpclient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v6    # "response":Lorg/apache/http/HttpResponse;
    .restart local v8    # "se":Lorg/apache/http/entity/StringEntity;
    :cond_1
    if-eqz v4, :cond_2

    .line 1455
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 1461
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    .end local v2    # "httpPostRequest":Lorg/apache/http/client/methods/HttpPost;
    .end local v3    # "httpclient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    .end local v8    # "se":Lorg/apache/http/entity/StringEntity;
    :cond_2
    :goto_2
    const/4 v9, 0x0

    goto :goto_1

    .line 1446
    :catch_0
    move-exception v9

    move-object v0, v9

    .line 1449
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "*** Exception in sendHttpPost("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ***"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1454
    if-eqz v4, :cond_2

    .line 1455
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 1456
    :catch_1
    move-exception v9

    goto :goto_2

    .line 1453
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 1454
    if-eqz v4, :cond_3

    .line 1455
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 1458
    :cond_3
    :goto_3
    throw v9

    .line 1456
    .restart local v1    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v2    # "httpPostRequest":Lorg/apache/http/client/methods/HttpPost;
    .restart local v3    # "httpclient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v5    # "jsonObjRecv":Lorg/json/JSONObject;
    .restart local v6    # "response":Lorg/apache/http/HttpResponse;
    .restart local v7    # "resultString":Ljava/lang/String;
    .restart local v8    # "se":Lorg/apache/http/entity/StringEntity;
    :catch_2
    move-exception v9

    goto :goto_0

    .end local v5    # "jsonObjRecv":Lorg/json/JSONObject;
    .end local v7    # "resultString":Ljava/lang/String;
    :catch_3
    move-exception v9

    goto :goto_2

    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    .end local v2    # "httpPostRequest":Lorg/apache/http/client/methods/HttpPost;
    .end local v3    # "httpclient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    .end local v8    # "se":Lorg/apache/http/entity/StringEntity;
    :catch_4
    move-exception v10

    goto :goto_3
.end method

.method private startDownloadingFiles([Lcom/eamobile/download/DownloadFileData;)Z
    .locals 12
    .param p1, "downloadFilesData"    # [Lcom/eamobile/download/DownloadFileData;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 913
    const/4 v5, 0x0

    .line 916
    .local v5, "success":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    :try_start_0
    array-length v6, p1

    if-ge v4, v6, :cond_2

    .line 918
    aget-object v3, p1, v4

    .line 919
    .local v3, "fileToDownload":Lcom/eamobile/download/DownloadFileData;
    invoke-virtual {v3}, Lcom/eamobile/download/DownloadFileData;->getType()I

    move-result v6

    if-ne v6, v11, :cond_9

    .line 921
    sget-boolean v6, Lcom/eamobile/download/DownloadActivityInternal;->UNCOMPRESS_ZIP_ON_DEVICE:Z

    if-nez v6, :cond_5

    .line 923
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File to download (ZIP): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/eamobile/download/DownloadFileData;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 924
    const-string v6, "Files will be downloaded using a ZipInputStream: will NOT be ale to resume"

    invoke-static {v6}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 926
    invoke-virtual {v3}, Lcom/eamobile/download/DownloadFileData;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, p1}, Lcom/eamobile/download/DownloadActivityInternal;->getChecksumsHashtable(Ljava/lang/String;[Lcom/eamobile/download/DownloadFileData;)Ljava/util/Hashtable;

    move-result-object v0

    .line 927
    .local v0, "checksums":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Long;>;"
    if-nez v0, :cond_0

    .line 929
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Problems getting checksums FILE_TYPE_ZIP for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/eamobile/download/DownloadFileData;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    move v6, v10

    .line 1053
    .end local v0    # "checksums":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v3    # "fileToDownload":Lcom/eamobile/download/DownloadFileData;
    :goto_1
    return v6

    .line 932
    .restart local v0    # "checksums":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v3    # "fileToDownload":Lcom/eamobile/download/DownloadFileData;
    :cond_0
    invoke-virtual {v3}, Lcom/eamobile/download/DownloadFileData;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/eamobile/download/DownloadActivityInternal;->isFileDownloaded(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 934
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Downloading file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/eamobile/download/DownloadFileData;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 935
    invoke-direct {p0, v3, v0}, Lcom/eamobile/download/DownloadActivityInternal;->downloadAndValidateZipFile(Lcom/eamobile/download/DownloadFileData;Ljava/util/Hashtable;)Z

    move-result v5

    .line 937
    if-eqz v5, :cond_1

    .line 939
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/eamobile/download/DownloadFileData;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/eamobile/download/DownloadFileData;->getVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/eamobile/download/DownloadActivityInternal;->saveState(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    sget-object v6, Lcom/eamobile/download/DownloadActivityInternal;->downloadProgress:Lcom/eamobile/download/DownloadProgress;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "n_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/eamobile/download/DownloadFileData;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/eamobile/download/DownloadFileData;->getSize()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v6, v7, v8, v9}, Lcom/eamobile/download/DownloadProgress;->setCurrentFile(Ljava/lang/String;J)V

    .line 942
    sget-object v6, Lcom/eamobile/download/DownloadActivityInternal;->downloadProgress:Lcom/eamobile/download/DownloadProgress;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/eamobile/download/DownloadProgress;->fillCurrentFileDownload(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 944
    :cond_1
    if-nez v5, :cond_4

    .line 1042
    .end local v0    # "checksums":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v3    # "fileToDownload":Lcom/eamobile/download/DownloadFileData;
    :cond_2
    :goto_2
    if-eqz v5, :cond_d

    .line 1044
    const-string v6, "PROGRESS"

    const-string v7, "COMPLETE"

    invoke-virtual {p0, v6, v7}, Lcom/eamobile/download/DownloadActivityInternal;->saveState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    const/16 v6, 0x64

    iput v6, p0, Lcom/eamobile/download/DownloadActivityInternal;->percent_downloaded:I

    .line 1046
    const-string v6, "EVERYTHING DOWNLOADED"

    invoke-static {v6}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    :goto_3
    move v6, v5

    .line 1053
    goto/16 :goto_1

    .line 949
    .restart local v0    # "checksums":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v3    # "fileToDownload":Lcom/eamobile/download/DownloadFileData;
    :cond_3
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File Already Downloaded:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/eamobile/download/DownloadFileData;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 951
    sget-object v6, Lcom/eamobile/download/DownloadActivityInternal;->downloadProgress:Lcom/eamobile/download/DownloadProgress;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "n_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/eamobile/download/DownloadFileData;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/eamobile/download/DownloadFileData;->getSize()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v6, v7, v8, v9}, Lcom/eamobile/download/DownloadProgress;->setCurrentFile(Ljava/lang/String;J)V

    .line 952
    sget-object v6, Lcom/eamobile/download/DownloadActivityInternal;->downloadProgress:Lcom/eamobile/download/DownloadProgress;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/eamobile/download/DownloadProgress;->fillCurrentFileDownload(Z)V

    .line 954
    const/4 v5, 0x1

    .line 916
    .end local v0    # "checksums":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_4
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 959
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File to download (ZIP): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/eamobile/download/DownloadFileData;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 960
    const-string v6, "Zip will be downloaded and uncompressed on device: resume is possible"

    invoke-static {v6}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 962
    invoke-virtual {v3}, Lcom/eamobile/download/DownloadFileData;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, p1}, Lcom/eamobile/download/DownloadActivityInternal;->getChecksumsHashtable(Ljava/lang/String;[Lcom/eamobile/download/DownloadFileData;)Ljava/util/Hashtable;

    move-result-object v0

    .line 963
    .restart local v0    # "checksums":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Long;>;"
    if-nez v0, :cond_6

    .line 965
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Problems getting checksums FILE_TYPE_ZIP for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/eamobile/download/DownloadFileData;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    move v6, v10

    .line 966
    goto/16 :goto_1

    .line 969
    :cond_6
    invoke-virtual {v3}, Lcom/eamobile/download/DownloadFileData;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/eamobile/download/DownloadActivityInternal;->isFileDownloaded(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 971
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Downloading file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/eamobile/download/DownloadFileData;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 973
    const/4 v5, 0x0

    .line 974
    const/4 v6, 0x0

    invoke-direct {p0, v3, v6}, Lcom/eamobile/download/DownloadActivityInternal;->downloadOtherFile(Lcom/eamobile/download/DownloadFileData;Ljava/util/Hashtable;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 976
    invoke-virtual {v3}, Lcom/eamobile/download/DownloadFileData;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v0}, Lcom/eamobile/download/DownloadActivityInternal;->extractAndValidateFilesFromZip(Ljava/lang/String;Ljava/util/Hashtable;)Z

    move-result v5

    .line 978
    new-instance v2, Ljava/io/File;

    invoke-virtual {v3}, Lcom/eamobile/download/DownloadFileData;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/eamobile/download/DownloadActivityInternal;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 979
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 986
    if-eqz v5, :cond_7

    .line 988
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/eamobile/download/DownloadFileData;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/eamobile/download/DownloadFileData;->getVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/eamobile/download/DownloadActivityInternal;->saveState(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    :cond_7
    if-nez v5, :cond_4

    goto/16 :goto_2

    .line 995
    .end local v2    # "f":Ljava/io/File;
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File Already Downloaded:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/eamobile/download/DownloadFileData;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 996
    const/4 v5, 0x1

    .line 998
    sget-object v6, Lcom/eamobile/download/DownloadActivityInternal;->downloadProgress:Lcom/eamobile/download/DownloadProgress;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "n_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/eamobile/download/DownloadFileData;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/eamobile/download/DownloadFileData;->getSize()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v6, v7, v8, v9}, Lcom/eamobile/download/DownloadProgress;->setCurrentFile(Ljava/lang/String;J)V

    .line 999
    sget-object v6, Lcom/eamobile/download/DownloadActivityInternal;->downloadProgress:Lcom/eamobile/download/DownloadProgress;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/eamobile/download/DownloadProgress;->fillCurrentFileDownload(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 1036
    .end local v0    # "checksums":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v3    # "fileToDownload":Lcom/eamobile/download/DownloadFileData;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 1038
    .local v1, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception while downloading files: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    move v6, v10

    .line 1039
    goto/16 :goto_1

    .line 1003
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "fileToDownload":Lcom/eamobile/download/DownloadFileData;
    :cond_9
    :try_start_2
    invoke-virtual {v3}, Lcom/eamobile/download/DownloadFileData;->getType()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_4

    .line 1005
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File to download (OTHER): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/eamobile/download/DownloadFileData;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 1007
    invoke-virtual {v3}, Lcom/eamobile/download/DownloadFileData;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, p1}, Lcom/eamobile/download/DownloadActivityInternal;->getChecksumsHashtable(Ljava/lang/String;[Lcom/eamobile/download/DownloadFileData;)Ljava/util/Hashtable;

    move-result-object v0

    .line 1008
    .restart local v0    # "checksums":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Long;>;"
    if-nez v0, :cond_a

    .line 1010
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Problems getting checksums FILE_TYPE_OTHER for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/eamobile/download/DownloadFileData;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    move v6, v10

    .line 1011
    goto/16 :goto_1

    .line 1014
    :cond_a
    invoke-virtual {v3}, Lcom/eamobile/download/DownloadFileData;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/eamobile/download/DownloadActivityInternal;->isFileDownloaded(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 1016
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Downloading file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/eamobile/download/DownloadFileData;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 1017
    invoke-direct {p0, v3, v0}, Lcom/eamobile/download/DownloadActivityInternal;->downloadOtherFile(Lcom/eamobile/download/DownloadFileData;Ljava/util/Hashtable;)Z

    move-result v5

    .line 1018
    if-eqz v5, :cond_b

    .line 1020
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/eamobile/download/DownloadFileData;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/eamobile/download/DownloadFileData;->getVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/eamobile/download/DownloadActivityInternal;->saveState(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    :cond_b
    if-nez v5, :cond_4

    goto/16 :goto_2

    .line 1027
    :cond_c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File Already Downloaded:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/eamobile/download/DownloadFileData;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 1028
    const/4 v5, 0x1

    .line 1030
    sget-object v6, Lcom/eamobile/download/DownloadActivityInternal;->downloadProgress:Lcom/eamobile/download/DownloadProgress;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "n_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/eamobile/download/DownloadFileData;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/eamobile/download/DownloadFileData;->getSize()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v6, v7, v8, v9}, Lcom/eamobile/download/DownloadProgress;->setCurrentFile(Ljava/lang/String;J)V

    .line 1031
    sget-object v6, Lcom/eamobile/download/DownloadActivityInternal;->downloadProgress:Lcom/eamobile/download/DownloadProgress;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/eamobile/download/DownloadProgress;->fillCurrentFileDownload(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_4

    .line 1050
    .end local v0    # "checksums":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v3    # "fileToDownload":Lcom/eamobile/download/DownloadFileData;
    :cond_d
    const-string v6, "DOWNLOAD COMPLETE BUT WITH ERROR."

    invoke-static {v6}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    goto/16 :goto_3
.end method


# virtual methods
.method public destroyDownloadActvity()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 690
    iget-object v0, p0, Lcom/eamobile/download/DownloadActivityInternal;->bmpBg:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/eamobile/download/DownloadActivityInternal;->bmpBg:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 693
    iput-object v1, p0, Lcom/eamobile/download/DownloadActivityInternal;->bmpBg:Landroid/graphics/Bitmap;

    .line 695
    :cond_0
    invoke-direct {p0}, Lcom/eamobile/download/DownloadActivityInternal;->cleanStates()V

    .line 696
    const/4 v0, 0x0

    sput-boolean v0, Lcom/eamobile/download/DownloadActivityInternal;->bLoaded:Z

    .line 697
    sput-object v1, Lcom/eamobile/download/DownloadActivityInternal;->instance:Landroid/app/Activity;

    .line 698
    sput-object v1, Lcom/eamobile/download/DownloadActivityInternal;->mMainActivity:Lcom/eamobile/download/DownloadActivityInternal;

    .line 699
    sput-object v1, Lcom/eamobile/download/DownloadActivityInternal;->downloadProgress:Lcom/eamobile/download/DownloadProgress;

    .line 700
    const/4 v0, -0x1

    sput v0, Lcom/eamobile/download/DownloadActivityInternal;->pState:I

    .line 701
    return-void
.end method

.method protected getAndroidUniqueId()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1467
    sget-object v4, Lcom/eamobile/download/DownloadActivityInternal;->instance:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "android_id"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1468
    .local v0, "android_id":Ljava/lang/String;
    sget-object v4, Lcom/eamobile/download/DownloadActivityInternal;->instance:Landroid/app/Activity;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1469
    .local v2, "mTelephonyMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 1470
    .local v1, "imei_msei":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1472
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "androidId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&imei="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1479
    .local v3, "resultString":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 1477
    .end local v3    # "resultString":Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "imei="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "resultString":Ljava/lang/String;
    goto :goto_0
.end method

.method protected getApplicationName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1530
    const-string v0, ""

    .line 1532
    .local v0, "name":Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/eamobile/download/DownloadActivityInternal;->instance:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v3, Lcom/eamobile/download/DownloadActivityInternal;->instance:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1533
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    sget-object v2, Lcom/eamobile/download/DownloadActivityInternal;->instance:Landroid/app/Activity;

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1536
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v0

    .line 1534
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected getBrand()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1514
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 1519
    .local v0, "brand":Ljava/lang/String;
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1525
    :goto_0
    return-object v0

    .line 1521
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected getDeviceString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1484
    const-string v2, "Unknown"

    .line 1488
    .local v2, "manufacturer":Ljava/lang/String;
    :try_start_0
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1496
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1501
    .local v0, "deviceString":Ljava/lang/String;
    :try_start_1
    const-string v3, "UTF-8"

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 1509
    :goto_1
    return-object v0

    .line 1490
    .end local v0    # "deviceString":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1493
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDeviceString Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    goto :goto_0

    .line 1503
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "deviceString":Ljava/lang/String;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 1506
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDeviceString Encode Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected getPercentDownloaded()I
    .locals 8

    .prologue
    const-wide/16 v6, 0x400

    const/16 v5, 0x64

    .line 496
    invoke-static {}, Lcom/eamobile/download/DownloadActivityInternal;->getSizeDownloaded()J

    move-result-wide v3

    div-long/2addr v3, v6

    div-long/2addr v3, v6

    long-to-float v0, v3

    .line 497
    .local v0, "downloadedMB":F
    sget v3, Lcom/eamobile/download/DownloadActivityInternal;->totalDownloadSizeMB:I

    int-to-float v3, v3

    div-float v3, v0, v3

    float-to-double v1, v3

    .line 499
    .local v1, "percent":D
    iget v3, p0, Lcom/eamobile/download/DownloadActivityInternal;->percent_downloaded:I

    if-lt v3, v5, :cond_0

    .line 500
    iput v5, p0, Lcom/eamobile/download/DownloadActivityInternal;->percent_downloaded:I

    .line 502
    :cond_0
    iget v3, p0, Lcom/eamobile/download/DownloadActivityInternal;->percent_downloaded:I

    if-ge v3, v5, :cond_1

    .line 503
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double/2addr v3, v1

    double-to-int v3, v3

    iput v3, p0, Lcom/eamobile/download/DownloadActivityInternal;->percent_downloaded:I

    .line 505
    :cond_1
    iget v3, p0, Lcom/eamobile/download/DownloadActivityInternal;->percent_downloaded:I

    return v3
.end method

.method protected getPreviousState()I
    .locals 1

    .prologue
    .line 673
    sget v0, Lcom/eamobile/download/DownloadActivityInternal;->pStatePrev:I

    return v0
.end method

.method public getRequiredSpaceForDownload()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/eamobile/download/DownloadActivityInternal;->TOTAL_SPACE_MB:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 668
    sget v0, Lcom/eamobile/download/DownloadActivityInternal;->pState:I

    return v0
.end method

.method public getTotalDownloadSize([Lcom/eamobile/download/DownloadFileData;)I
    .locals 5
    .param p1, "list"    # [Lcom/eamobile/download/DownloadFileData;

    .prologue
    .line 1735
    const/4 v3, 0x0

    sput v3, Lcom/eamobile/download/DownloadActivityInternal;->totalDownloadSizeMB:I

    .line 1736
    const/4 v2, 0x0

    .line 1738
    .local v2, "totalDownloadSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 1740
    aget-object v3, p1, v1

    invoke-virtual {v3}, Lcom/eamobile/download/DownloadFileData;->getSize()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    add-int/2addr v2, v3

    .line 1738
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1743
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 1744
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while CalCulating size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 1746
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    div-int/lit16 v3, v2, 0x400

    div-int/lit16 v3, v3, 0x400

    sput v3, Lcom/eamobile/download/DownloadActivityInternal;->totalDownloadSizeMB:I

    .line 1747
    sget v3, Lcom/eamobile/download/DownloadActivityInternal;->totalDownloadSizeMB:I

    return v3
.end method

.method public init(Landroid/app/Activity;Lcom/eamobile/download/IDownloadActivity;Landroid/content/Context;Ljava/lang/Object;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "downloadActivity"    # Lcom/eamobile/download/IDownloadActivity;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "glContext"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 203
    const-string v1, "Calling: DownloadActivityInternal init()"

    invoke-static {v1}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 205
    iput-object p3, p0, Lcom/eamobile/download/DownloadActivityInternal;->mContext:Landroid/content/Context;

    .line 207
    sget-object v1, Lcom/eamobile/download/DownloadActivityInternal;->instance:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 209
    sput-object p1, Lcom/eamobile/download/DownloadActivityInternal;->instance:Landroid/app/Activity;

    .line 210
    iput-object p2, p0, Lcom/eamobile/download/DownloadActivityInternal;->mDownloadActivity:Lcom/eamobile/download/IDownloadActivity;

    .line 213
    :cond_0
    invoke-direct {p0}, Lcom/eamobile/download/DownloadActivityInternal;->printDeviceAndAppInfo()V

    .line 216
    invoke-direct {p0}, Lcom/eamobile/download/DownloadActivityInternal;->checkLanguageChange()V

    .line 218
    invoke-direct {p0}, Lcom/eamobile/download/DownloadActivityInternal;->checkBackgroundImage()V

    .line 220
    sget-object v1, Lcom/eamobile/download/DownloadActivityInternal;->downloadProgress:Lcom/eamobile/download/DownloadProgress;

    if-nez v1, :cond_1

    .line 222
    new-instance v1, Lcom/eamobile/download/DownloadProgress;

    invoke-direct {v1}, Lcom/eamobile/download/DownloadProgress;-><init>()V

    sput-object v1, Lcom/eamobile/download/DownloadActivityInternal;->downloadProgress:Lcom/eamobile/download/DownloadProgress;

    .line 225
    :cond_1
    if-eqz p4, :cond_2

    .line 228
    :try_start_0
    instance-of v1, p4, Ljavax/microedition/khronos/opengles/GL10;

    if-eqz v1, :cond_3

    .line 230
    check-cast p4, Ljavax/microedition/khronos/opengles/GL10;

    .end local p4    # "glContext":Ljava/lang/Object;
    const/16 v1, 0x1f03

    invoke-interface {p4, v1}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eamobile/download/DownloadActivityInternal;->glExtensions:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/eamobile/download/DownloadActivityInternal;->loadConfigProperties()V

    .line 244
    sget-boolean v1, Lcom/eamobile/download/DownloadActivityInternal;->bLoaded:Z

    if-nez v1, :cond_6

    .line 246
    sput-boolean v3, Lcom/eamobile/download/DownloadActivityInternal;->bLoaded:Z

    .line 248
    invoke-direct {p0}, Lcom/eamobile/download/DownloadActivityInternal;->assetsFoundLocally()Z

    move-result v1

    if-nez v1, :cond_5

    .line 251
    invoke-virtual {p0}, Lcom/eamobile/download/DownloadActivityInternal;->isSpaceAvailableForDownload()Z

    move-result v1

    if-nez v1, :cond_4

    .line 253
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/eamobile/download/DownloadActivityInternal;->setState(I)V

    .line 269
    :goto_1
    return-void

    .line 232
    .restart local p4    # "glContext":Ljava/lang/Object;
    :cond_3
    :try_start_1
    instance-of v1, p4, Ljavax/microedition/khronos/opengles/GL11;

    if-eqz v1, :cond_2

    .line 234
    check-cast p4, Ljavax/microedition/khronos/opengles/GL11;

    .end local p4    # "glContext":Ljava/lang/Object;
    const/16 v1, 0x1f03

    invoke-interface {p4, v1}, Ljavax/microedition/khronos/opengles/GL11;->glGetString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eamobile/download/DownloadActivityInternal;->glExtensions:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 236
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 239
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while getting GL Extensions:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    goto :goto_0

    .line 257
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    invoke-virtual {p0, v3}, Lcom/eamobile/download/DownloadActivityInternal;->setState(I)V

    goto :goto_1

    .line 262
    :cond_5
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/eamobile/download/DownloadActivityInternal;->setState(I)V

    goto :goto_1

    .line 267
    :cond_6
    sget v1, Lcom/eamobile/download/DownloadActivityInternal;->pState:I

    invoke-virtual {p0, v1}, Lcom/eamobile/download/DownloadActivityInternal;->setState(I)V

    goto :goto_1
.end method

.method protected initScreens(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 465
    iget-object v0, p0, Lcom/eamobile/download/DownloadActivityInternal;->downloadMsgView:Lcom/eamobile/download/DownloadMsgView;

    if-nez v0, :cond_0

    .line 466
    new-instance v0, Lcom/eamobile/download/DownloadMsgView;

    invoke-direct {v0, p1}, Lcom/eamobile/download/DownloadMsgView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/eamobile/download/DownloadActivityInternal;->downloadMsgView:Lcom/eamobile/download/DownloadMsgView;

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/eamobile/download/DownloadActivityInternal;->showWifiView:Lcom/eamobile/download/ShowWifiView;

    if-nez v0, :cond_1

    .line 468
    new-instance v0, Lcom/eamobile/download/ShowWifiView;

    invoke-direct {v0, p1}, Lcom/eamobile/download/ShowWifiView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/eamobile/download/DownloadActivityInternal;->showWifiView:Lcom/eamobile/download/ShowWifiView;

    .line 469
    :cond_1
    iget-object v0, p0, Lcom/eamobile/download/DownloadActivityInternal;->networkUnavailableView:Lcom/eamobile/download/NetworkUnavailableView;

    if-nez v0, :cond_2

    .line 470
    new-instance v0, Lcom/eamobile/download/NetworkUnavailableView;

    invoke-direct {v0, p1}, Lcom/eamobile/download/NetworkUnavailableView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/eamobile/download/DownloadActivityInternal;->networkUnavailableView:Lcom/eamobile/download/NetworkUnavailableView;

    .line 471
    :cond_2
    iget-object v0, p0, Lcom/eamobile/download/DownloadActivityInternal;->downloadProgressView:Lcom/eamobile/download/DownloadProgressView;

    if-nez v0, :cond_3

    .line 472
    new-instance v0, Lcom/eamobile/download/DownloadProgressView;

    invoke-direct {v0, p1}, Lcom/eamobile/download/DownloadProgressView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/eamobile/download/DownloadActivityInternal;->downloadProgressView:Lcom/eamobile/download/DownloadProgressView;

    .line 473
    :cond_3
    iget-object v0, p0, Lcom/eamobile/download/DownloadActivityInternal;->downloadFailedView:Lcom/eamobile/download/DownloadFailedView;

    if-nez v0, :cond_4

    .line 474
    new-instance v0, Lcom/eamobile/download/DownloadFailedView;

    invoke-direct {v0, p1}, Lcom/eamobile/download/DownloadFailedView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/eamobile/download/DownloadActivityInternal;->downloadFailedView:Lcom/eamobile/download/DownloadFailedView;

    .line 475
    :cond_4
    iget-object v0, p0, Lcom/eamobile/download/DownloadActivityInternal;->spaceUnavailableView:Lcom/eamobile/download/SpaceUnavailableView;

    if-nez v0, :cond_5

    .line 476
    new-instance v0, Lcom/eamobile/download/SpaceUnavailableView;

    invoke-direct {v0, p1}, Lcom/eamobile/download/SpaceUnavailableView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/eamobile/download/DownloadActivityInternal;->spaceUnavailableView:Lcom/eamobile/download/SpaceUnavailableView;

    .line 477
    :cond_5
    iget-object v0, p0, Lcom/eamobile/download/DownloadActivityInternal;->checkUpadatesView:Lcom/eamobile/download/CheckUpdatesView;

    if-nez v0, :cond_6

    .line 478
    new-instance v0, Lcom/eamobile/download/CheckUpdatesView;

    invoke-direct {v0, p1}, Lcom/eamobile/download/CheckUpdatesView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/eamobile/download/DownloadActivityInternal;->checkUpadatesView:Lcom/eamobile/download/CheckUpdatesView;

    .line 479
    :cond_6
    iget-object v0, p0, Lcom/eamobile/download/DownloadActivityInternal;->updatesFoundView:Lcom/eamobile/download/UpdatesFoundView;

    if-nez v0, :cond_7

    .line 480
    new-instance v0, Lcom/eamobile/download/UpdatesFoundView;

    invoke-direct {v0, p1}, Lcom/eamobile/download/UpdatesFoundView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/eamobile/download/DownloadActivityInternal;->updatesFoundView:Lcom/eamobile/download/UpdatesFoundView;

    .line 481
    :cond_7
    iget-object v0, p0, Lcom/eamobile/download/DownloadActivityInternal;->show3GView:Lcom/eamobile/download/Show3GView;

    if-nez v0, :cond_8

    .line 482
    new-instance v0, Lcom/eamobile/download/Show3GView;

    invoke-direct {v0, p1}, Lcom/eamobile/download/Show3GView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/eamobile/download/DownloadActivityInternal;->show3GView:Lcom/eamobile/download/Show3GView;

    .line 483
    :cond_8
    iget-object v0, p0, Lcom/eamobile/download/DownloadActivityInternal;->showBGView:Lcom/eamobile/download/ShowBGView;

    if-nez v0, :cond_9

    .line 484
    new-instance v0, Lcom/eamobile/download/ShowBGView;

    invoke-direct {v0, p1}, Lcom/eamobile/download/ShowBGView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/eamobile/download/DownloadActivityInternal;->showBGView:Lcom/eamobile/download/ShowBGView;

    .line 485
    :cond_9
    iget-object v0, p0, Lcom/eamobile/download/DownloadActivityInternal;->unSupportedDeviceView:Lcom/eamobile/download/UnSupportedDeviceView;

    if-nez v0, :cond_a

    .line 486
    new-instance v0, Lcom/eamobile/download/UnSupportedDeviceView;

    invoke-direct {v0, p1}, Lcom/eamobile/download/UnSupportedDeviceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/eamobile/download/DownloadActivityInternal;->unSupportedDeviceView:Lcom/eamobile/download/UnSupportedDeviceView;

    .line 487
    :cond_a
    return-void
.end method

.method protected isSpaceAvailableForDownload()Z
    .locals 4

    .prologue
    .line 311
    invoke-static {}, Lcom/eamobile/download/MemoryStatus;->getAvailableExternalMemorySize()J

    move-result-wide v0

    sget v2, Lcom/eamobile/download/DownloadActivityInternal;->TOTAL_SPACE_MB:I

    mul-int/lit16 v2, v2, 0x400

    mul-int/lit16 v2, v2, 0x400

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 312
    const/4 v0, 0x0

    .line 313
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isWifiAvailable()Z
    .locals 6

    .prologue
    .line 831
    sget-object v4, Lcom/eamobile/download/DownloadActivityInternal;->instance:Landroid/app/Activity;

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 834
    .local v2, "wifi":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    .line 836
    .local v1, "isWifiAvailable":Z
    if-eqz v1, :cond_1

    .line 838
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 844
    .local v3, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v4

    sget-object v5, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    move v0, v4

    .local v0, "isCompleted":Z
    :goto_0
    move v4, v0

    .line 849
    .end local v0    # "isCompleted":Z
    .end local v3    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :goto_1
    return v4

    .line 844
    .restart local v3    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_0
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .end local v3    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_1
    move v4, v1

    .line 849
    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 678
    const-string v0, "DownloadActivityInternal.onDestroy()"

    invoke-static {v0}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 679
    invoke-direct {p0}, Lcom/eamobile/download/DownloadActivityInternal;->cleanStates()V

    .line 680
    sput-object v1, Lcom/eamobile/download/DownloadActivityInternal;->instance:Landroid/app/Activity;

    .line 681
    sput-object v1, Lcom/eamobile/download/DownloadActivityInternal;->downloadProgress:Lcom/eamobile/download/DownloadProgress;

    .line 682
    sput-object v1, Lcom/eamobile/download/DownloadActivityInternal;->mMainActivity:Lcom/eamobile/download/DownloadActivityInternal;

    .line 683
    sput-object v1, Lcom/eamobile/download/DownloadActivityInternal;->language:Lcom/eamobile/download/Language;

    .line 686
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x6

    const/4 v1, 0x4

    .line 427
    invoke-virtual {p0}, Lcom/eamobile/download/DownloadActivityInternal;->getState()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 429
    invoke-virtual {p0}, Lcom/eamobile/download/DownloadActivityInternal;->isWifiAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    invoke-direct {p0, v2}, Lcom/eamobile/download/DownloadActivityInternal;->cleanState(I)V

    .line 432
    invoke-virtual {p0, v3}, Lcom/eamobile/download/DownloadActivityInternal;->setState(I)V

    .line 461
    :goto_0
    return-void

    .line 435
    :cond_0
    invoke-virtual {p0, v2}, Lcom/eamobile/download/DownloadActivityInternal;->resumeState(I)V

    goto :goto_0

    .line 438
    :cond_1
    invoke-virtual {p0}, Lcom/eamobile/download/DownloadActivityInternal;->getState()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 440
    invoke-virtual {p0}, Lcom/eamobile/download/DownloadActivityInternal;->isSpaceAvailableForDownload()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 442
    invoke-direct {p0, v1}, Lcom/eamobile/download/DownloadActivityInternal;->cleanState(I)V

    .line 444
    invoke-direct {p0}, Lcom/eamobile/download/DownloadActivityInternal;->assetsFoundLocally()Z

    move-result v0

    if-nez v0, :cond_2

    .line 446
    invoke-virtual {p0, v3}, Lcom/eamobile/download/DownloadActivityInternal;->setState(I)V

    goto :goto_0

    .line 450
    :cond_2
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/eamobile/download/DownloadActivityInternal;->setState(I)V

    goto :goto_0

    .line 454
    :cond_3
    invoke-virtual {p0, v1}, Lcom/eamobile/download/DownloadActivityInternal;->resumeState(I)V

    goto :goto_0

    .line 459
    :cond_4
    invoke-virtual {p0}, Lcom/eamobile/download/DownloadActivityInternal;->getState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/eamobile/download/DownloadActivityInternal;->resumeState(I)V

    goto :goto_0
.end method

.method public resumeState(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    const/4 v4, -0x1

    .line 593
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DownloadActivityInternal resumeState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-ne p1, v4, :cond_0

    const-string v3, "STATE_INVALID"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 597
    packed-switch p1, :pswitch_data_0

    .line 640
    :goto_1
    :try_start_0
    new-instance v0, Lcom/eamobile/download/DownloadActivityInternal$2;

    invoke-direct {v0, p0}, Lcom/eamobile/download/DownloadActivityInternal$2;-><init>(Lcom/eamobile/download/DownloadActivityInternal;)V

    .line 656
    .local v0, "displayUpdate":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/eamobile/download/DownloadActivityInternal;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x14

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 657
    sput p1, Lcom/eamobile/download/DownloadActivityInternal;->pState:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 664
    .end local v0    # "displayUpdate":Ljava/lang/Runnable;
    :goto_2
    return-void

    .line 593
    :cond_0
    sget-object v3, Lcom/eamobile/download/DownloadActivityInternal;->STATE_STRINGS:[Ljava/lang/String;

    aget-object v3, v3, p1

    goto :goto_0

    .line 600
    :pswitch_0
    :try_start_1
    iget-object v2, p0, Lcom/eamobile/download/DownloadActivityInternal;->downloadMsgView:Lcom/eamobile/download/DownloadMsgView;

    iput-object v2, p0, Lcom/eamobile/download/DownloadActivityInternal;->pCurrentView:Lcom/eamobile/download/CustomView;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 659
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 662
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in Resuming State:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    goto :goto_2

    .line 603
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_2
    iget-object v2, p0, Lcom/eamobile/download/DownloadActivityInternal;->spaceUnavailableView:Lcom/eamobile/download/SpaceUnavailableView;

    iput-object v2, p0, Lcom/eamobile/download/DownloadActivityInternal;->pCurrentView:Lcom/eamobile/download/CustomView;

    goto :goto_1

    .line 606
    :pswitch_2
    iget-object v2, p0, Lcom/eamobile/download/DownloadActivityInternal;->showWifiView:Lcom/eamobile/download/ShowWifiView;

    iput-object v2, p0, Lcom/eamobile/download/DownloadActivityInternal;->pCurrentView:Lcom/eamobile/download/CustomView;

    goto :goto_1

    .line 609
    :pswitch_3
    iget-object v2, p0, Lcom/eamobile/download/DownloadActivityInternal;->networkUnavailableView:Lcom/eamobile/download/NetworkUnavailableView;

    iput-object v2, p0, Lcom/eamobile/download/DownloadActivityInternal;->pCurrentView:Lcom/eamobile/download/CustomView;

    goto :goto_1

    .line 612
    :pswitch_4
    iget-object v2, p0, Lcom/eamobile/download/DownloadActivityInternal;->downloadProgressView:Lcom/eamobile/download/DownloadProgressView;

    iput-object v2, p0, Lcom/eamobile/download/DownloadActivityInternal;->pCurrentView:Lcom/eamobile/download/CustomView;

    goto :goto_1

    .line 615
    :pswitch_5
    iget-object v2, p0, Lcom/eamobile/download/DownloadActivityInternal;->mDownloadActivity:Lcom/eamobile/download/IDownloadActivity;

    iget-object v3, p0, Lcom/eamobile/download/DownloadActivityInternal;->mAssetPath:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Lcom/eamobile/download/IDownloadActivity;->onResult(Ljava/lang/String;I)V

    .line 616
    invoke-static {}, Lcom/eamobile/download/Logging;->DEBUG_CLOSE()V

    goto :goto_2

    .line 619
    :pswitch_6
    iget-object v2, p0, Lcom/eamobile/download/DownloadActivityInternal;->checkUpadatesView:Lcom/eamobile/download/CheckUpdatesView;

    iput-object v2, p0, Lcom/eamobile/download/DownloadActivityInternal;->pCurrentView:Lcom/eamobile/download/CustomView;

    goto :goto_1

    .line 622
    :pswitch_7
    iget-object v2, p0, Lcom/eamobile/download/DownloadActivityInternal;->downloadFailedView:Lcom/eamobile/download/DownloadFailedView;

    iput-object v2, p0, Lcom/eamobile/download/DownloadActivityInternal;->pCurrentView:Lcom/eamobile/download/CustomView;

    goto :goto_1

    .line 625
    :pswitch_8
    iget-object v2, p0, Lcom/eamobile/download/DownloadActivityInternal;->updatesFoundView:Lcom/eamobile/download/UpdatesFoundView;

    iput-object v2, p0, Lcom/eamobile/download/DownloadActivityInternal;->pCurrentView:Lcom/eamobile/download/CustomView;

    goto :goto_1

    .line 628
    :pswitch_9
    iget-object v2, p0, Lcom/eamobile/download/DownloadActivityInternal;->show3GView:Lcom/eamobile/download/Show3GView;

    iput-object v2, p0, Lcom/eamobile/download/DownloadActivityInternal;->pCurrentView:Lcom/eamobile/download/CustomView;

    goto :goto_1

    .line 631
    :pswitch_a
    iget-object v2, p0, Lcom/eamobile/download/DownloadActivityInternal;->showBGView:Lcom/eamobile/download/ShowBGView;

    iput-object v2, p0, Lcom/eamobile/download/DownloadActivityInternal;->pCurrentView:Lcom/eamobile/download/CustomView;

    goto :goto_1

    .line 634
    :pswitch_b
    iget-object v2, p0, Lcom/eamobile/download/DownloadActivityInternal;->unSupportedDeviceView:Lcom/eamobile/download/UnSupportedDeviceView;

    iput-object v2, p0, Lcom/eamobile/download/DownloadActivityInternal;->pCurrentView:Lcom/eamobile/download/CustomView;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 597
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_7
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method protected saveState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "replaceString"    # Ljava/lang/String;

    .prologue
    .line 1771
    :try_start_0
    const-string v10, "Downloaded.indicate"

    invoke-direct {p0, v10}, Lcom/eamobile/download/DownloadActivityInternal;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1772
    .local v8, "path":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1773
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1775
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 v11, 0x2000

    invoke-direct {v9, v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 1776
    .local v9, "reader":Ljava/io/BufferedReader;
    const-string v4, ""

    .line 1777
    .local v4, "line":Ljava/lang/String;
    const-string v6, ""

    .line 1778
    .local v6, "oldtext":Ljava/lang/String;
    :goto_0
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1780
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 1782
    :cond_0
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 1783
    const-string v5, ""

    .line 1784
    .local v5, "newText":Ljava/lang/String;
    if-eqz p2, :cond_3

    .line 1785
    invoke-virtual {v6, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1793
    :goto_1
    move-object p1, v5

    .line 1796
    invoke-direct {p0, p1, v8}, Lcom/eamobile/download/DownloadActivityInternal;->exists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 1799
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1800
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1801
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1802
    :cond_1
    new-instance v3, Ljava/io/FileWriter;

    const/4 v10, 0x1

    invoke-direct {v3, v8, v10}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    .line 1803
    .local v3, "fstream":Ljava/io/FileWriter;
    new-instance v7, Ljava/io/BufferedWriter;

    const/16 v10, 0x2000

    invoke-direct {v7, v3, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 1805
    .local v7, "out":Ljava/io/BufferedWriter;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1806
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V

    .line 1832
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fstream":Ljava/io/FileWriter;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "newText":Ljava/lang/String;
    .end local v6    # "oldtext":Ljava/lang/String;
    .end local v7    # "out":Ljava/io/BufferedWriter;
    .end local v8    # "path":Ljava/lang/String;
    .end local v9    # "reader":Ljava/io/BufferedReader;
    :cond_2
    :goto_2
    return-void

    .line 1788
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "newText":Ljava/lang/String;
    .restart local v6    # "oldtext":Ljava/lang/String;
    .restart local v8    # "path":Ljava/lang/String;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :cond_3
    invoke-direct {p0, p1, v8}, Lcom/eamobile/download/DownloadActivityInternal;->exists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 1789
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_1

    .line 1791
    :cond_4
    move-object v5, p1

    goto :goto_1

    .line 1813
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "newText":Ljava/lang/String;
    .end local v6    # "oldtext":Ljava/lang/String;
    .end local v9    # "reader":Ljava/io/BufferedReader;
    :cond_5
    :try_start_1
    new-instance v10, Ljava/io/File;

    iget-object v11, p0, Lcom/eamobile/download/DownloadActivityInternal;->mAssetPath:Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1820
    :goto_3
    :try_start_2
    new-instance v3, Ljava/io/FileWriter;

    const/4 v10, 0x1

    invoke-direct {v3, v8, v10}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    .line 1821
    .restart local v3    # "fstream":Ljava/io/FileWriter;
    new-instance v7, Ljava/io/BufferedWriter;

    const/16 v10, 0x2000

    invoke-direct {v7, v3, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 1822
    .restart local v7    # "out":Ljava/io/BufferedWriter;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1823
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V

    .line 1824
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 1827
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fstream":Ljava/io/FileWriter;
    .end local v7    # "out":Ljava/io/BufferedWriter;
    .end local v8    # "path":Ljava/lang/String;
    :catch_0
    move-exception v10

    move-object v0, v10

    .line 1830
    .local v0, "e":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception while saving state to SDCard: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    goto :goto_2

    .line 1815
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v8    # "path":Ljava/lang/String;
    :catch_1
    move-exception v10

    move-object v0, v10

    .line 1818
    .local v0, "e":Ljava/lang/SecurityException;
    :try_start_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "saveState Security Exception:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3
.end method

.method public setAssetPath(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "assetPath"    # Ljava/lang/String;
    .param p2, "useExternalStorageDirectory"    # Z

    .prologue
    .line 189
    const-string v0, ""

    iput-object v0, p0, Lcom/eamobile/download/DownloadActivityInternal;->mAssetPath:Ljava/lang/String;

    .line 192
    if-eqz p2, :cond_0

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/eamobile/download/DownloadActivityInternal;->mAssetPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eamobile/download/DownloadActivityInternal;->mAssetPath:Ljava/lang/String;

    .line 197
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/eamobile/download/DownloadActivityInternal;->mAssetPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eamobile/download/DownloadActivityInternal;->mAssetPath:Ljava/lang/String;

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tsetAssetPath(), mAssetPath = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eamobile/download/DownloadActivityInternal;->mAssetPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public setState(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    const/4 v4, -0x1

    .line 510
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DownloadActivityInternal setState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-ne p1, v4, :cond_0

    const-string v3, "STATE_INVALID"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 514
    packed-switch p1, :pswitch_data_0

    .line 557
    :goto_1
    :try_start_0
    new-instance v0, Lcom/eamobile/download/DownloadActivityInternal$1;

    invoke-direct {v0, p0}, Lcom/eamobile/download/DownloadActivityInternal$1;-><init>(Lcom/eamobile/download/DownloadActivityInternal;)V

    .line 581
    .local v0, "displayUpdate":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/eamobile/download/DownloadActivityInternal;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x14

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 582
    sget v2, Lcom/eamobile/download/DownloadActivityInternal;->pState:I

    sput v2, Lcom/eamobile/download/DownloadActivityInternal;->pStatePrev:I

    .line 583
    sput p1, Lcom/eamobile/download/DownloadActivityInternal;->pState:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 589
    .end local v0    # "displayUpdate":Ljava/lang/Runnable;
    :goto_2
    return-void

    .line 510
    :cond_0
    sget-object v3, Lcom/eamobile/download/DownloadActivityInternal;->STATE_STRINGS:[Ljava/lang/String;

    aget-object v3, v3, p1

    goto :goto_0

    .line 517
    :pswitch_0
    :try_start_1
    iget-object v2, p0, Lcom/eamobile/download/DownloadActivityInternal;->downloadMsgView:Lcom/eamobile/download/DownloadMsgView;

    iput-object v2, p0, Lcom/eamobile/download/DownloadActivityInternal;->pCurrentView:Lcom/eamobile/download/CustomView;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 585
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 587
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in setState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    goto :goto_2

    .line 520
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_2
    iget-object v2, p0, Lcom/eamobile/download/DownloadActivityInternal;->spaceUnavailableView:Lcom/eamobile/download/SpaceUnavailableView;

    iput-object v2, p0, Lcom/eamobile/download/DownloadActivityInternal;->pCurrentView:Lcom/eamobile/download/CustomView;

    goto :goto_1

    .line 523
    :pswitch_2
    iget-object v2, p0, Lcom/eamobile/download/DownloadActivityInternal;->showWifiView:Lcom/eamobile/download/ShowWifiView;

    iput-object v2, p0, Lcom/eamobile/download/DownloadActivityInternal;->pCurrentView:Lcom/eamobile/download/CustomView;

    goto :goto_1

    .line 526
    :pswitch_3
    iget-object v2, p0, Lcom/eamobile/download/DownloadActivityInternal;->networkUnavailableView:Lcom/eamobile/download/NetworkUnavailableView;

    iput-object v2, p0, Lcom/eamobile/download/DownloadActivityInternal;->pCurrentView:Lcom/eamobile/download/CustomView;

    goto :goto_1

    .line 529
    :pswitch_4
    iget-object v2, p0, Lcom/eamobile/download/DownloadActivityInternal;->downloadProgressView:Lcom/eamobile/download/DownloadProgressView;

    iput-object v2, p0, Lcom/eamobile/download/DownloadActivityInternal;->pCurrentView:Lcom/eamobile/download/CustomView;

    goto :goto_1

    .line 532
    :pswitch_5
    iget-object v2, p0, Lcom/eamobile/download/DownloadActivityInternal;->mDownloadActivity:Lcom/eamobile/download/IDownloadActivity;

    iget-object v3, p0, Lcom/eamobile/download/DownloadActivityInternal;->mAssetPath:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Lcom/eamobile/download/IDownloadActivity;->onResult(Ljava/lang/String;I)V

    .line 533
    invoke-static {}, Lcom/eamobile/download/Logging;->DEBUG_CLOSE()V

    goto :goto_2

    .line 536
    :pswitch_6
    iget-object v2, p0, Lcom/eamobile/download/DownloadActivityInternal;->checkUpadatesView:Lcom/eamobile/download/CheckUpdatesView;

    iput-object v2, p0, Lcom/eamobile/download/DownloadActivityInternal;->pCurrentView:Lcom/eamobile/download/CustomView;

    goto :goto_1

    .line 539
    :pswitch_7
    iget-object v2, p0, Lcom/eamobile/download/DownloadActivityInternal;->downloadFailedView:Lcom/eamobile/download/DownloadFailedView;

    iput-object v2, p0, Lcom/eamobile/download/DownloadActivityInternal;->pCurrentView:Lcom/eamobile/download/CustomView;

    goto :goto_1

    .line 542
    :pswitch_8
    iget-object v2, p0, Lcom/eamobile/download/DownloadActivityInternal;->updatesFoundView:Lcom/eamobile/download/UpdatesFoundView;

    iput-object v2, p0, Lcom/eamobile/download/DownloadActivityInternal;->pCurrentView:Lcom/eamobile/download/CustomView;

    goto :goto_1

    .line 545
    :pswitch_9
    iget-object v2, p0, Lcom/eamobile/download/DownloadActivityInternal;->show3GView:Lcom/eamobile/download/Show3GView;

    iput-object v2, p0, Lcom/eamobile/download/DownloadActivityInternal;->pCurrentView:Lcom/eamobile/download/CustomView;

    goto :goto_1

    .line 548
    :pswitch_a
    iget-object v2, p0, Lcom/eamobile/download/DownloadActivityInternal;->showBGView:Lcom/eamobile/download/ShowBGView;

    iput-object v2, p0, Lcom/eamobile/download/DownloadActivityInternal;->pCurrentView:Lcom/eamobile/download/CustomView;

    goto :goto_1

    .line 551
    :pswitch_b
    iget-object v2, p0, Lcom/eamobile/download/DownloadActivityInternal;->unSupportedDeviceView:Lcom/eamobile/download/UnSupportedDeviceView;

    iput-object v2, p0, Lcom/eamobile/download/DownloadActivityInternal;->pCurrentView:Lcom/eamobile/download/CustomView;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 514
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_7
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method protected start3GManager()V
    .locals 2

    .prologue
    .line 860
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.NETWORK_OPERATOR_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 861
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/eamobile/download/DownloadActivityInternal;->instance:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 862
    return-void
.end method

.method protected startDataManagement()V
    .locals 2

    .prologue
    .line 866
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.MEMORY_CARD_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 867
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/eamobile/download/DownloadActivityInternal;->instance:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 868
    return-void
.end method

.method protected startDownload()Z
    .locals 4

    .prologue
    .line 895
    const-string v2, "startDownload"

    invoke-static {v2}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 898
    const-string v2, "PROGRESS"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/eamobile/download/DownloadActivityInternal;->saveState(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    invoke-direct {p0}, Lcom/eamobile/download/DownloadActivityInternal;->getDownloadFilesData()[Lcom/eamobile/download/DownloadFileData;

    move-result-object v0

    .line 900
    .local v0, "downloadFileData":[Lcom/eamobile/download/DownloadFileData;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 903
    invoke-virtual {p0, v0}, Lcom/eamobile/download/DownloadActivityInternal;->getTotalDownloadSize([Lcom/eamobile/download/DownloadFileData;)I

    move-result v2

    sput v2, Lcom/eamobile/download/DownloadActivityInternal;->totalDownloadSizeMB:I

    .line 904
    invoke-direct {p0, v0}, Lcom/eamobile/download/DownloadActivityInternal;->startDownloadingFiles([Lcom/eamobile/download/DownloadFileData;)Z

    move-result v1

    .line 905
    .local v1, "expectedResult":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startDownload expectedResult: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    move v2, v1

    .line 908
    .end local v1    # "expectedResult":Z
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected startGameActivity(I)V
    .locals 2
    .param p1, "result"    # I

    .prologue
    .line 1553
    iget-object v0, p0, Lcom/eamobile/download/DownloadActivityInternal;->mDownloadActivity:Lcom/eamobile/download/IDownloadActivity;

    iget-object v1, p0, Lcom/eamobile/download/DownloadActivityInternal;->mAssetPath:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/eamobile/download/IDownloadActivity;->onResult(Ljava/lang/String;I)V

    .line 1554
    invoke-static {}, Lcom/eamobile/download/Logging;->DEBUG_CLOSE()V

    .line 1555
    return-void
.end method

.method protected startWifiManager()V
    .locals 2

    .prologue
    .line 854
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 855
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/eamobile/download/DownloadActivityInternal;->instance:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 856
    return-void
.end method

.method protected test3GNetwork()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 872
    sget-object v2, Lcom/eamobile/download/DownloadActivityInternal;->instance:Landroid/app/Activity;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 874
    .local v0, "networkConnectivity":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 875
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 877
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v4, :cond_1

    :cond_0
    :goto_0
    move v2, v4

    .line 885
    :goto_1
    return v2

    .line 880
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 885
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected updateDownload()V
    .locals 0

    .prologue
    .line 890
    invoke-direct {p0}, Lcom/eamobile/download/DownloadActivityInternal;->prepareSDCard()V

    .line 891
    return-void
.end method

.method protected updateFound()Z
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 318
    const-string v12, "Calling: DownloadActivityInternal updateFound()"

    invoke-static {v12}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    .line 320
    const/4 v4, 0x0

    .line 321
    .local v4, "found":Z
    invoke-direct {p0}, Lcom/eamobile/download/DownloadActivityInternal;->getDownloadFilesData()[Lcom/eamobile/download/DownloadFileData;

    move-result-object v0

    .line 322
    .local v0, "downloadFileData":[Lcom/eamobile/download/DownloadFileData;
    if-eqz v0, :cond_3

    array-length v12, v0

    if-lez v12, :cond_3

    .line 325
    :try_start_0
    const-string v12, "Downloaded.indicate"

    invoke-direct {p0, v12}, Lcom/eamobile/download/DownloadActivityInternal;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 326
    .local v9, "path":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 327
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 329
    new-instance v7, Ljava/util/Hashtable;

    invoke-direct {v7}, Ljava/util/Hashtable;-><init>()V

    .line 330
    .local v7, "localFiles":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/FileReader;

    invoke-direct {v12, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 v13, 0x2000

    invoke-direct {v10, v12, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 331
    .local v10, "reader":Ljava/io/BufferedReader;
    const-string v6, ""

    .line 332
    .local v6, "line":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 334
    const-string v12, "COMPLETE"

    invoke-virtual {v6, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 336
    const-string v12, "\t"

    invoke-virtual {v6, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 337
    .local v11, "sLine":[Ljava/lang/String;
    const/4 v12, 0x0

    aget-object v12, v11, v12

    const/4 v13, 0x1

    aget-object v13, v11, v13

    invoke-virtual {v7, v12, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 353
    .end local v3    # "file":Ljava/io/File;
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "localFiles":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "path":Ljava/lang/String;
    .end local v10    # "reader":Ljava/io/BufferedReader;
    .end local v11    # "sLine":[Ljava/lang/String;
    :catch_0
    move-exception v12

    move-object v1, v12

    .line 355
    .local v1, "e":Ljava/lang/Exception;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception while getting Updates:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/eamobile/download/Logging;->DEBUG_OUT(Ljava/lang/String;)V

    move v12, v14

    .line 360
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return v12

    .line 340
    .restart local v3    # "file":Ljava/io/File;
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v7    # "localFiles":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v9    # "path":Ljava/lang/String;
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    :cond_1
    :try_start_1
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    .line 342
    invoke-virtual {v7}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 343
    .local v2, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    const-string v8, ""

    .line 344
    .local v8, "localVersion":Ljava/lang/String;
    :goto_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 345
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 346
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {v7, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "localVersion":Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 347
    .restart local v8    # "localVersion":Ljava/lang/String;
    goto :goto_2

    .line 348
    .end local v5    # "key":Ljava/lang/String;
    :cond_2
    const/4 v12, 0x0

    aget-object v12, v0, v12

    invoke-virtual {v12}, Lcom/eamobile/download/DownloadFileData;->getVersion()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v8, v12}, Lcom/eamobile/download/DownloadActivityInternal;->isServerVersionHigher(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v12

    if-eqz v12, :cond_3

    .line 350
    const/4 v4, 0x1

    .end local v2    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v3    # "file":Ljava/io/File;
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "localFiles":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "localVersion":Ljava/lang/String;
    .end local v9    # "path":Ljava/lang/String;
    .end local v10    # "reader":Ljava/io/BufferedReader;
    :cond_3
    move v12, v4

    .line 360
    goto :goto_1
.end method

.method public useCustomProgressBar()Z
    .locals 1

    .prologue
    .line 273
    sget-boolean v0, Lcom/eamobile/download/DownloadActivityInternal;->CUSTOM_PROGRESS_BAR:Z

    return v0
.end method
