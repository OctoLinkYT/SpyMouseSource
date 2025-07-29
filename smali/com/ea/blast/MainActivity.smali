.class public Lcom/ea/blast/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# static fields
.field private static final DEBUG_LOG_ENABLED:Z = false

.field private static final DEBUG_LOG_TAG:Ljava/lang/String; = "EAMCore/MainActivity"

.field protected static activityExists:Z

.field protected static activitySuspended:Z

.field public static instance:Lcom/ea/blast/MainActivity;


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConfigurationOrientation:I

.field public mFrameLayout:Landroid/widget/FrameLayout;

.field public mGLView:Lcom/ea/blast/MainView;

.field private mPhysicalKeyboard:Lcom/ea/blast/PhysicalKeyboardAndroid;

.field private mTouchSurface:Lcom/ea/blast/TouchSurfaceAndroid;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    sput-boolean v0, Lcom/ea/blast/MainActivity;->activityExists:Z

    .line 61
    sput-boolean v0, Lcom/ea/blast/MainActivity;->activitySuspended:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/ea/blast/MainActivity;->mConfigurationOrientation:I

    .line 239
    new-instance v0, Lcom/ea/blast/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/ea/blast/MainActivity$1;-><init>(Lcom/ea/blast/MainActivity;)V

    iput-object v0, p0, Lcom/ea/blast/MainActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private ForceHideVirtualKeyboard()V
    .locals 4

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 212
    .local v0, "currentFocus":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 214
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/ea/blast/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 217
    :cond_0
    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 218
    return-void
.end method

.method public static GetInstance()Lcom/ea/blast/MainActivity;
    .locals 1

    .prologue
    .line 349
    sget-object v0, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    return-object v0
.end method

