.class public Lorg/flerovium/settings/applications/AppOpsDetails;
.super Landroid/app/Fragment;
.source "AppOpsDetails.java"


# instance fields
.field private final MODE_ALLOWED:I

.field private final MODE_ASK:I

.field private final MODE_IGNORED:I

.field private mAppOps:Landroid/app/AppOpsManager;

.field private mAppVersion:Landroid/widget/TextView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mOperationsSection:Landroid/widget/LinearLayout;

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRootView:Landroid/view/View;

.field private mState:Lorg/flerovium/settings/applications/AppOpsState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lorg/flerovium/settings/applications/AppOpsDetails;->MODE_ALLOWED:I

    .line 64
    const/4 v0, 0x1

    iput v0, p0, Lorg/flerovium/settings/applications/AppOpsDetails;->MODE_IGNORED:I

    .line 65
    const/4 v0, 0x2

    iput v0, p0, Lorg/flerovium/settings/applications/AppOpsDetails;->MODE_ASK:I

    return-void
.end method

.method static synthetic access$000(Lorg/flerovium/settings/applications/AppOpsDetails;I)I
    .locals 1
    .param p0, "x0"    # Lorg/flerovium/settings/applications/AppOpsDetails;
    .param p1, "x1"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lorg/flerovium/settings/applications/AppOpsDetails;->positionToMode(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lorg/flerovium/settings/applications/AppOpsDetails;)Landroid/app/AppOpsManager;
    .locals 1
    .param p0, "x0"    # Lorg/flerovium/settings/applications/AppOpsDetails;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/flerovium/settings/applications/AppOpsDetails;->mAppOps:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method private isPlatformSigned()Z
    .locals 4

    .prologue
    .line 94
    iget-object v1, p0, Lorg/flerovium/settings/applications/AppOpsDetails;->mPm:Landroid/content/pm/PackageManager;

    const-string v2, "android"

    iget-object v3, p0, Lorg/flerovium/settings/applications/AppOpsDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 95
    .local v0, "match":I
    if-ltz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private modeToPosition(I)I
    .locals 1
    .param p1, "mode"    # I

    .prologue
    const/4 v0, 0x1

    .line 68
    packed-switch p1, :pswitch_data_0

    .line 77
    :goto_0
    :pswitch_0
    return v0

    .line 70
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 74
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private positionToMode(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x1

    .line 81
    packed-switch p1, :pswitch_data_0

    .line 90
    :goto_0
    :pswitch_0
    return v0

    .line 83
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 87
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private refreshUi()Z
    .locals 27

    .prologue
    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/flerovium/settings/applications/AppOpsDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v23, v0

    if-nez v23, :cond_0

    .line 144
    const/16 v23, 0x0

    .line 239
    :goto_0
    return v23

    .line 147
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/flerovium/settings/applications/AppOpsDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/flerovium/settings/applications/AppOpsDetails;->setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V

    .line 149
    invoke-virtual/range {p0 .. p0}, Lorg/flerovium/settings/applications/AppOpsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 151
    .local v17, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/flerovium/settings/applications/AppOpsDetails;->mOperationsSection:Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 152
    const-string v11, ""

    .line 153
    .local v11, "lastPermGroup":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lorg/flerovium/settings/applications/AppOpsDetails;->isPlatformSigned()Z

    move-result v10

    .line 154
    .local v10, "isPlatformSigned":Z
    sget-object v4, Lorg/flerovium/settings/applications/AppOpsState;->ALL_TEMPLATES:[Lorg/flerovium/settings/applications/AppOpsState$OpsTemplate;

    .local v4, "arr$":[Lorg/flerovium/settings/applications/AppOpsState$OpsTemplate;
    array-length v12, v4

    .local v12, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    move v9, v8

    .end local v8    # "i$":I
    .local v9, "i$":I
    :goto_1
    if-ge v9, v12, :cond_6

    aget-object v21, v4, v9

    .line 159
    .local v21, "tpl":Lorg/flerovium/settings/applications/AppOpsState$OpsTemplate;
    if-eqz v10, :cond_2

    sget-object v23, Lorg/flerovium/settings/applications/AppOpsState;->SU_TEMPLATE:Lorg/flerovium/settings/applications/AppOpsState$OpsTemplate;

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_2

    .line 154
    .end local v9    # "i$":I
    :cond_1
    add-int/lit8 v8, v9, 0x1

    .restart local v8    # "i$":I
    move v9, v8

    .end local v8    # "i$":I
    .restart local v9    # "i$":I
    goto :goto_1

    .line 162
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/flerovium/settings/applications/AppOpsDetails;->mState:Lorg/flerovium/settings/applications/AppOpsState;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/flerovium/settings/applications/AppOpsDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/flerovium/settings/applications/AppOpsDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    move/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lorg/flerovium/settings/applications/AppOpsState;->buildState(Lorg/flerovium/settings/applications/AppOpsState$OpsTemplate;ILjava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 164
    .local v5, "entries":Ljava/util/List;, "Ljava/util/List<Lorg/flerovium/settings/applications/AppOpsState$AppOpEntry;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .end local v9    # "i$":I
    .local v8, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/flerovium/settings/applications/AppOpsState$AppOpEntry;

    .line 165
    .local v6, "entry":Lorg/flerovium/settings/applications/AppOpsState$AppOpEntry;
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lorg/flerovium/settings/applications/AppOpsState$AppOpEntry;->getOpEntry(I)Landroid/app/AppOpsManager$OpEntry;

    move-result-object v7

    .line 166
    .local v7, "firstOp":Landroid/app/AppOpsManager$OpEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/flerovium/settings/applications/AppOpsDetails;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v23, v0

    const v24, 0x7f04000a

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/flerovium/settings/applications/AppOpsDetails;->mOperationsSection:Landroid/widget/LinearLayout;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v23 .. v26}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v22

    .line 168
    .local v22, "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/flerovium/settings/applications/AppOpsDetails;->mOperationsSection:Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 169
    invoke-virtual {v7}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v23

    invoke-static/range {v23 .. v23}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v14

    .line 170
    .local v14, "perm":Ljava/lang/String;
    if-eqz v14, :cond_3

    .line 172
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/flerovium/settings/applications/AppOpsDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v14, v1}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v16

    .line 173
    .local v16, "pi":Landroid/content/pm/PermissionInfo;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_3

    .line 174
    move-object/from16 v0, v16

    iget-object v11, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/flerovium/settings/applications/AppOpsDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v15

    .line 176
    .local v15, "pgi":Landroid/content/pm/PermissionGroupInfo;
    iget v0, v15, Landroid/content/pm/PermissionGroupInfo;->icon:I

    move/from16 v23, v0

    if-eqz v23, :cond_3

    .line 177
    const v23, 0x7f100017

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/flerovium/settings/applications/AppOpsDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/content/pm/PermissionGroupInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .end local v15    # "pgi":Landroid/content/pm/PermissionGroupInfo;
    .end local v16    # "pi":Landroid/content/pm/PermissionInfo;
    :cond_3
    :goto_3
    const v23, 0x7f100018

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/flerovium/settings/applications/AppOpsDetails;->mState:Lorg/flerovium/settings/applications/AppOpsState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Lorg/flerovium/settings/applications/AppOpsState$AppOpEntry;->getSwitchText(Lorg/flerovium/settings/applications/AppOpsState;)Ljava/lang/CharSequence;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    const v23, 0x7f10001a

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/flerovium/settings/applications/AppOpsState$AppOpEntry;->getCountsText(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    const v23, 0x7f100019

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    const/16 v24, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Lorg/flerovium/settings/applications/AppOpsState$AppOpEntry;->getTimeText(Landroid/content/res/Resources;Z)Ljava/lang/CharSequence;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    const v23, 0x7f10001b

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Spinner;

    .line 192
    .local v18, "sp":Landroid/widget/Spinner;
    const/16 v23, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 193
    const v23, 0x7f10001c

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Switch;

    .line 194
    .local v19, "sw":Landroid/widget/Switch;
    const/16 v23, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setVisibility(I)V

    .line 196
    invoke-virtual {v7}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v23

    invoke-static/range {v23 .. v23}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v20

    .line 197
    .local v20, "switchOp":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/flerovium/settings/applications/AppOpsDetails;->mAppOps:Landroid/app/AppOpsManager;

    move-object/from16 v23, v0

    invoke-virtual {v6}, Lorg/flerovium/settings/applications/AppOpsState$AppOpEntry;->getPackageOps()Landroid/app/AppOpsManager$PackageOps;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v24

    invoke-virtual {v6}, Lorg/flerovium/settings/applications/AppOpsState$AppOpEntry;->getPackageOps()Landroid/app/AppOpsManager$PackageOps;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move/from16 v1, v20

    move/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v13

    .line 199
    .local v13, "mode":I
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/flerovium/settings/applications/AppOpsDetails;->modeToPosition(I)I

    move-result v23

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 200
    new-instance v23, Lorg/flerovium/settings/applications/AppOpsDetails$1;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v6}, Lorg/flerovium/settings/applications/AppOpsDetails$1;-><init>(Lorg/flerovium/settings/applications/AppOpsDetails;ILorg/flerovium/settings/applications/AppOpsState$AppOpEntry;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/flerovium/settings/applications/AppOpsDetails;->mAppOps:Landroid/app/AppOpsManager;

    move-object/from16 v23, v0

    invoke-virtual {v6}, Lorg/flerovium/settings/applications/AppOpsState$AppOpEntry;->getPackageOps()Landroid/app/AppOpsManager$PackageOps;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v24

    invoke-virtual {v6}, Lorg/flerovium/settings/applications/AppOpsState$AppOpEntry;->getPackageOps()Landroid/app/AppOpsManager$PackageOps;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move/from16 v1, v20

    move/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v23

    if-nez v23, :cond_4

    const/16 v23, 0x1

    :goto_4
    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 221
    new-instance v23, Lorg/flerovium/settings/applications/AppOpsDetails$2;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v6}, Lorg/flerovium/settings/applications/AppOpsDetails$2;-><init>(Lorg/flerovium/settings/applications/AppOpsDetails;ILorg/flerovium/settings/applications/AppOpsState$AppOpEntry;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 231
    invoke-static/range {v20 .. v20}, Landroid/app/AppOpsManager;->isStrictOp(I)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 232
    const/16 v23, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    goto/16 :goto_2

    .line 219
    :cond_4
    const/16 v23, 0x0

    goto :goto_4

    .line 234
    :cond_5
    const/16 v23, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setVisibility(I)V

    goto/16 :goto_2

    .line 239
    .end local v5    # "entries":Ljava/util/List;, "Ljava/util/List<Lorg/flerovium/settings/applications/AppOpsState$AppOpEntry;>;"
    .end local v6    # "entry":Lorg/flerovium/settings/applications/AppOpsState$AppOpEntry;
    .end local v7    # "firstOp":Landroid/app/AppOpsManager$OpEntry;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v13    # "mode":I
    .end local v14    # "perm":Ljava/lang/String;
    .end local v18    # "sp":Landroid/widget/Spinner;
    .end local v19    # "sw":Landroid/widget/Switch;
    .end local v20    # "switchOp":I
    .end local v21    # "tpl":Lorg/flerovium/settings/applications/AppOpsState$OpsTemplate;
    .end local v22    # "view":Landroid/view/View;
    .restart local v9    # "i$":I
    :cond_6
    const/16 v23, 0x1

    goto/16 :goto_0

    .line 181
    .end local v9    # "i$":I
    .restart local v5    # "entries":Ljava/util/List;, "Ljava/util/List<Lorg/flerovium/settings/applications/AppOpsState$AppOpEntry;>;"
    .restart local v6    # "entry":Lorg/flerovium/settings/applications/AppOpsState$AppOpEntry;
    .restart local v7    # "firstOp":Landroid/app/AppOpsManager$OpEntry;
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v14    # "perm":Ljava/lang/String;
    .restart local v21    # "tpl":Lorg/flerovium/settings/applications/AppOpsState$OpsTemplate;
    .restart local v22    # "view":Landroid/view/View;
    :catch_0
    move-exception v23

    goto/16 :goto_3
.end method

.method private retrieveAppEntry()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 121
    invoke-virtual {p0}, Lorg/flerovium/settings/applications/AppOpsDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 122
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    const-string v4, "package"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 123
    .local v3, "packageName":Ljava/lang/String;
    :goto_0
    if-nez v3, :cond_0

    .line 124
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/flerovium/settings/applications/AppOpsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 126
    .local v2, "intent":Landroid/content/Intent;
    :goto_1
    if-eqz v2, :cond_0

    .line 127
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 131
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    :try_start_0
    iget-object v4, p0, Lorg/flerovium/settings/applications/AppOpsDetails;->mPm:Landroid/content/pm/PackageManager;

    const/16 v6, 0x2200

    invoke-virtual {v4, v3, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iput-object v4, p0, Lorg/flerovium/settings/applications/AppOpsDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_2
    return-object v3

    .end local v3    # "packageName":Ljava/lang/String;
    :cond_1
    move-object v3, v5

    .line 122
    goto :goto_0

    .line 124
    .restart local v3    # "packageName":Ljava/lang/String;
    :cond_2
    const-string v4, "intent"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    move-object v2, v4

    goto :goto_1

    .line 134
    :catch_0
    move-exception v1

    .line 135
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "AppOpsDetails"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception when retrieving package:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    iput-object v5, p0, Lorg/flerovium/settings/applications/AppOpsDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    goto :goto_2
.end method

.method private setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V
    .locals 9
    .param p1, "pkgInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v8, 0x0

    .line 100
    iget-object v3, p0, Lorg/flerovium/settings/applications/AppOpsDetails;->mRootView:Landroid/view/View;

    const v4, 0x7f100015

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 101
    .local v0, "appSnippet":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v8, v3, v8, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 103
    const v3, 0x7f100010

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 104
    .local v1, "icon":Landroid/widget/ImageView;
    iget-object v3, p0, Lorg/flerovium/settings/applications/AppOpsDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    const v3, 0x7f100011

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 107
    .local v2, "label":Landroid/widget/TextView;
    iget-object v3, p0, Lorg/flerovium/settings/applications/AppOpsDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    const v3, 0x7f10014e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lorg/flerovium/settings/applications/AppOpsDetails;->mAppVersion:Landroid/widget/TextView;

    .line 111
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 112
    iget-object v3, p0, Lorg/flerovium/settings/applications/AppOpsDetails;->mAppVersion:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    iget-object v3, p0, Lorg/flerovium/settings/applications/AppOpsDetails;->mAppVersion:Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/flerovium/settings/applications/AppOpsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f090895

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v3, p0, Lorg/flerovium/settings/applications/AppOpsDetails;->mAppVersion:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setIntentAndFinish(ZZ)V
    .locals 3
    .param p1, "finish"    # Z
    .param p2, "appChanged"    # Z

    .prologue
    .line 243
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 244
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "chg"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 245
    invoke-virtual {p0}, Lorg/flerovium/settings/applications/AppOpsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lorg/flerovium/settings/SettingsActivity;

    .line 246
    .local v1, "sa":Lorg/flerovium/settings/SettingsActivity;
    const/4 v2, -0x1

    invoke-virtual {v1, p0, v2, v0}, Lorg/flerovium/settings/SettingsActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 247
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 252
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 254
    new-instance v0, Lorg/flerovium/settings/applications/AppOpsState;

    invoke-virtual {p0}, Lorg/flerovium/settings/applications/AppOpsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/flerovium/settings/applications/AppOpsState;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/flerovium/settings/applications/AppOpsDetails;->mState:Lorg/flerovium/settings/applications/AppOpsState;

    .line 255
    invoke-virtual {p0}, Lorg/flerovium/settings/applications/AppOpsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lorg/flerovium/settings/applications/AppOpsDetails;->mPm:Landroid/content/pm/PackageManager;

    .line 256
    invoke-virtual {p0}, Lorg/flerovium/settings/applications/AppOpsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lorg/flerovium/settings/applications/AppOpsDetails;->mInflater:Landroid/view/LayoutInflater;

    .line 257
    invoke-virtual {p0}, Lorg/flerovium/settings/applications/AppOpsDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lorg/flerovium/settings/applications/AppOpsDetails;->mAppOps:Landroid/app/AppOpsManager;

    .line 259
    invoke-direct {p0}, Lorg/flerovium/settings/applications/AppOpsDetails;->retrieveAppEntry()Ljava/lang/String;

    .line 261
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/flerovium/settings/applications/AppOpsDetails;->setHasOptionsMenu(Z)V

    .line 262
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 267
    const v1, 0x7f040009

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 268
    .local v0, "view":Landroid/view/View;
    invoke-static {p2, v0, v0, v2}, Lorg/flerovium/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 270
    iput-object v0, p0, Lorg/flerovium/settings/applications/AppOpsDetails;->mRootView:Landroid/view/View;

    .line 271
    const v1, 0x7f100016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lorg/flerovium/settings/applications/AppOpsDetails;->mOperationsSection:Landroid/widget/LinearLayout;

    .line 272
    return-object v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 277
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 278
    invoke-direct {p0}, Lorg/flerovium/settings/applications/AppOpsDetails;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    invoke-direct {p0, v1, v1}, Lorg/flerovium/settings/applications/AppOpsDetails;->setIntentAndFinish(ZZ)V

    .line 281
    :cond_0
    return-void
.end method
