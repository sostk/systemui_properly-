.class Lcom/meizu/keyguard/MzKeyguardFindPhoneView$checkFindPhoneLockClass$2;
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


# direct methods
.method constructor <init>(Lcom/meizu/keyguard/MzKeyguardFindPhoneView$checkFindPhoneLockClass;)V
    .locals 0
    .param p1, "this$1"    # Lcom/meizu/keyguard/MzKeyguardFindPhoneView$checkFindPhoneLockClass;

    .prologue
    .line 815
    iput-object p1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$checkFindPhoneLockClass$2;->this$1:Lcom/meizu/keyguard/MzKeyguardFindPhoneView$checkFindPhoneLockClass;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 817
    new-instance v0, Lcom/meizu/flyme/service/find/FindPhoneData;

    invoke-direct {v0}, Lcom/meizu/flyme/service/find/FindPhoneData;-><init>()V

    .line 818
    .local v0, "result":Lcom/meizu/flyme/service/find/FindPhoneData;
    const/4 v1, 0x5

    iput v1, v0, Lcom/meizu/flyme/service/find/FindPhoneData;->mCode:I

    .line 819
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$checkFindPhoneLockClass$2;->this$1:Lcom/meizu/keyguard/MzKeyguardFindPhoneView$checkFindPhoneLockClass;

    invoke-virtual {v1, v0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$checkFindPhoneLockClass;->onFindPhoneLockChangedResponse(Lcom/meizu/flyme/service/find/FindPhoneData;)V

    .line 820
    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$checkFindPhoneLockClass$2;->this$1:Lcom/meizu/keyguard/MzKeyguardFindPhoneView$checkFindPhoneLockClass;

    iget-object v1, v1, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$checkFindPhoneLockClass;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v1}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-wrap7(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)V

    .line 816
    return-void
.end method