.method private Log(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 359
    return-void
.end method

.method private SetCommonPreferences()V
    .locals 3

    .prologue
    const/16 v2, 0x400

    const/4 v1, 0x3

    .line 335
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ea/blast/MainActivity;->requestWindowFeature(I)Z

    .line 336
    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 339
    invoke-virtual {p0, v1}, Lcom/ea/blast/MainActivity;->setVolumeControlStream(I)V

    .line 342
    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 343
    return-void
.end method


# virtual methods
.method public IsAppInstalledOnSdCard()Z
    .locals 7

    .prologue
    const/high16 v6, 0x40000

    const/4 v5, 0x0

    .line 223
    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 226
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 227
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr v3, v6

    if-ne v3, v6, :cond_0

    const/4 v3, 0x1

    .line 235
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return v3

    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    move v3, v5

    .line 227
    goto :goto_0

    .line 229
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 232
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move v3, v5

    .line 235
    goto :goto_0
.end method

.method public native NativeGetExitCode()I
.end method

.method public native NativeOnCreate()V
.end method

.method public native NativeOnLowMemory()V
.end method

.method public native NativeOnOrientationChanged()V
.end method

.method public native NativeOnPause()V
.end method

.method public native NativeOnResume()V
.end method

.method public native NativeOnStop()V
.end method

.method public native NativeOnWindowFocusChanged(Z)V
.end method

.method public native NativeOsExit()V
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 284
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 315
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 316
    const-string v0, "onConfigurationChanged"

    invoke-direct {p0, v0}, Lcom/ea/blast/MainActivity;->Log(Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/ea/blast/MainActivity;->mPhysicalKeyboard:Lcom/ea/blast/PhysicalKeyboardAndroid;

    invoke-virtual {v0, p1}, Lcom/ea/blast/PhysicalKeyboardAndroid;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 321
    iget v0, p0, Lcom/ea/blast/MainActivity;->mConfigurationOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 323
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/ea/blast/MainActivity;->mConfigurationOrientation:I

    .line 324
    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->NativeOnOrientationChanged()V

    .line 326
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 82
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const-string v1, "onCreate"

    invoke-direct {p0, v1}, Lcom/ea/blast/MainActivity;->Log(Ljava/lang/String;)V

    .line 85
    sget-boolean v1, Lcom/ea/blast/MainActivity;->activityExists:Z

    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->NativeOsExit()V

    .line 91
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 127
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-direct {p0}, Lcom/ea/blast/MainActivity;->SetCommonPreferences()V

    .line 96
    sput-object p0, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    .line 99
    invoke-static {p0}, Lcom/ea/EAIO/EAIO;->Startup(Landroid/app/Activity;)V

    .line 100
    invoke-static {p0}, Lcom/ea/EAMIO/StorageDirectory;->Startup(Landroid/app/Activity;)V

    .line 103
    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->NativeOnCreate()V

    .line 106
    new-instance v1, Lcom/ea/blast/MainView;

    invoke-direct {v1, p0}, Lcom/ea/blast/MainView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ea/blast/MainActivity;->mGLView:Lcom/ea/blast/MainView;

    .line 107
    iget-object v1, p0, Lcom/ea/blast/MainActivity;->mGLView:Lcom/ea/blast/MainView;

    invoke-virtual {v1, v3}, Lcom/ea/blast/MainView;->setFocusable(Z)V

    .line 108
    iget-object v1, p0, Lcom/ea/blast/MainActivity;->mGLView:Lcom/ea/blast/MainView;

    invoke-virtual {v1, v3}, Lcom/ea/blast/MainView;->setFocusableInTouchMode(Z)V

    .line 110
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ea/blast/MainActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 111
    iget-object v1, p0, Lcom/ea/blast/MainActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/ea/blast/MainActivity;->mGLView:Lcom/ea/blast/MainView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 113
    iget-object v1, p0, Lcom/ea/blast/MainActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Lcom/ea/blast/MainActivity;->setContentView(Landroid/view/View;)V

    .line 116
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 117
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 118
    const-string v1, "*"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/ea/blast/MainActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/ea/blast/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 123
    new-instance v1, Lcom/ea/blast/PhysicalKeyboardAndroid;

    invoke-direct {v1}, Lcom/ea/blast/PhysicalKeyboardAndroid;-><init>()V

    iput-object v1, p0, Lcom/ea/blast/MainActivity;->mPhysicalKeyboard:Lcom/ea/blast/PhysicalKeyboardAndroid;

    .line 124
    new-instance v1, Lcom/ea/blast/TouchSurfaceAndroid;

    invoke-direct {v1}, Lcom/ea/blast/TouchSurfaceAndroid;-><init>()V

    iput-object v1, p0, Lcom/ea/blast/MainActivity;->mTouchSurface:Lcom/ea/blast/TouchSurfaceAndroid;

    .line 125
    sput-boolean v3, Lcom/ea/blast/MainActivity;->activityExists:Z

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 178
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 179
    const-string v0, "onDestroy"

    invoke-direct {p0, v0}, Lcom/ea/blast/MainActivity;->Log(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/ea/blast/MainActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/ea/blast/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 183
    invoke-static {}, Lcom/ea/EAMIO/StorageDirectory;->Shutdown()V

    .line 184
    invoke-static {}, Lcom/ea/EAIO/EAIO;->Shutdown()V

    .line 186
    iget-object v0, p0, Lcom/ea/blast/MainActivity;->mGLView:Lcom/ea/blast/MainView;

    invoke-virtual {v0}, Lcom/ea/blast/MainView;->onDestroy()V

    .line 187
    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->NativeGetExitCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 188
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 264
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 265
    iget-object v0, p0, Lcom/ea/blast/MainActivity;->mPhysicalKeyboard:Lcom/ea/blast/PhysicalKeyboardAndroid;

    invoke-virtual {v0, p1, p2}, Lcom/ea/blast/PhysicalKeyboardAndroid;->OnKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 274
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 275
    iget-object v0, p0, Lcom/ea/blast/MainActivity;->mPhysicalKeyboard:Lcom/ea/blast/PhysicalKeyboardAndroid;

    invoke-virtual {v0, p1, p2}, Lcom/ea/blast/PhysicalKeyboardAndroid;->OnKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 203
    const-string v0, "onLowMemory"

    invoke-direct {p0, v0}, Lcom/ea/blast/MainActivity;->Log(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->NativeOnLowMemory()V

    .line 205
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 149
    const-string v0, "onPause..."

    invoke-direct {p0, v0}, Lcom/ea/blast/MainActivity;->Log(Ljava/lang/String;)V

    .line 150
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ea/blast/MainActivity;->activitySuspended:Z

    .line 151
    invoke-direct {p0}, Lcom/ea/blast/MainActivity;->ForceHideVirtualKeyboard()V

    .line 152
    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->NativeOnPause()V

    .line 153
    iget-object v0, p0, Lcom/ea/blast/MainActivity;->mGLView:Lcom/ea/blast/MainView;

    invoke-virtual {v0}, Lcom/ea/blast/MainView;->onPause()V

    .line 154
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 155
    const-string v0, "...onPause"

    invoke-direct {p0, v0}, Lcom/ea/blast/MainActivity;->Log(Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 135
    const-string v0, "onResume..."

    invoke-direct {p0, v0}, Lcom/ea/blast/MainActivity;->Log(Ljava/lang/String;)V

    .line 136
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ea/blast/MainActivity;->activitySuspended:Z

    .line 137
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 138
    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->NativeOnResume()V

    .line 139
    iget-object v0, p0, Lcom/ea/blast/MainActivity;->mGLView:Lcom/ea/blast/MainView;

    invoke-virtual {v0}, Lcom/ea/blast/MainView;->onResume()V

    .line 140
    const-string v0, "...onResume"

    invoke-direct {p0, v0}, Lcom/ea/blast/MainActivity;->Log(Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 306
    const-string v0, "onSaveInstanceState"

    invoke-direct {p0, v0}, Lcom/ea/blast/MainActivity;->Log(Ljava/lang/String;)V

    .line 307
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 164
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 165
    const-string v0, "onStop"

    invoke-direct {p0, v0}, Lcom/ea/blast/MainActivity;->Log(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lcom/ea/blast/MainActivity;->NativeOnStop()V

    .line 167
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/ea/blast/MainActivity;->mTouchSurface:Lcom/ea/blast/TouchSurfaceAndroid;

    invoke-virtual {v0, p1}, Lcom/ea/blast/TouchSurfaceAndroid;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 293
    const/4 v0, 0x1

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 194
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 195
    const-string v0, "onWindowFocusChanged"

    invoke-direct {p0, v0}, Lcom/ea/blast/MainActivity;->Log(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0, p1}, Lcom/ea/blast/MainActivity;->NativeOnWindowFocusChanged(Z)V

    .line 197
    return-void
.end method
