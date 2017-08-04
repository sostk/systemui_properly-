.class Lcom/meizu/keyguard/MzKeyguardFindPhoneView$1$1;
.super Ljava/lang/Object;
.source "MzKeyguardFindPhoneView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/keyguard/MzKeyguardFindPhoneView$1;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/keyguard/MzKeyguardFindPhoneView$1;


# direct methods
.method constructor <init>(Lcom/meizu/keyguard/MzKeyguardFindPhoneView$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/meizu/keyguard/MzKeyguardFindPhoneView$1;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$1$1;->this$1:Lcom/meizu/keyguard/MzKeyguardFindPhoneView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$1$1;->this$1:Lcom/meizu/keyguard/MzKeyguardFindPhoneView$1;

    iget-object v0, v0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$1;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-wrap8(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)V

    .line 175
    return-void
.end method
