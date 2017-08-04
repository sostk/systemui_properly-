.class Lcom/android/systemui/statusbar/phone/KeyguardBouncer$9$1;
.super Ljava/lang/Object;
.source "KeyguardBouncer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBouncer$9;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$9;

.field final synthetic val$endRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer$9;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/phone/KeyguardBouncer$9;
    .param p2, "val$endRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 719
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$9$1;->this$1:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$9;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$9$1;->val$endRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 722
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$9$1;->this$1:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$9;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$9;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$9$1;->val$endRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->-wrap1(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;Ljava/lang/Runnable;)V

    .line 721
    return-void
.end method
