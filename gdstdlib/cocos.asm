%include "gdlib.asm"
extern __Z7getBasev
%macro defit 2
global %1
%1:
	push rbp
	mov rbp, rsp
	pushallnorax
	pushmm xmm0
	pushmm xmm1
	push rsi
	push rdi

	call __Z7getBasev
	add rax, %2

	pop rdi
	pop rsi
	popmm xmm1
	popmm xmm0
	popallnorax
	pop rbp
	jmp rax
%endmacro

%macro virt 2
global %1
%1:
	push rbp
	mov rbp, rsp
	mov rax, [rdi]
	call [rax+%2]
	pop rbp
	ret
%endmacro

%macro classvar 2
global %1
%1:
	push rbp
	mov rbp, rsp
	mov rax, [rdi+%2]
	pop rbp
	ret
%endmacro

global __ZN5GDObj9valOffsetEl
__ZN5GDObj9valOffsetEl:
	mov rax, [rdi+rsi]
	ret

global __ZN5GDObj12setValOffsetElPv
__ZN5GDObj12setValOffsetElPv:
	mov [rdi+rsi], rdx
	ret

global __ZN11GameManager7manFileEv
__ZN11GameManager7manFileEv:
	lea rax, [rdi+0x120]
	ret


global __ZN7cocos2d2ui6MarginC1Ev
__ZN7cocos2d2ui6MarginC1Ev:
	push rbp
	mov rbp, rsp
	pop rbp
	ret

global __ZN11GameManager17setSecondColorIdxEi
__ZN11GameManager17setSecondColorIdxEi:
	mov [rdi+0x260], esi
	mov dword [rdi+0x264], 0
	ret
global __ZN11GameManager16setFirstColorIdxEi
__ZN11GameManager16setFirstColorIdxEi:
	mov [rdi+0x254], esi
	mov dword [rdi+0x258], 0
	ret

defit __ZN21MoreVideoOptionsLayer6createEv, 0x443c10
defit __ZN21MoreVideoOptionsLayer4initEv, 0x444150

defit __ZN7cocos2d8CCString16createWithFormatEPKcz, 0x44cab0
defit __ZNK7cocos2d8CCString10getCStringEv, 0x44c470
defit __ZN7cocos2d8CCString8intValueEv, 0x44c780
defit __ZN7cocos2d8CCString11doubleValueEv, 0x44c7f0
defit __ZN7cocos2d8CCString9boolValueEPv, 0x44c810

defit __ZN7cocos2d6CCRectC1Effff, 0x137020
defit __ZN7cocos2d6CCRectC2Ev, 0x1375a0
defit __ZN7cocos2d6CCRectC1ERKS0_, 0x137630
defit __ZN7cocos2d6CCRectaSERKS0_, 0x137670
defit __ZN7cocos2d6CCRect7getMaxXEv, 0x137710
defit __ZN7cocos2d6CCRect7getMinXEv, 0x137750
defit __ZN7cocos2d6CCRect7getMaxYEv, 0x137760
defit __ZN7cocos2d6CCRect7getMinYEv, 0x1377a0
defit __ZN7cocos2d6CCRect14intersectsRectERKS0_, 0x137800

defit __ZN7cocos2d7CCPointC1Eff, 0x137000
defit __ZN7cocos2d7CCPointC1Ev, 0x137060
defit __ZN7cocos2d7CCPointC2ERKS0_, 0x137090
defit __ZN7cocos2d7CCPointaSERKS0_, 0x1370c0
defit __ZN7cocos2d7CCPointplERKS0_, 0x1370f0
defit __ZN7cocos2d7CCPointmiERKS0_, 0x137120
defit __ZN7cocos2d7CCPoint6equalsEPvRKS0_, 0x1371d0

defit __ZN7cocos2d6CCSizeC1Eff, 0x137010

defit __ZN11GameManager11sharedStateEv, 0x1c2b30
defit __ZN11GameManager15getGameVariableEPKc, 0x1cccd0
defit __ZN11GameManager15setGameVariableEPKcb, 0x1cca80

