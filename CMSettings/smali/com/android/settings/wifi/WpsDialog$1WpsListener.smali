.class Lorg/flerovium/settings/wifi/WpsDialog$1WpsListener;
.super Landroid/net/wifi/WifiManager$WpsCallback;
.source "WpsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WpsListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/wifi/WpsDialog;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/wifi/WpsDialog;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lorg/flerovium/settings/wifi/WpsDialog$1WpsListener;->this$0:Lorg/flerovium/settings/wifi/WpsDialog;

    invoke-direct {p0}, Landroid/net/wifi/WifiManager$WpsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 103
    packed-switch p1, :pswitch_data_0

    .line 117
    :pswitch_0
    iget-object v1, p0, Lorg/flerovium/settings/wifi/WpsDialog$1WpsListener;->this$0:Lorg/flerovium/settings/wifi/WpsDialog;

    # getter for: Lorg/flerovium/settings/wifi/WpsDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lorg/flerovium/settings/wifi/WpsDialog;->access$000(Lorg/flerovium/settings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090629

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "msg":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lorg/flerovium/settings/wifi/WpsDialog$1WpsListener;->this$0:Lorg/flerovium/settings/wifi/WpsDialog;

    sget-object v2, Lorg/flerovium/settings/wifi/WpsDialog$DialogState;->WPS_FAILED:Lorg/flerovium/settings/wifi/WpsDialog$DialogState;

    # invokes: Lorg/flerovium/settings/wifi/WpsDialog;->updateDialog(Lorg/flerovium/settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V
    invoke-static {v1, v2, v0}, Lorg/flerovium/settings/wifi/WpsDialog;->access$100(Lorg/flerovium/settings/wifi/WpsDialog;Lorg/flerovium/settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    .line 121
    return-void

    .line 105
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_1
    iget-object v1, p0, Lorg/flerovium/settings/wifi/WpsDialog$1WpsListener;->this$0:Lorg/flerovium/settings/wifi/WpsDialog;

    # getter for: Lorg/flerovium/settings/wifi/WpsDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lorg/flerovium/settings/wifi/WpsDialog;->access$000(Lorg/flerovium/settings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09062d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 106
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 108
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_2
    iget-object v1, p0, Lorg/flerovium/settings/wifi/WpsDialog$1WpsListener;->this$0:Lorg/flerovium/settings/wifi/WpsDialog;

    # getter for: Lorg/flerovium/settings/wifi/WpsDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lorg/flerovium/settings/wifi/WpsDialog;->access$000(Lorg/flerovium/settings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09062a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 109
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 111
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_3
    iget-object v1, p0, Lorg/flerovium/settings/wifi/WpsDialog$1WpsListener;->this$0:Lorg/flerovium/settings/wifi/WpsDialog;

    # getter for: Lorg/flerovium/settings/wifi/WpsDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lorg/flerovium/settings/wifi/WpsDialog;->access$000(Lorg/flerovium/settings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09062b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 112
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 114
    .end local v0    # "msg":Ljava/lang/String;
    :pswitch_4
    iget-object v1, p0, Lorg/flerovium/settings/wifi/WpsDialog$1WpsListener;->this$0:Lorg/flerovium/settings/wifi/WpsDialog;

    # getter for: Lorg/flerovium/settings/wifi/WpsDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lorg/flerovium/settings/wifi/WpsDialog;->access$000(Lorg/flerovium/settings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090628

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 115
    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onStarted(Ljava/lang/String;)V
    .locals 5
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 87
    if-eqz p1, :cond_0

    .line 88
    iget-object v0, p0, Lorg/flerovium/settings/wifi/WpsDialog$1WpsListener;->this$0:Lorg/flerovium/settings/wifi/WpsDialog;

    sget-object v1, Lorg/flerovium/settings/wifi/WpsDialog$DialogState;->WPS_START:Lorg/flerovium/settings/wifi/WpsDialog$DialogState;

    iget-object v2, p0, Lorg/flerovium/settings/wifi/WpsDialog$1WpsListener;->this$0:Lorg/flerovium/settings/wifi/WpsDialog;

    # getter for: Lorg/flerovium/settings/wifi/WpsDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lorg/flerovium/settings/wifi/WpsDialog;->access$000(Lorg/flerovium/settings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090625

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lorg/flerovium/settings/wifi/WpsDialog;->updateDialog(Lorg/flerovium/settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lorg/flerovium/settings/wifi/WpsDialog;->access$100(Lorg/flerovium/settings/wifi/WpsDialog;Lorg/flerovium/settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    .line 94
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lorg/flerovium/settings/wifi/WpsDialog$1WpsListener;->this$0:Lorg/flerovium/settings/wifi/WpsDialog;

    sget-object v1, Lorg/flerovium/settings/wifi/WpsDialog$DialogState;->WPS_START:Lorg/flerovium/settings/wifi/WpsDialog$DialogState;

    iget-object v2, p0, Lorg/flerovium/settings/wifi/WpsDialog$1WpsListener;->this$0:Lorg/flerovium/settings/wifi/WpsDialog;

    # getter for: Lorg/flerovium/settings/wifi/WpsDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lorg/flerovium/settings/wifi/WpsDialog;->access$000(Lorg/flerovium/settings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090624

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lorg/flerovium/settings/wifi/WpsDialog;->updateDialog(Lorg/flerovium/settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lorg/flerovium/settings/wifi/WpsDialog;->access$100(Lorg/flerovium/settings/wifi/WpsDialog;Lorg/flerovium/settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSucceeded()V
    .locals 4

    .prologue
    .line 97
    iget-object v0, p0, Lorg/flerovium/settings/wifi/WpsDialog$1WpsListener;->this$0:Lorg/flerovium/settings/wifi/WpsDialog;

    sget-object v1, Lorg/flerovium/settings/wifi/WpsDialog$DialogState;->WPS_COMPLETE:Lorg/flerovium/settings/wifi/WpsDialog$DialogState;

    iget-object v2, p0, Lorg/flerovium/settings/wifi/WpsDialog$1WpsListener;->this$0:Lorg/flerovium/settings/wifi/WpsDialog;

    # getter for: Lorg/flerovium/settings/wifi/WpsDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lorg/flerovium/settings/wifi/WpsDialog;->access$000(Lorg/flerovium/settings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090626

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lorg/flerovium/settings/wifi/WpsDialog;->updateDialog(Lorg/flerovium/settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lorg/flerovium/settings/wifi/WpsDialog;->access$100(Lorg/flerovium/settings/wifi/WpsDialog;Lorg/flerovium/settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    .line 99
    return-void
.end method
