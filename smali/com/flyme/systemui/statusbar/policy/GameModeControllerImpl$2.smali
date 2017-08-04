.class Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl$2;
.super Landroid/database/ContentObserver;
.source "GameModeControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 125
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x1

    .line 128
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;

    .line 129
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;

    invoke-static {v2}, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->-get2(Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 130
    const-string/jumbo v3, "mz_game_mode_dnd"

    .line 131
    const/4 v4, -0x2

    .line 128
    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-static {v1, v0}, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->-set1(Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;Z)Z

    .line 132
    const-string/jumbo v0, "GameModeControllerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mGameModeDNDEnable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;

    invoke-static {v2}, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->-get4(Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;

    invoke-static {v1}, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->-get4(Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;->-wrap1(Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;Z)V

    .line 127
    return-void

    .line 128
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
