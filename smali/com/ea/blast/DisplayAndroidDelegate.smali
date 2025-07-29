.class Lcom/ea/blast/DisplayAndroidDelegate;
.super Ljava/lang/Object;
.source "DisplayAndroidDelegate.java"


# static fields
.field private static final kOrientationNormal:I

.field private static final kOrientationRotatedLeft:I

.field private static final kOrientationRotatedRight:I

.field private static final kOrientationUnknown:I

.field private static final kOrientationUpsideDown:I


# instance fields
.field private final mDefaultHeight:I

.field private final mDefaultWidth:I

.field private mDisplay:Landroid/view/Display;

.field private final mDpiX:F

.field private final mDpiY:F

.field private final mPortraitByDefault:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcom/ea/blast/DisplayAndroidDelegate;->NativeGetOrientationNormal()I

    move-result v0

    sput v0, Lcom/ea/blast/DisplayAndroidDelegate;->kOrientationNormal:I

    .line 18
    invoke-static {}, Lcom/ea/blast/DisplayAndroidDelegate;->NativeGetOrientationUpsideDown()I

    move-result v0

    sput v0, Lcom/ea/blast/DisplayAndroidDelegate;->kOrientationUpsideDown:I

    .line 19
    invoke-static {}, Lcom/ea/blast/DisplayAndroidDelegate;->NativeGetOrientationRotatedLeft()I

    move-result v0

    sput v0, Lcom/ea/blast/DisplayAndroidDelegate;->kOrientationRotatedLeft:I

    .line 20
    invoke-static {}, Lcom/ea/blast/DisplayAndroidDelegate;->NativeGetOrientationRotatedRight()I

    move-result v0

    sput v0, Lcom/ea/blast/DisplayAndroidDelegate;->kOrientationRotatedRight:I

    .line 21
    invoke-static {}, Lcom/ea/blast/DisplayAndroidDelegate;->NativeGetOrientationUnknown()I

    move-result v0

    sput v0, Lcom/ea/blast/DisplayAndroidDelegate;->kOrientationUnknown:I

    return-void
.end method

