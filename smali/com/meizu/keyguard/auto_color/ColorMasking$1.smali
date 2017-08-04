.class Lcom/meizu/keyguard/auto_color/ColorMasking$1;
.super Ljava/lang/Object;
.source "ColorMasking.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/keyguard/auto_color/ColorMasking;->hideCover()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/keyguard/auto_color/ColorMasking;


# direct methods
.method constructor <init>(Lcom/meizu/keyguard/auto_color/ColorMasking;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/keyguard/auto_color/ColorMasking;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/meizu/keyguard/auto_color/ColorMasking$1;->this$0:Lcom/meizu/keyguard/auto_color/ColorMasking;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 111
    invoke-static {}, Lcom/meizu/keyguard/auto_color/ColorMasking;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "hideCover, end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lcom/meizu/keyguard/auto_color/ColorMasking$1;->this$0:Lcom/meizu/keyguard/auto_color/ColorMasking;

    invoke-static {v0}, Lcom/meizu/keyguard/auto_color/ColorMasking;->-get1(Lcom/meizu/keyguard/auto_color/ColorMasking;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 113
    iget-object v0, p0, Lcom/meizu/keyguard/auto_color/ColorMasking$1;->this$0:Lcom/meizu/keyguard/auto_color/ColorMasking;

    invoke-static {v0}, Lcom/meizu/keyguard/auto_color/ColorMasking;->-get1(Lcom/meizu/keyguard/auto_color/ColorMasking;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    return-void
.end method