defit __ZN8EditorUI12pasteObjectsESs, 0x232d0
defit __ZN8EditorUI14undoLastActionEv, 0xb830
defit __ZN8EditorUI14redoLastActionEv, 0xb8e0

defit __ZN7cocos2d7CCLayer6createEv, 0x272a00

defit __ZN16LevelEditorLayer23createObjectsFromStringESsb, 0x94730
defit __ZN16LevelEditorLayer16removeAllObjectsEv, 0x93d80
defit __ZN16LevelEditorLayer14undoLastActionEv, 0x97770
defit __ZN16LevelEditorLayer14redoLastActionEv, 0x97750

defit __ZN12CCSpritePart25createWithSpriteFrameNameEPKc, 0x132dc0
defit __ZN7cocos2d8CCSpriteC1Ev, 0x124ac0
defit __ZN7cocos2d8CCSprite6createEv, 0x132df0
defit __ZN7cocos2d8CCSprite25createWithSpriteFrameNameEPKc, 0x132dc0

defit __ZN7cocos2d11CCTexture2DC2Ev, 0x246280
defit __ZN7cocos2d11CCTexture2D13initWithImageEPNS_7CCImageE, 0x246940

defit __ZN7cocos2d7CCImageC2Ev, 0x24fa00
defit __ZN7cocos2d7CCImage17initWithImageDataEPviNS0_12EImageFormatEiii, 0x24fcb0

defit __ZN10GameObjectC1Ev, 0xdc4c0
defit __ZN10GameObject4initEPKc, 0x2f5520
defit __ZN10GameObject11setPositionERKN7cocos2d7CCPointE, 0x335850
defit __ZN10GameObject13destroyObjectEv, 0x336a00

defit __ZN12PlayerObject6createEiiPN7cocos2d7CCLayerE, 0x217260
defit __ZN12PlayerObject15addAllParticlesEv, 0x2189b0

defit __ZN7cocos2d12CCDictionary12objectForKeyERKSs, 0x190870
defit __ZN7cocos2d12CCDictionary11valueForKeyEl, 0x190cf0
defit __ZN7cocos2d12CCDictionary9setObjectEPNS_8CCObjectERKSs, 0x190dc0
defit __ZN7cocos2d12CCDictionary9setObjectEPNS_8CCObjectEl, 0x0191790

defit __ZN13ObjectToolbox11sharedStateEv, 0x3b2bc0

defit __ZN12FLAlertLayer6createEPvPKcRKSsS2_S2_f, 0x25e0e0
defit __ZN12FLAlertLayer4showEv, 0x25f120
defit __ZN12FLAlertLayerC1Ev, 0x274270

defit __ZN9MenuLayer14keyBackClickedEv, 0x1d3170


defit __ZN7cocos2d10CCDirector14sharedDirectorEv, 0x248cb0
defit __ZN7cocos2d10CCDirector18getTouchDispatcherEPv, 0x24afa0

defit __ZN7cocos2d17CCTouchDispatcher18incrementForcePrioEi, 0x280f60
defit __ZN7cocos2d10CCDirector10getWinSizeEv, 0x24a0f0


defit __ZN7cocos2d9extension14CCScale9Sprite14setContentSizeERKNS_6CCSizeE, 0x2127c0
defit __ZN7cocos2d9extension14CCScale9Sprite6createEPKcNS_6CCRectE, 0x212ef0

defit __ZN7cocos2d7CCArray13objectAtIndexEj, 0x41a340

defit __ZN21CCMenuItemSpriteExtra6createEPN7cocos2d6CCNodeES2_PNS0_8CCObjectEMS3_FvS4_E, 0x1253c0
defit __ZN21CCMenuItemSpriteExtra11setSizeMultEf, 0x1255e0

defit __ZN7cocos2d13CCLabelBMFont6createEPKcS2_, 0x347660
defit __ZN7cocos2d13CCLabelBMFont8setScaleEf, 0x34a5d0

