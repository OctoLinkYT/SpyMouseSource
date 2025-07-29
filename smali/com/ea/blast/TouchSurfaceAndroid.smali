.class Lcom/ea/blast/TouchSurfaceAndroid;
.super Ljava/lang/Object;
.source "TouchSurfaceAndroid.java"


# static fields
.field private static final UI_SLEEP_TIME:I = 0xc

.field private static final kIdRawPointerCancel:I

.field private static final kIdRawPointerDown:I

.field private static final kIdRawPointerMove:I

.field private static final kIdRawPointerUp:I

.field private static final kIdUndefined:I


# instance fields
.field private kMotionEvent_GetSource:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/ea/blast/TouchSurfaceAndroid;->NativeGetIdUndefined()I

    move-result v0

    sput v0, Lcom/ea/blast/TouchSurfaceAndroid;->kIdUndefined:I

    .line 20
    invoke-static {}, Lcom/ea/blast/TouchSurfaceAndroid;->NativeGetIdRawPointerCancel()I

    move-result v0

    sput v0, Lcom/ea/blast/TouchSurfaceAndroid;->kIdRawPointerCancel:I

    .line 21
    invoke-static {}, Lcom/ea/blast/TouchSurfaceAndroid;->NativeGetIdRawPointerDown()I

    move-result v0

    sput v0, Lcom/ea/blast/TouchSurfaceAndroid;->kIdRawPointerDown:I

    .line 22
    invoke-static {}, Lcom/ea/blast/TouchSurfaceAndroid;->NativeGetIdRawPointerMove()I

    move-result v0

    sput v0, Lcom/ea/blast/TouchSurfaceAndroid;->kIdRawPointerMove:I

    .line 23
    invoke-static {}, Lcom/ea/blast/TouchSurfaceAndroid;->NativeGetIdRawPointerUp()I

    move-result v0

    sput v0, Lcom/ea/blast/TouchSurfaceAndroid;->kIdRawPointerUp:I

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean v1, p0, Lcom/ea/blast/TouchSurfaceAndroid;->kMotionEvent_GetSource:Z

    .line 36
    :try_start_0
    const-class v1, Landroid/view/MotionEvent;

    const-string v2, "getSource"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 37
    .local v0, "m":Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ea/blast/TouchSurfaceAndroid;->kMotionEvent_GetSource:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .end local v0    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static ActionToRawEvent(I)I
    .locals 1
    .param p0, "action"    # I

    .prologue
    .line 89
    packed-switch p0, :pswitch_data_0

    .line 97
    :pswitch_0
    sget v0, Lcom/ea/blast/TouchSurfaceAndroid;->kIdUndefined:I

    :goto_0
    return v0

    .line 91
    :pswitch_1
    sget v0, Lcom/ea/blast/TouchSurfaceAndroid;->kIdRawPointerDown:I

    goto :goto_0

    .line 92
    :pswitch_2
    sget v0, Lcom/ea/blast/TouchSurfaceAndroid;->kIdRawPointerUp:I

    goto :goto_0

    .line 93
    :pswitch_3
    sget v0, Lcom/ea/blast/TouchSurfaceAndroid;->kIdRawPointerMove:I

    goto :goto_0

    .line 94
    :pswitch_4
    sget v0, Lcom/ea/blast/TouchSurfaceAndroid;->kIdRawPointerCancel:I

    goto :goto_0

    .line 95
    :pswitch_5
    sget v0, Lcom/ea/blast/TouchSurfaceAndroid;->kIdRawPointerDown:I

    goto :goto_0

    .line 96
    :pswitch_6
    sget v0, Lcom/ea/blast/TouchSurfaceAndroid;->kIdRawPointerUp:I

    goto :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private GetActionIndex(Landroid/view/MotionEvent;)I
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 49
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method private GetActionMasked(Landroid/view/MotionEvent;)I
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private GetBlastModuleId(Landroid/view/MotionEvent;)I
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/ea/blast/TouchSurfaceAndroid;->kMotionEvent_GetSource:Z

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 73
    sget v0, Lcom/ea/blast/ModuleCatalog;->kModuleTypeIdInvalid:I

    .line 79
    :goto_0
    return v0

    .line 70
    :sswitch_0
    sget v0, Lcom/ea/blast/ModuleCatalog;->kModuleTypeIdTouchPad:I

    goto :goto_0

    .line 71
    :sswitch_1
    sget v0, Lcom/ea/blast/ModuleCatalog;->kModuleTypeIdTouchScreen:I

    goto :goto_0

    .line 72
    :sswitch_2
    sget v0, Lcom/ea/blast/ModuleCatalog;->kModuleTypeIdTouchScreen:I

    goto :goto_0

    .line 79
    :cond_0
    sget v0, Lcom/ea/blast/ModuleCatalog;->kModuleTypeIdTouchScreen:I

    goto :goto_0

    .line 68
    :sswitch_data_0
    .sparse-switch
        0x1002 -> :sswitch_1
        0x2002 -> :sswitch_2
        0x100008 -> :sswitch_0
    .end sparse-switch