.method constructor <init>()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v6, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    invoke-virtual {v6}, Lcom/ea/blast/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    iput-object v6, p0, Lcom/ea/blast/DisplayAndroidDelegate;->mDisplay:Landroid/view/Display;

    .line 36
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 37
    .local v3, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v6, p0, Lcom/ea/blast/DisplayAndroidDelegate;->mDisplay:Landroid/view/Display;

    invoke-virtual {v6, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 39
    iget-object v6, p0, Lcom/ea/blast/DisplayAndroidDelegate;->mDisplay:Landroid/view/Display;

    invoke-virtual {v6}, Landroid/view/Display;->getOrientation()I

    move-result v4

    .line 40
    .local v4, "displayOrientation":I
    if-eq v4, v7, :cond_0

    const/4 v6, 0x3

    if-ne v4, v6, :cond_3

    :cond_0
    move v5, v7

    .line 41
    .local v5, "displayRotated":Z
    :goto_0
    iget v1, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 42
    .local v1, "currentWidth":I
    iget v0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 43
    .local v0, "currentHeight":I
    if-lt v0, v1, :cond_4

    move v2, v7

    .line 44
    .local v2, "currentlyPortrait":Z
    :goto_1
    if-eqz v2, :cond_1

    if-eqz v5, :cond_2

    :cond_1
    if-nez v2, :cond_5

    if-eqz v5, :cond_5

    :cond_2
    move v6, v7

    :goto_2
    iput-boolean v6, p0, Lcom/ea/blast/DisplayAndroidDelegate;->mPortraitByDefault:Z

    .line 47
    iget v6, v3, Landroid/util/DisplayMetrics;->xdpi:F

    iput v6, p0, Lcom/ea/blast/DisplayAndroidDelegate;->mDpiX:F

    .line 48
    iget v6, v3, Landroid/util/DisplayMetrics;->ydpi:F

    iput v6, p0, Lcom/ea/blast/DisplayAndroidDelegate;->mDpiY:F

    .line 51
    iget-boolean v6, p0, Lcom/ea/blast/DisplayAndroidDelegate;->mPortraitByDefault:Z

    if-eqz v6, :cond_6

    .line 53
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, p0, Lcom/ea/blast/DisplayAndroidDelegate;->mDefaultWidth:I

    .line 54
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lcom/ea/blast/DisplayAndroidDelegate;->mDefaultHeight:I

    .line 55
    sget-object v6, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    invoke-virtual {v6, v7}, Lcom/ea/blast/MainActivity;->setRequestedOrientation(I)V

    .line 63
    :goto_3
    return-void

    .end local v0    # "currentHeight":I
    .end local v1    # "currentWidth":I
    .end local v2    # "currentlyPortrait":Z
    .end local v5    # "displayRotated":Z
    :cond_3
    move v5, v8

    .line 40
    goto :goto_0

    .restart local v0    # "currentHeight":I
    .restart local v1    # "currentWidth":I
    .restart local v5    # "displayRotated":Z
    :cond_4
    move v2, v8

    .line 43
    goto :goto_1

    .restart local v2    # "currentlyPortrait":Z
    :cond_5
    move v6, v8

    .line 44
    goto :goto_2

    .line 59
    :cond_6
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lcom/ea/blast/DisplayAndroidDelegate;->mDefaultWidth:I

    .line 60
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, p0, Lcom/ea/blast/DisplayAndroidDelegate;->mDefaultHeight:I

    .line 61
    sget-object v6, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    invoke-virtual {v6, v8}, Lcom/ea/blast/MainActivity;->setRequestedOrientation(I)V

    goto :goto_3
.end method

.method public static native NativeGetOrientationNormal()I
.end method

.method public static native NativeGetOrientationRotatedLeft()I
.end method

.method public static native NativeGetOrientationRotatedRight()I
.end method

.method public static native NativeGetOrientationUnknown()I
.end method

.method public static native NativeGetOrientationUpsideDown()I
.end method


# virtual methods
.method public GetDefaultHeight()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/ea/blast/DisplayAndroidDelegate;->mDefaultHeight:I

    return v0
.end method

.method public GetDefaultWidth()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/ea/blast/DisplayAndroidDelegate;->mDefaultWidth:I

    return v0
.end method

.method public GetDpiX()F
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/ea/blast/DisplayAndroidDelegate;->mDpiX:F

    return v0
.end method

.method public GetDpiY()F
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/ea/blast/DisplayAndroidDelegate;->mDpiY:F

    return v0
.end method

.method public GetStdOrientation()I
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/ea/blast/DisplayAndroidDelegate;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 122
    sget v0, Lcom/ea/blast/DisplayAndroidDelegate;->kOrientationUnknown:I

    :goto_0
    return v0

    .line 118
    :pswitch_0
    sget v0, Lcom/ea/blast/DisplayAndroidDelegate;->kOrientationNormal:I

    goto :goto_0

    .line 119
    :pswitch_1
    sget v0, Lcom/ea/blast/DisplayAndroidDelegate;->kOrientationRotatedRight:I

    goto :goto_0

    .line 120
    :pswitch_2
    sget v0, Lcom/ea/blast/DisplayAndroidDelegate;->kOrientationUpsideDown:I

    goto :goto_0

    .line 121
    :pswitch_3
    sget v0, Lcom/ea/blast/DisplayAndroidDelegate;->kOrientationRotatedLeft:I

    goto :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public SetStdOrientation(I)V
    .locals 4
    .param p1, "stdOrientation"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    sget v1, Lcom/ea/blast/DisplayAndroidDelegate;->kOrientationNormal:I

    if-eq p1, v1, :cond_0

    sget v1, Lcom/ea/blast/DisplayAndroidDelegate;->kOrientationUpsideDown:I

    if-ne p1, v1, :cond_2

    .line 75
    :cond_0
    iget-boolean v1, p0, Lcom/ea/blast/DisplayAndroidDelegate;->mPortraitByDefault:Z

    if-eqz v1, :cond_1

    move v0, v3

    .line 82
    .local v0, "orientation":I
    :goto_0
    sget-object v1, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    invoke-virtual {v1, v0}, Lcom/ea/blast/MainActivity;->setRequestedOrientation(I)V

    .line 83
    return-void

    .end local v0    # "orientation":I
    :cond_1
    move v0, v2

    .line 75
    goto :goto_0

    .line 79
    :cond_2
    iget-boolean v1, p0, Lcom/ea/blast/DisplayAndroidDelegate;->mPortraitByDefault:Z

    if-eqz v1, :cond_3

    move v0, v2

    .restart local v0    # "orientation":I
    :goto_1
    goto :goto_0

    .end local v0    # "orientation":I
    :cond_3
    move v0, v3

    goto :goto_1
.end method