defit __ZN11GameManager11fadeInMusicEPKc, 0x1c2ff0

defit __ZN11AppDelegate3getEv, 0x3aab10

defit __ZN9MenuLayer6onQuitEPN7cocos2d8CCObjectE, 0x1d2b40

defit __ZN7cocos2d8CCObject7isEqualEPKS0_, 0x250f20
defit __ZN7cocos2d8CCObject13acceptVisitorERNS_13CCDataVisitorE, 0x250f30
defit __ZN7cocos2d6CCNode6updateEf, 0x1241a0
defit __ZN7cocos2d8CCObject15encodeWithCoderEP13DS_Dictionary, 0x250f70
defit __ZN7cocos2d8CCObject9canEncodeEv, 0x250f90
defit __ZNK7cocos2d8CCObject6getTagEv, 0x250f50
defit __ZN7cocos2d8CCObject6setTagEi, 0x250f60
defit __ZN7cocos2d12CCLayerColor4initEv, 0x274800
defit __ZN7cocos2d6CCNode9setZOrderEi, 0x1229a0
defit __ZN7cocos2d6CCNode10_setZOrderEi, 0x122990
defit __ZN7cocos2d6CCNode9getZOrderEv, 0x122980
defit __ZN7cocos2d6CCNode10setVertexZEf, 0x1229f0
defit __ZN7cocos2d6CCNode10getVertexZEv, 0x1229e0
defit __ZN7cocos2d6CCNode9setScaleXEf, 0x122b10
defit __ZN7cocos2d6CCNode9getScaleXEv, 0x122b00
defit __ZN7cocos2d6CCNode9setScaleYEf, 0x122b40
defit __ZN7cocos2d6CCNode9getScaleYEv, 0x122b30
defit __ZN7cocos2d6CCNode8setScaleEf, 0x122ac0
defit __ZN7cocos2d6CCNode8getScaleEv, 0x122ab0
defit __ZN7cocos2d6CCNode8setScaleEff, 0x122ae0
defit __ZN7cocos2d6CCNode11setPositionERKNS_7CCPointE, 0x122b70
defit __ZN7cocos2d6CCNode11getPositionEv, 0x122b60
defit __ZN7cocos2d6CCNode11setPositionEff, 0x122ba0
defit __ZN7cocos2d6CCNode11getPositionEPfS1_, 0x122b90
defit __ZN7cocos2d6CCNode12setPositionXEf, 0x122c00
defit __ZN7cocos2d6CCNode12getPositionXEv, 0x122be0
defit __ZN7cocos2d6CCNode12setPositionYEf, 0x122c40
defit __ZN7cocos2d6CCNode12getPositionYEv, 0x122bf0
defit __ZN7cocos2d6CCNode8setSkewXEf, 0x122930
defit __ZN7cocos2d6CCNode8getSkewXEv, 0x122920
defit __ZN7cocos2d6CCNode8setSkewYEf, 0x122960
defit __ZN7cocos2d6CCNode8getSkewYEv, 0x122950
defit __ZN7cocos2d6CCNode14setAnchorPointERKNS_7CCPointE, 0x122d90
defit __ZN7cocos2d6CCNode14getAnchorPointEv, 0x122d80
defit __ZN7cocos2d6CCNode22getAnchorPointInPointsEv, 0x122d70
defit __ZN7cocos2d12CCLayerColor14setContentSizeERKNS_6CCSizeE, 0x2749f0
defit __ZNK7cocos2d6CCNode14getContentSizeEv, 0x122e00
defit __ZN7cocos2d6CCNode20getScaledContentSizeEv, 0x122e10
defit __ZN7cocos2d6CCNode10setVisibleEb, 0x122d60
defit __ZN7cocos2d6CCNode9isVisibleEv, 0x122d50
defit __ZN7cocos2d6CCNode11setRotationEf, 0x122a10
defit __ZN7cocos2d6CCNode11getRotationEv, 0x122a00
defit __ZN7cocos2d6CCNode12setRotationXEf, 0x122a60
defit __ZN7cocos2d6CCNode12getRotationXEv, 0x122a50
defit __ZN7cocos2d6CCNode12setRotationYEf, 0x122a90
defit __ZN7cocos2d6CCNode12getRotationYEv, 0x122a80
defit __ZN7cocos2d6CCNode17setOrderOfArrivalEj, 0x122f60
defit __ZN7cocos2d6CCNode17getOrderOfArrivalEv, 0x122f50
defit __ZN7cocos2d6CCNode16setGLServerStateENS_15ccGLServerStateE, 0x122fa0
defit __ZN7cocos2d6CCNode16getGLServerStateEv, 0x122f90
defit __ZN7cocos2d6CCNode28ignoreAnchorPointForPositionEb, 0x122f00
defit __ZN7cocos2d6CCNode30isIgnoreAnchorPointForPositionEv, 0x122ef0
defit __ZN7cocos2d6CCNode8addChildEPS0_, 0x1233d0
defit __ZN7cocos2d6CCNode8addChildEPS0_i, 0x1233b0
defit __ZN7cocos2d6CCNode8addChildEPS0_ii, 0x1232a0
defit __ZN7cocos2d6CCNode13getChildByTagEi, 0x123220
defit __ZN7cocos2d6CCNode11getChildrenEv, 0x122c80
defit __ZNK7cocos2d6CCNode16getChildrenCountEv, 0x122c90
defit __ZN7cocos2d6CCNode9setParentEPS0_, 0x122ee0
defit __ZN7cocos2d6CCNode9getParentEv, 0x122ed0
defit __ZN7cocos2d6CCNode16removeFromParentEv, 0x1233f0
defit __ZN7cocos2d6CCNode26removeFromParentAndCleanupEb, 0x123410
defit __ZN7cocos2d6CCNode18removeMeAndCleanupEv, 0x123440
defit __ZN7cocos2d6CCNode11removeChildEPS0_, 0x123460
defit __ZN7cocos2d6CCNode11removeChildEPS0_b, 0x123480
defit __ZN7cocos2d6CCNode16removeChildByTagEi, 0x1235a0
defit __ZN7cocos2d6CCNode16removeChildByTagEib, 0x1235c0
defit __ZN7cocos2d6CCNode17removeAllChildrenEv, 0x123600
defit __ZN7cocos2d6CCNode28removeAllChildrenWithCleanupEb, 0x123620
defit __ZN7cocos2d6CCNode12reorderChildEPS0_i, 0x123760
defit __ZN7cocos2d6CCNode15sortAllChildrenEv, 0x1237b0
defit __ZN7cocos2d6CCNode7getGridEv, 0x122d00
defit __ZN7cocos2d6CCNode7setGridEPNS_10CCGridBaseE, 0x122d10
defit __ZN7cocos2d6CCNode11getUserDataEv, 0x122f30
defit __ZN7cocos2d6CCNode11setUserDataEPv, 0x122f40
defit __ZN7cocos2d6CCNode13getUserObjectEv, 0x122f80
defit __ZN7cocos2d6CCNode13setUserObjectEPNS_8CCObjectE, 0x122fb0
defit __ZN7cocos2d6CCNode16getShaderProgramEv, 0x122f70
defit __ZN7cocos2d6CCNode16setShaderProgramEPNS_11CCGLProgramE, 0x122ff0
defit __ZN7cocos2d6CCNode9getCameraEv, 0x122cb0
defit __ZN7cocos2d6CCNode9isRunningEv, 0x122ec0
defit __ZN7cocos2d6CCNode21registerScriptHandlerEi, 0x123d90
defit __ZN7cocos2d6CCNode23unregisterScriptHandlerEv, 0x123dc0
defit __ZN12FLAlertLayer7onEnterEv, 0x273300
defit __ZN7cocos2d7CCLayer26onEnterTransitionDidFinishEv, 0x273490
defit __ZN7cocos2d7CCLayer6onExitEv, 0x2733c0
defit __ZN7cocos2d6CCNode24onExitTransitionDidStartEv, 0x123c00
defit __ZN7cocos2d6CCNode7cleanupEv, 0x123100
defit _sexyRender, 0x274b50
defit __ZN7cocos2d6CCNode5visitEv, 0x123850
defit __ZN7cocos2d6CCNode16setActionManagerEPNS_15CCActionManagerE, 0x123e00
defit __ZN7cocos2d6CCNode16getActionManagerEv, 0x123e50
defit __ZN7cocos2d6CCNode12setSchedulerEPNS_11CCSchedulerE, 0x123f20
defit __ZN7cocos2d6CCNode12getSchedulerEv, 0x123f70
defit __ZN7cocos2d6CCNode15updateTransformEv, 0x1249d0
defit __ZN7cocos2d6CCNode21nodeToParentTransformEv, 0x124210
defit __ZN7cocos2d6CCNode21parentToNodeTransformEv, 0x1245d0
defit __ZN7cocos2d6CCNode20nodeToWorldTransformEv, 0x124670
defit __ZN7cocos2d6CCNode20worldToNodeTransformEv, 0x124710
defit __ZN7cocos2d6CCNode12addComponentEPNS_11CCComponentE, 0x124a40
defit __ZN7cocos2d6CCNode15removeComponentEPKc, 0x124a60
defit __ZN7cocos2d6CCNode15removeComponentEPNS_11CCComponentE, 0x124a80
defit __ZN7cocos2d6CCNode19removeAllComponentsEv, 0x124aa0
defit __ZN7cocos2d6CCNode17updateTweenActionEfPKc, 0x1249c0
defit __ZN12FLAlertLayer12ccTouchBeganEPN7cocos2d7CCTouchEPNS0_7CCEventE, 0x2734d0
defit __ZN12FLAlertLayer12ccTouchMovedEPN7cocos2d7CCTouchEPNS0_7CCEventE, 0x273550
defit __ZN12FLAlertLayer12ccTouchEndedEPN7cocos2d7CCTouchEPNS0_7CCEventE, 0x2735d0
defit __ZN12FLAlertLayer16ccTouchCancelledEPN7cocos2d7CCTouchEPNS0_7CCEventE, 0x273650
defit __ZN7cocos2d7CCLayer14ccTouchesBeganEPNS_5CCSetEPNS_7CCEventE, 0x2736d0
defit __ZN7cocos2d7CCLayer14ccTouchesMovedEPNS_5CCSetEPNS_7CCEventE, 0x273750
defit __ZN7cocos2d7CCLayer14ccTouchesEndedEPNS_5CCSetEPNS_7CCEventE, 0x2737d0
defit __ZN7cocos2d7CCLayer18ccTouchesCancelledEPNS_5CCSetEPNS_7CCEventE, 0x273850
defit __ZN7cocos2d7CCLayer13didAccelerateEPNS_14CCAccelerationE, 0x272ea0
defit __ZN12FLAlertLayer27registerWithTouchDispatcherEv, 0x272b40
defit __ZN7cocos2d7CCLayer26registerScriptTouchHandlerEibib, 0x272bd0
defit __ZN7cocos2d7CCLayer28unregisterScriptTouchHandlerEv, 0x272c30
defit __ZN7cocos2d7CCLayer14isTouchEnabledEv, 0x272ce0
defit __ZN7cocos2d7CCLayer15setTouchEnabledEb, 0x272cf0
defit __ZN7cocos2d7CCLayer12setTouchModeENS_13ccTouchesModeE, 0x272d60
defit __ZN7cocos2d7CCLayer12getTouchModeEv, 0x272e10
defit __ZN7cocos2d7CCLayer16setTouchPriorityEi, 0x272db0
defit __ZN7cocos2d7CCLayer16getTouchPriorityEv, 0x272e00
defit __ZN7cocos2d7CCLayer22isAccelerometerEnabledEv, 0x272e20
defit __ZN7cocos2d7CCLayer23setAccelerometerEnabledEb, 0x272e30
defit __ZN7cocos2d7CCLayer24setAccelerometerIntervalEd, 0x272e70
defit __ZN7cocos2d7CCLayer15isKeypadEnabledEv, 0x272f70
defit __ZN7cocos2d7CCLayer16setKeypadEnabledEb, 0x272f80
defit __ZN7cocos2d7CCLayer17isKeyboardEnabledEv, 0x273010
defit __ZN7cocos2d7CCLayer18setKeyboardEnabledEb, 0x273020
defit __ZN7cocos2d7CCLayer14isMouseEnabledEv, 0x273090
defit __ZN7cocos2d7CCLayer15setMouseEnabledEb, 0x2730a0
defit __ZN12FLAlertLayer14keyBackClickedEv, 0x273160
defit __ZN7cocos2d7CCLayer14keyMenuClickedEv, 0x273200
defit __ZN12FLAlertLayer7keyDownEN7cocos2d12enumKeyCodesE, 0x273280
defit __ZN7cocos2d11CCLayerRGBA10getOpacityEv, 0x273be0
defit __ZN7cocos2d11CCLayerRGBA19getDisplayedOpacityEv, 0x273c00
defit __ZN7cocos2d12CCLayerColor10setOpacityEh, 0x274db0
defit __ZN7cocos2d11CCLayerRGBA22updateDisplayedOpacityEh, 0x273f20
defit __ZN7cocos2d11CCLayerRGBA23isCascadeOpacityEnabledEv, 0x2741f0
defit __ZN7cocos2d11CCLayerRGBA24setCascadeOpacityEnabledEb, 0x274210
defit __ZN7cocos2d11CCLayerRGBA8getColorEv, 0x273d60
defit __ZN7cocos2d11CCLayerRGBA17getDisplayedColorEv, 0x273d80
defit __ZN7cocos2d12CCLayerColor8setColorERKNS_10_ccColor3BE, 0x274c20
defit __ZN7cocos2d11CCLayerRGBA20updateDisplayedColorERKNS_10_ccColor3BE, 0x2740b0
defit __ZN7cocos2d11CCLayerRGBA21isCascadeColorEnabledEv, 0x274230
defit __ZN7cocos2d11CCLayerRGBA22setCascadeColorEnabledEb, 0x274250
defit __ZN7cocos2d11CCLayerRGBA19setOpacityModifyRGBEb, 0x006180
defit __ZN7cocos2d11CCLayerRGBA18isOpacityModifyRGBEv, 0x006190
defit __ZN7cocos2d12CCLayerColor13initWithColorERKNS_10_ccColor4BEff, 0x274850
defit __ZN7cocos2d12CCLayerColor13initWithColorERKNS_10_ccColor4BE, 0x2749a0

