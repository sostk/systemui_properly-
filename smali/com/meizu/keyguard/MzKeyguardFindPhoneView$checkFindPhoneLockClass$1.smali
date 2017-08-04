.class Lcom/meizu/keyguard/MzKeyguardFindPhoneView$checkFindPhoneLockClass$1;
.super Ljava/lang/Object;
.source "MzKeyguardFindPhoneView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/keyguard/MzKeyguardFindPhoneView$checkFindPhoneLockClass;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/keyguard/MzKeyguardFindPhoneView$checkFindPhoneLockClass;

.field final synthetic val$ret:Lcom/meizu/flyme/service/find/FindPhoneData;


# direct methods
.method constructor <init>(Lcom/meizu/keyguard/MzKeyguardFindPhoneView$checkFindPhoneLockClass;Lcom/meizu/flyme/service/find/FindPhoneData;)V
    .locals 0
    .param p1, "this$1"    # Lcom/meizu/keyguard/MzKeyguardFindPhoneView$checkFindPhoneLockClass;
    .param p2, "val$ret"    # Lcom/meizu/flyme/service/find/FindPhoneData;

    .prologue
    .line 801
    iput-object p1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$checkFindPhoneLockClass$1;->this$1:Lcom/meizu/keyguard/MzKeyguardFindPhoneView$checkFindPhoneLockClass;

    iput-object p2, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$checkFindPhoneLockClass$1;->val$ret:Lcom/meizu/flyme/service/find/FindPhoneData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 803
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$checkFindPhoneLockClass$1;->this$1:Lcom/meizu/keyguard/MzKeyguardFindPhoneView$checkFindPhoneLockClass;

    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$checkFindPhoneLockClass$1;->val$ret:Lcom/meizu/flyme/service/find/FindPhoneData;

    invoke-virtual {v0, v1}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$checkFindPhoneLockClass;->onFindPhoneLockChangedResponse(Lcom/meizu/flyme/service/find/FindPhoneData;)V

    .line 802
    return-void
.end method
