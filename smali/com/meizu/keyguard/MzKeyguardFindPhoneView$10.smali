.class Lcom/meizu/keyguard/MzKeyguardFindPhoneView$10;
.super Ljava/lang/Object;
.source "MzKeyguardFindPhoneView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;


# direct methods
.method constructor <init>(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    .prologue
    .line 398
    iput-object p1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$10;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 401
    if-eqz p2, :cond_0

    .line 402
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$10;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-get13(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$10;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-virtual {v1}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$drawable;->mz_textfield_default_color_dodgerblue:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 400
    :goto_0
    return-void

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$10;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-static {v0}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->-get13(Lcom/meizu/keyguard/MzKeyguardFindPhoneView;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/keyguard/MzKeyguardFindPhoneView$10;->this$0:Lcom/meizu/keyguard/MzKeyguardFindPhoneView;

    invoke-virtual {v1}, Lcom/meizu/keyguard/MzKeyguardFindPhoneView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$drawable;->count_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
