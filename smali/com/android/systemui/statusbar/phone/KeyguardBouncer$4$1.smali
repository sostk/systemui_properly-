.class Lcom/android/systemui/statusbar/phone/KeyguardBouncer$4$1;
.super Ljava/lang/Object;
.source "KeyguardBouncer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBouncer$4;->onThemeChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$4;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/phone/KeyguardBouncer$4;

    .prologue
    .line 638
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$4$1;->this$1:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$4$1;->this$1:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$4;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$4;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->-wrap4(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V

    .line 640
    return-void
.end method
