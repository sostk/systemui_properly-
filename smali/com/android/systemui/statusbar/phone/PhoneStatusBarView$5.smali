.class Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$5;
.super Ljava/lang/Object;
.source "PhoneStatusBarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->doScrollBack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$5;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 264
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 265
    .local v2, "now":J
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    .line 266
    const/16 v7, 0x7a

    const/4 v8, 0x0

    const/16 v9, 0x1000

    move-wide v4, v2

    .line 265
    invoke-direct/range {v1 .. v9}, Landroid/view/KeyEvent;-><init>(JJIIII)V

    .line 267
    .local v1, "down":Landroid/view/KeyEvent;
    new-instance v5, Landroid/view/KeyEvent;

    const/4 v10, 0x1

    .line 268
    const/16 v11, 0x7a

    const/4 v12, 0x0

    const/16 v13, 0x1000

    move-wide v6, v2

    move-wide v8, v2

    .line 267
    invoke-direct/range {v5 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIII)V

    .line 269
    .local v5, "up":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    .line 270
    const/4 v4, 0x0

    .line 269
    invoke-virtual {v0, v1, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 271
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    .line 272
    const/4 v4, 0x0

    .line 271
    invoke-virtual {v0, v5, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 263
    return-void
.end method