defit __ZN14GJSearchObject6createEiSsSsSsibbbibbbbbbbbii, 0x2dee30
defit __ZN17LevelBrowserLayer5sceneEP14GJSearchObject, 0x2511d0
defit __ZN7cocos2d16CCTransitionFade6createEfPNS_7CCSceneE, 0x8ea30
defit __ZN7cocos2d10CCDirector9pushSceneEPNS_7CCSceneE, 0x24a620

defit __ZN11GameManager14reloadAllStep5Ev, 0x1d0b00
defit __ZN11GameManager11doQuickSaveEv, 0x1d0200
defit __ZN11GameManager9reloadAllEbbb, 0x1d08a0
defit __ZN11GameManagerD0Ev, 0x1d0ff0
defit __ZN11GameManagerD1Ev, 0x1d0fe0

defit __ZN16GameSoundManager13sharedManagerEv, 0x3610f0
defit __ZN16GameSoundManagerD1Ev, 0x362cc0
defit __ZN16GameSoundManagerD0Ev, 0x362cd0

defit __ZN16GameSoundManager19stopBackgroundMusicEv, 0x362130

defit __ZN11GameManager20accountStatusChangedEv, 0x1cdad0

defit __ZN11GameManager4loadEv, 0x26ee20

defit __ZN11GameManager11colorForIdxEi, 0x1cbc80