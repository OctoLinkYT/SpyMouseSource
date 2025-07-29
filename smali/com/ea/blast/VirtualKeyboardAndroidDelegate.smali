.class public Lcom/ea/blast/VirtualKeyboardAndroidDelegate;
.super Lcom/ea/blast/KeyboardAndroid;
.source "VirtualKeyboardAndroidDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;
    }
.end annotation


# static fields
.field private static final DEBUG_LOG_ENABLED:Z = false

.field private static final DEBUG_LOG_TAG:Ljava/lang/String; = "EAMCore/VirtualKeyboard"

.field private static final DEBUG_SHOW_TEXT_FIELD:Z = false

.field public static final IME_FLAG_NO_FULLSCREEN:I = 0x2000000

.field private static final kEnterKeyLabelDefault:I

.field private static final kEnterKeyLabelDone:I

.field private static final kEnterKeyLabelGo:I

.field private static final kEnterKeyLabelNext:I

.field private static final kEnterKeyLabelSearch:I

.field private static final kEnterKeyLabelSend:I

.field private static final kLayoutDefault:I

.field private static final kLayoutDigits:I

.field private static final kLayoutEmail:I

.field private static final kLayoutPhone:I

.field private static final kLayoutUrl:I


# instance fields
.field private volatile mEnterkeyLabel:I

.field private final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private volatile mKeyboardLayout:I

.field private mMainActivity:Lcom/ea/blast/MainActivity;

.field public mMainViewGroup:Landroid/view/ViewGroup;

.field private mPhysicalKeyboardVisible:Z

.field public mRelativeLayout:Landroid/widget/RelativeLayout;

.field mRelativeLayoutParam:Landroid/widget/RelativeLayout$LayoutParams;

.field private volatile mShiftFlag:I

.field private mTextField:Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;

.field private mVisibleRequested:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->NativeGetLayoutDefault()I

    move-result v0

    sput v0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->kLayoutDefault:I

    .line 55
    invoke-static {}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->NativeGetLayoutDigits()I

    move-result v0

    sput v0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->kLayoutDigits:I

    .line 56
    invoke-static {}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->NativeGetLayoutEmail()I

    move-result v0

    sput v0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->kLayoutEmail:I

    .line 57
    invoke-static {}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->NativeGetLayoutPhone()I

    move-result v0

    sput v0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->kLayoutPhone:I

    .line 58
    invoke-static {}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->NativeGetLayoutUrl()I

    move-result v0

    sput v0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->kLayoutUrl:I

    .line 61
    invoke-static {}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->NativeGetEnterKeyLabelDefault()I

    move-result v0

    sput v0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->kEnterKeyLabelDefault:I

    .line 62
    invoke-static {}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->NativeGetEnterKeyLabelGo()I

    move-result v0

    sput v0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->kEnterKeyLabelGo:I

    .line 63
    invoke-static {}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->NativeGetEnterKeyLabelNext()I

    move-result v0

    sput v0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->kEnterKeyLabelNext:I

    .line 64
    invoke-static {}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->NativeGetEnterKeyLabelSearch()I

    move-result v0

    sput v0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->kEnterKeyLabelSearch:I

    .line 65
    invoke-static {}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->NativeGetEnterKeyLabelSend()I

    move-result v0

    sput v0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->kEnterKeyLabelSend:I

    .line 66
    invoke-static {}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->NativeGetEnterKeyLabelDone()I

    move-result v0

    sput v0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->kEnterKeyLabelDone:I

    return-void
.end method