.end method

.method public static IsTouchScreenMultiTouch()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 147
    sget-object v1, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    invoke-virtual {v1}, Lcom/ea/blast/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 148
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    const-string v1, "android.hardware.touchscreen.multitouch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    .line 156
    :goto_0
    return v1

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static native NativeGetIdRawPointerCancel()I
.end method

.method protected static native NativeGetIdRawPointerDown()I
.end method

.method protected static native NativeGetIdRawPointerMove()I
.end method

.method protected static native NativeGetIdRawPointerUp()I
.end method

.method protected static native NativeGetIdUndefined()I
.end method

.method protected static native NativeOnPointerEvent(IIIFF)V
.end method

.method private SendRawPointerEvent(Landroid/view/MotionEvent;III)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "index"    # I
    .param p3, "rawEvent"    # I
    .param p4, "moduleId"    # I

    .prologue
    .line 105
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 106
    .local v0, "pointerId":I
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 107
    .local v1, "x":F
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 108
    .local v2, "y":F
    invoke-static {p3, p4, v0, v1, v2}, Lcom/ea/blast/TouchSurfaceAndroid;->NativeOnPointerEvent(IIIFF)V

    .line 109
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/ea/blast/TouchSurfaceAndroid;->GetActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 116
    .local v0, "action":I
    invoke-static {v0}, Lcom/ea/blast/TouchSurfaceAndroid;->ActionToRawEvent(I)I

    move-result v4

    .line 117
    .local v4, "rawEvent":I
    invoke-direct {p0, p1}, Lcom/ea/blast/TouchSurfaceAndroid;->GetBlastModuleId(Landroid/view/MotionEvent;)I

    move-result v2

    .line 119
    .local v2, "moduleId":I
    const/4 v5, 0x2

    if-ne v0, v5, :cond_0

    .line 121
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    .line 122
    .local v3, "pointerCount":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 124
    invoke-direct {p0, p1, v1, v4, v2}, Lcom/ea/blast/TouchSurfaceAndroid;->SendRawPointerEvent(Landroid/view/MotionEvent;III)V

    .line 122
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    .end local v1    # "index":I
    .end local v3    # "pointerCount":I
    :cond_0
    invoke-direct {p0, p1}, Lcom/ea/blast/TouchSurfaceAndroid;->GetActionIndex(Landroid/view/MotionEvent;)I

    move-result v5

    invoke-direct {p0, p1, v5, v4, v2}, Lcom/ea/blast/TouchSurfaceAndroid;->SendRawPointerEvent(Landroid/view/MotionEvent;III)V

    .line 136
    :cond_1
    const-wide/16 v5, 0xc

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_1
    const/4 v5, 0x1

    return v5

    .line 138
    :catch_0
    move-exception v5

    goto :goto_1
.end method