.method constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 114
    invoke-direct {p0}, Lcom/ea/blast/KeyboardAndroid;-><init>()V

    .line 85
    iput v4, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mKeyboardLayout:I

    .line 88
    iput v4, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mEnterkeyLabel:I

    .line 91
    iput v3, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mShiftFlag:I

    .line 94
    iput-boolean v3, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mVisibleRequested:Z

    .line 97
    iput-boolean v3, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mPhysicalKeyboardVisible:Z

    .line 115
    sget-object v1, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    iput-object v1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mMainActivity:Lcom/ea/blast/MainActivity;

    .line 116
    iget-object v1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mMainActivity:Lcom/ea/blast/MainActivity;

    iget-object v1, v1, Lcom/ea/blast/MainActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mMainViewGroup:Landroid/view/ViewGroup;

    .line 117
    iget-object v1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mMainActivity:Lcom/ea/blast/MainActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/ea/blast/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 118
    iget-object v1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mMainActivity:Lcom/ea/blast/MainActivity;

    invoke-virtual {v1}, Lcom/ea/blast/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v1, v4, :cond_0

    move v1, v4

    :goto_0
    iput-boolean v1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mPhysicalKeyboardVisible:Z

    .line 119
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0x3c

    invoke-direct {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mRelativeLayoutParam:Landroid/widget/RelativeLayout$LayoutParams;

    .line 121
    new-instance v0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$1;

    invoke-direct {v0, p0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$1;-><init>(Lcom/ea/blast/VirtualKeyboardAndroidDelegate;)V

    .line 132
    .local v0, "uiThreadRunnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mMainActivity:Lcom/ea/blast/MainActivity;

    invoke-virtual {v1, v0}, Lcom/ea/blast/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 133
    return-void

    .end local v0    # "uiThreadRunnable":Ljava/lang/Runnable;
    :cond_0
    move v1, v3

    .line 118
    goto :goto_0
.end method

.method private Hide()V
    .locals 2

    .prologue
    .line 267
    const-string v1, "Hide() from game thread"

    invoke-static {v1}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->Log(Ljava/lang/String;)V

    .line 268
    new-instance v0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$2;

    invoke-direct {v0, p0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$2;-><init>(Lcom/ea/blast/VirtualKeyboardAndroidDelegate;)V

    .line 279
    .local v0, "uiThreadRunnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mMainActivity:Lcom/ea/blast/MainActivity;

    invoke-virtual {v1, v0}, Lcom/ea/blast/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 280
    return-void
.end method

.method private static Log(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 309
    return-void
.end method

.method public static native NativeGetEnterKeyLabelDefault()I
.end method

.method public static native NativeGetEnterKeyLabelDone()I
.end method

.method public static native NativeGetEnterKeyLabelGo()I
.end method

.method public static native NativeGetEnterKeyLabelNext()I
.end method

.method public static native NativeGetEnterKeyLabelSearch()I
.end method

.method public static native NativeGetEnterKeyLabelSend()I
.end method

.method public static native NativeGetLayoutDefault()I
.end method

.method public static native NativeGetLayoutDigits()I
.end method

.method public static native NativeGetLayoutEmail()I
.end method

.method public static native NativeGetLayoutPhone()I
.end method

.method public static native NativeGetLayoutUrl()I
.end method

.method private Show()V
    .locals 2

    .prologue
    .line 286
    const-string v1, "Show() from game thread"

    invoke-static {v1}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->Log(Ljava/lang/String;)V

    .line 287
    new-instance v0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$3;

    invoke-direct {v0, p0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$3;-><init>(Lcom/ea/blast/VirtualKeyboardAndroidDelegate;)V

    .line 298
    .local v0, "uiThreadRunnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mMainActivity:Lcom/ea/blast/MainActivity;

    invoke-virtual {v1, v0}, Lcom/ea/blast/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 299
    return-void
.end method

.method public static final StdToRawEnterKeyLabel(I)I
    .locals 2
    .param p0, "stdLabel"    # I

    .prologue
    const/4 v1, 0x1

    .line 155
    sget v0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->kEnterKeyLabelDefault:I

    if-ne p0, v0, :cond_0

    move v0, v1

    .line 161
    :goto_0
    return v0

    .line 156
    :cond_0
    sget v0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->kEnterKeyLabelGo:I

    if-ne p0, v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 157
    :cond_1
    sget v0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->kEnterKeyLabelNext:I

    if-ne p0, v0, :cond_2

    const/4 v0, 0x5

    goto :goto_0

    .line 158
    :cond_2
    sget v0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->kEnterKeyLabelSearch:I

    if-ne p0, v0, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    .line 159
    :cond_3
    sget v0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->kEnterKeyLabelSend:I

    if-ne p0, v0, :cond_4

    const/4 v0, 0x4

    goto :goto_0

    .line 160
    :cond_4
    sget v0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->kEnterKeyLabelDone:I

    if-ne p0, v0, :cond_5

    const/4 v0, 0x6

    goto :goto_0

    :cond_5
    move v0, v1

    .line 161
    goto :goto_0
.end method

.method public static final StdToRawLayout(I)I
    .locals 2
    .param p0, "stdLayout"    # I

    .prologue
    const/4 v1, 0x1

    .line 168
    sget v0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->kLayoutDefault:I

    if-ne p0, v0, :cond_0

    move v0, v1

    .line 173
    :goto_0
    return v0

    .line 169
    :cond_0
    sget v0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->kLayoutEmail:I

    if-ne p0, v0, :cond_1

    const/16 v0, 0x21

    goto :goto_0

    .line 170
    :cond_1
    sget v0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->kLayoutUrl:I

    if-ne p0, v0, :cond_2

    const/16 v0, 0x11

    goto :goto_0

    .line 171
    :cond_2
    sget v0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->kLayoutDigits:I

    if-ne p0, v0, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    .line 172
    :cond_3
    sget v0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->kLayoutPhone:I

    if-ne p0, v0, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    move v0, v1

    .line 173
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/ea/blast/VirtualKeyboardAndroidDelegate;)Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;
    .locals 1
    .param p0, "x0"    # Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mTextField:Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;

    return-object v0
.end method

.method static synthetic access$002(Lcom/ea/blast/VirtualKeyboardAndroidDelegate;Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;)Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;
    .locals 0
    .param p0, "x0"    # Lcom/ea/blast/VirtualKeyboardAndroidDelegate;
    .param p1, "x1"    # Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mTextField:Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;

    return-object p1
.end method

.method static synthetic access$100(Lcom/ea/blast/VirtualKeyboardAndroidDelegate;)Lcom/ea/blast/MainActivity;
    .locals 1
    .param p0, "x0"    # Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mMainActivity:Lcom/ea/blast/MainActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ea/blast/VirtualKeyboardAndroidDelegate;)I
    .locals 1
    .param p0, "x0"    # Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    .prologue
    .line 38
    iget v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mKeyboardLayout:I

    return v0
.end method

.method static synthetic access$500(Lcom/ea/blast/VirtualKeyboardAndroidDelegate;)I
    .locals 1
    .param p0, "x0"    # Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    .prologue
    .line 38
    iget v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mShiftFlag:I

    return v0
.end method

.method static synthetic access$600(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-static {p0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->Log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/ea/blast/VirtualKeyboardAndroidDelegate;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .param p0, "x0"    # Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/ea/blast/VirtualKeyboardAndroidDelegate;)I
    .locals 1
    .param p0, "x0"    # Lcom/ea/blast/VirtualKeyboardAndroidDelegate;

    .prologue
    .line 38
    iget v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mEnterkeyLabel:I

    return v0
.end method


# virtual methods
.method GetModuleId()I
    .locals 1

    .prologue
    .line 138
    sget v0, Lcom/ea/blast/ModuleCatalog;->kModuleTypeIdVirtualKeyboard:I

    return v0
.end method

.method public IsVisible()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mVisibleRequested:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mTextField:Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mTextField:Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;

    invoke-virtual {v0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public OnPhysicalKeyboardVisibilityChanged(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 188
    iput-boolean p1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mPhysicalKeyboardVisible:Z

    .line 190
    iget-boolean v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mPhysicalKeyboardVisible:Z

    if-eqz v0, :cond_1

    .line 192
    invoke-direct {p0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->Hide()V

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    iget-boolean v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mVisibleRequested:Z

    if-eqz v0, :cond_0

    .line 199
    invoke-direct {p0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->Show()V

    goto :goto_0
.end method

.method public SetEnterKeyLabel(I)V
    .locals 1
    .param p1, "stdEnterkeyLabel"    # I

    .prologue
    .line 237
    invoke-static {p1}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->StdToRawEnterKeyLabel(I)I

    move-result v0

    iput v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mEnterkeyLabel:I

    .line 238
    invoke-virtual {p0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->UpdateDisplay()V

    .line 239
    return-void
.end method

.method public SetLayout(I)V
    .locals 1
    .param p1, "stdLayout"    # I

    .prologue
    .line 246
    invoke-static {p1}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->StdToRawLayout(I)I

    move-result v0

    iput v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mKeyboardLayout:I

    .line 247
    invoke-virtual {p0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->UpdateDisplay()V

    .line 248
    return-void
.end method

.method public SetShiftEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 229
    if-eqz p1, :cond_0

    const/16 v0, 0x1000

    :goto_0
    iput v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mShiftFlag:I

    .line 230
    invoke-virtual {p0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->UpdateDisplay()V

    .line 231
    return-void

    .line 229
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Shutdown()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 145
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->UserSetVisible(Z)V

    .line 146
    iput-object v1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mMainViewGroup:Landroid/view/ViewGroup;

    .line 147
    iput-object v1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mRelativeLayout:Landroid/widget/RelativeLayout;

    .line 148
    iput-object v1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mTextField:Lcom/ea/blast/VirtualKeyboardAndroidDelegate$TextField;

    .line 149
    return-void
.end method

.method public UpdateDisplay()V
    .locals 1

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->IsVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    const-string v0, "UpdateDisplay()"

    invoke-static {v0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->Log(Ljava/lang/String;)V

    .line 258
    invoke-direct {p0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->Hide()V

    .line 259
    invoke-direct {p0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->Show()V

    .line 261
    :cond_0
    return-void
.end method

.method public UserSetVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mVisibleRequested:Z

    .line 211
    iget-boolean v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mVisibleRequested:Z

    if-eqz v0, :cond_1

    .line 213
    iget-boolean v0, p0, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->mPhysicalKeyboardVisible:Z

    if-nez v0, :cond_0

    .line 215
    invoke-direct {p0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->Show()V

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    invoke-direct {p0}, Lcom/ea/blast/VirtualKeyboardAndroidDelegate;->Hide()V

    goto :goto_0
.end method
