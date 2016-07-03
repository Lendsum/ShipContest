﻿<root dataType="Struct" type="Duality.Resources.Scene" id="129723834">
  <assetInfo />
  <globalGravity dataType="Struct" type="Duality.Vector2">
    <X dataType="Float">0</X>
    <Y dataType="Float">0</Y>
  </globalGravity>
  <serializeObj dataType="Array" type="Duality.GameObject[]" id="427169525">
    <item dataType="Struct" type="Duality.GameObject" id="192365404">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="410081842">
        <_items dataType="Array" type="Duality.Component[]" id="541555152">
          <item dataType="Struct" type="Duality.Components.Transform" id="2552680336">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">192365404</gameobj>
            <ignoreParent dataType="Bool">false</ignoreParent>
            <parentTransform />
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-57.6982422</X>
              <Y dataType="Float">38.465332</Y>
              <Z dataType="Float">1</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-57.6982422</X>
              <Y dataType="Float">38.465332</Y>
              <Z dataType="Float">1</Z>
            </posAbs>
            <scale dataType="Float">2</scale>
            <scaleAbs dataType="Float">2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
              <Z dataType="Float">0</Z>
            </vel>
            <velAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
              <Z dataType="Float">0</Z>
            </velAbs>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="1834531972">
            <active dataType="Bool">true</active>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customMat />
            <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
            <gameobj dataType="ObjectRef">192365404</gameobj>
            <offset dataType="Int">0</offset>
            <pixelGrid dataType="Bool">false</pixelGrid>
            <rect dataType="Struct" type="Duality.Rect">
              <H dataType="Float">1024</H>
              <W dataType="Float">1024</W>
              <X dataType="Float">-512</X>
              <Y dataType="Float">-512</Y>
            </rect>
            <rectMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+UVMode" name="Stretch" value="0" />
            <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\fondo.Material.res</contentPath>
            </sharedMat>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="3255141928">
            <active dataType="Bool">true</active>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">192365404</gameobj>
            <ignoreGravity dataType="Bool">false</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">0.3</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
            </linearVel>
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3239274264">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="1241377324">
                <item dataType="Struct" type="Duality.Components.Physics.PolyShapeInfo" id="1299772644">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">3255141928</parent>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">true</sensor>
                  <vertices dataType="Array" type="Duality.Vector2[]" id="3840726980">
                    <item dataType="Struct" type="Duality.Vector2">
                      <X dataType="Float">-509.0056</X>
                      <Y dataType="Float">-509.095764</Y>
                    </item>
                    <item dataType="Struct" type="Duality.Vector2">
                      <X dataType="Float">-509.0056</X>
                      <Y dataType="Float">511.306274</Y>
                    </item>
                    <item dataType="Struct" type="Duality.Vector2">
                      <X dataType="Float">-574.074768</X>
                      <Y dataType="Float">534.9678</Y>
                    </item>
                    <item dataType="Struct" type="Duality.Vector2">
                      <X dataType="Float">-577.0324</X>
                      <Y dataType="Float">-541.6303</Y>
                    </item>
                  </vertices>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.PolyShapeInfo" id="2476596758">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">3255141928</parent>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">true</sensor>
                  <vertices dataType="Array" type="Duality.Vector2[]" id="825508526">
                    <item dataType="Struct" type="Duality.Vector2">
                      <X dataType="Float">-511.963257</X>
                      <Y dataType="Float">502.433319</Y>
                    </item>
                    <item dataType="Struct" type="Duality.Vector2">
                      <X dataType="Float">511.3964</X>
                      <Y dataType="Float">505.391022</Y>
                    </item>
                    <item dataType="Struct" type="Duality.Vector2">
                      <X dataType="Float">543.931</X>
                      <Y dataType="Float">555.6717</Y>
                    </item>
                    <item dataType="Struct" type="Duality.Vector2">
                      <X dataType="Float">-577.0324</X>
                      <Y dataType="Float">543.840942</Y>
                    </item>
                  </vertices>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.PolyShapeInfo" id="1406794464">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">3255141928</parent>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">true</sensor>
                  <vertices dataType="Array" type="Duality.Vector2[]" id="3919472904">
                    <item dataType="Struct" type="Duality.Vector2">
                      <X dataType="Float">511.3964</X>
                      <Y dataType="Float">-509.095764</Y>
                    </item>
                    <item dataType="Struct" type="Duality.Vector2">
                      <X dataType="Float">514.3541</X>
                      <Y dataType="Float">508.348572</Y>
                    </item>
                    <item dataType="Struct" type="Duality.Vector2">
                      <X dataType="Float">552.8041</X>
                      <Y dataType="Float">561.5869</Y>
                    </item>
                    <item dataType="Struct" type="Duality.Vector2">
                      <X dataType="Float">543.931</X>
                      <Y dataType="Float">-535.714966</Y>
                    </item>
                  </vertices>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.PolyShapeInfo" id="672455266">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">3255141928</parent>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">true</sensor>
                  <vertices dataType="Array" type="Duality.Vector2[]" id="2529665138">
                    <item dataType="Struct" type="Duality.Vector2">
                      <X dataType="Float">-509.4508</X>
                      <Y dataType="Float">-514.1351</Y>
                    </item>
                    <item dataType="Struct" type="Duality.Vector2">
                      <X dataType="Float">513.2212</X>
                      <Y dataType="Float">-511.082336</Y>
                    </item>
                    <item dataType="Struct" type="Duality.Vector2">
                      <X dataType="Float">555.9598</X>
                      <Y dataType="Float">-553.820862</Y>
                    </item>
                    <item dataType="Struct" type="Duality.Vector2">
                      <X dataType="Float">-573.5586</X>
                      <Y dataType="Float">-544.6626</Y>
                    </item>
                  </vertices>
                </item>
              </_items>
              <_size dataType="Int">4</_size>
              <_version dataType="Int">6</_version>
            </shapes>
          </item>
          <item dataType="Struct" type="naves.SpaceBagController" id="1395198759">
            <_x003C_PlayerPrefab_x003E_k__BackingField dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Prefab]]">
              <contentPath dataType="String">Data\Player.Prefab.res</contentPath>
            </_x003C_PlayerPrefab_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">192365404</gameobj>
            <Players dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Int32],[naves.Player]]" id="2476053379" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="167137062">
                  <item dataType="Int">1</item>
                  <item dataType="Int">2</item>
                  <item dataType="Int">3</item>
                  <item dataType="Int">4</item>
                </keys>
                <values dataType="Array" type="System.Object[]" id="1273219770">
                  <item dataType="Struct" type="naves.Player" id="2400961199">
                    <active dataType="Bool">true</active>
                    <gameobj dataType="Struct" type="Duality.GameObject" id="3316369889">
                      <active dataType="Bool">true</active>
                      <children />
                      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3782540">
                        <_items dataType="Array" type="Duality.Component[]" id="1148114852" length="8">
                          <item dataType="Struct" type="Duality.Components.Transform" id="1381717525">
                            <active dataType="Bool">true</active>
                            <gameobj dataType="ObjectRef">3316369889</gameobj>
                          </item>
                          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="663569161">
                            <active dataType="Bool">true</active>
                            <gameobj dataType="ObjectRef">3316369889</gameobj>
                          </item>
                          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="2084179117">
                            <active dataType="Bool">true</active>
                            <gameobj dataType="ObjectRef">3316369889</gameobj>
                          </item>
                          <item dataType="ObjectRef">2400961199</item>
                          <item dataType="Struct" type="Duality.Components.Renderers.TextRenderer" id="764031415">
                            <active dataType="Bool">true</active>
                            <gameobj dataType="ObjectRef">3316369889</gameobj>
                          </item>
                        </_items>
                        <_size dataType="Int">5</_size>
                        <_version dataType="Int">5</_version>
                      </compList>
                      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1005538806" surrogate="true">
                        <header />
                        <body>
                          <keys dataType="Array" type="System.Object[]" id="1482865414">
                            <item dataType="Type" id="1043591552" value="Duality.Components.Transform" />
                            <item dataType="Type" id="2814791886" value="Duality.Components.Renderers.SpriteRenderer" />
                            <item dataType="Type" id="133521180" value="Duality.Components.Physics.RigidBody" />
                            <item dataType="Type" id="1166342610" value="naves.Player" />
                            <item dataType="Type" id="1432498488" value="Duality.Components.Renderers.TextRenderer" />
                          </keys>
                          <values dataType="Array" type="System.Object[]" id="404903226">
                            <item dataType="ObjectRef">1381717525</item>
                            <item dataType="ObjectRef">663569161</item>
                            <item dataType="ObjectRef">2084179117</item>
                            <item dataType="ObjectRef">2400961199</item>
                            <item dataType="ObjectRef">764031415</item>
                          </values>
                        </body>
                      </compMap>
                      <compTransform dataType="ObjectRef">1381717525</compTransform>
                      <identifier dataType="Struct" type="System.Guid" surrogate="true">
                        <header>
                          <data dataType="Array" type="System.Byte[]" id="2027075974">HINzDNhHt0q+aY5Mb4PmSg==</data>
                        </header>
                        <body />
                      </identifier>
                      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
                      <name dataType="String">ShipOne</name>
                      <parent />
                      <prefabLink dataType="Struct" type="Duality.Resources.PrefabLink" id="4104632600">
                        <changes />
                        <obj dataType="ObjectRef">3316369889</obj>
                        <prefab dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Prefab]]">
                          <contentPath dataType="String">Data\Player.Prefab.res</contentPath>
                        </prefab>
                      </prefabLink>
                    </gameobj>
                  </item>
                  <item dataType="Struct" type="naves.Player" id="1346838009">
                    <active dataType="Bool">true</active>
                    <gameobj dataType="Struct" type="Duality.GameObject" id="2262246699">
                      <active dataType="Bool">true</active>
                      <children />
                      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1435175608">
                        <_items dataType="Array" type="Duality.Component[]" id="1362720876" length="8">
                          <item dataType="Struct" type="Duality.Components.Transform" id="327594335">
                            <active dataType="Bool">true</active>
                            <gameobj dataType="ObjectRef">2262246699</gameobj>
                          </item>
                          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="3904413267">
                            <active dataType="Bool">true</active>
                            <gameobj dataType="ObjectRef">2262246699</gameobj>
                          </item>
                          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1030055927">
                            <active dataType="Bool">true</active>
                            <gameobj dataType="ObjectRef">2262246699</gameobj>
                          </item>
                          <item dataType="ObjectRef">1346838009</item>
                          <item dataType="Struct" type="Duality.Components.Renderers.TextRenderer" id="4004875521">
                            <active dataType="Bool">true</active>
                            <gameobj dataType="ObjectRef">2262246699</gameobj>
                          </item>
                        </_items>
                        <_size dataType="Int">5</_size>
                        <_version dataType="Int">5</_version>
                      </compList>
                      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="673445086" surrogate="true">
                        <header />
                        <body>
                          <keys dataType="Array" type="System.Object[]" id="1391205626">
                            <item dataType="ObjectRef">1043591552</item>
                            <item dataType="ObjectRef">2814791886</item>
                            <item dataType="ObjectRef">133521180</item>
                            <item dataType="ObjectRef">1166342610</item>
                            <item dataType="ObjectRef">1432498488</item>
                          </keys>
                          <values dataType="Array" type="System.Object[]" id="3762607418">
                            <item dataType="ObjectRef">327594335</item>
                            <item dataType="ObjectRef">3904413267</item>
                            <item dataType="ObjectRef">1030055927</item>
                            <item dataType="ObjectRef">1346838009</item>
                            <item dataType="ObjectRef">4004875521</item>
                          </values>
                        </body>
                      </compMap>
                      <compTransform dataType="ObjectRef">327594335</compTransform>
                      <identifier dataType="Struct" type="System.Guid" surrogate="true">
                        <header>
                          <data dataType="Array" type="System.Byte[]" id="2172087930">pGV+damh/UC2RlIHy+Ytcg==</data>
                        </header>
                        <body />
                      </identifier>
                      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
                      <name dataType="String">ShipOne</name>
                      <parent />
                      <prefabLink dataType="Struct" type="Duality.Resources.PrefabLink" id="1363451620">
                        <changes />
                        <obj dataType="ObjectRef">2262246699</obj>
                        <prefab dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Prefab]]">
                          <contentPath dataType="String">Data\Player.Prefab.res</contentPath>
                        </prefab>
                      </prefabLink>
                    </gameobj>
                  </item>
                  <item dataType="Struct" type="naves.Player" id="2212819679">
                    <active dataType="Bool">true</active>
                    <gameobj dataType="Struct" type="Duality.GameObject" id="3128228369">
                      <active dataType="Bool">true</active>
                      <children />
                      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2583358188">
                        <_items dataType="Array" type="Duality.Component[]" id="522373220" length="8">
                          <item dataType="Struct" type="Duality.Components.Transform" id="1193576005">
                            <active dataType="Bool">true</active>
                            <gameobj dataType="ObjectRef">3128228369</gameobj>
                          </item>
                          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="475427641">
                            <active dataType="Bool">true</active>
                            <gameobj dataType="ObjectRef">3128228369</gameobj>
                          </item>
                          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1896037597">
                            <active dataType="Bool">true</active>
                            <gameobj dataType="ObjectRef">3128228369</gameobj>
                          </item>
                          <item dataType="ObjectRef">2212819679</item>
                          <item dataType="Struct" type="Duality.Components.Renderers.TextRenderer" id="575889895">
                            <active dataType="Bool">true</active>
                            <gameobj dataType="ObjectRef">3128228369</gameobj>
                          </item>
                        </_items>
                        <_size dataType="Int">5</_size>
                        <_version dataType="Int">5</_version>
                      </compList>
                      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="4018309430" surrogate="true">
                        <header />
                        <body>
                          <keys dataType="Array" type="System.Object[]" id="1609983270">
                            <item dataType="ObjectRef">1043591552</item>
                            <item dataType="ObjectRef">2814791886</item>
                            <item dataType="ObjectRef">133521180</item>
                            <item dataType="ObjectRef">1166342610</item>
                            <item dataType="ObjectRef">1432498488</item>
                          </keys>
                          <values dataType="Array" type="System.Object[]" id="3179082426">
                            <item dataType="ObjectRef">1193576005</item>
                            <item dataType="ObjectRef">475427641</item>
                            <item dataType="ObjectRef">1896037597</item>
                            <item dataType="ObjectRef">2212819679</item>
                            <item dataType="ObjectRef">575889895</item>
                          </values>
                        </body>
                      </compMap>
                      <compTransform dataType="ObjectRef">1193576005</compTransform>
                      <identifier dataType="Struct" type="System.Guid" surrogate="true">
                        <header>
                          <data dataType="Array" type="System.Byte[]" id="3694292518">KbEgilSw7ku8YoAraIkc1g==</data>
                        </header>
                        <body />
                      </identifier>
                      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
                      <name dataType="String">ShipOne</name>
                      <parent />
                      <prefabLink dataType="Struct" type="Duality.Resources.PrefabLink" id="160316344">
                        <changes />
                        <obj dataType="ObjectRef">3128228369</obj>
                        <prefab dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Prefab]]">
                          <contentPath dataType="String">Data\Player.Prefab.res</contentPath>
                        </prefab>
                      </prefabLink>
                    </gameobj>
                  </item>
                  <item dataType="Struct" type="naves.Player" id="314094541">
                    <active dataType="Bool">true</active>
                    <gameobj dataType="Struct" type="Duality.GameObject" id="1229503231">
                      <active dataType="Bool">true</active>
                      <children />
                      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1154794000">
                        <_items dataType="Array" type="Duality.Component[]" id="1261433660" length="8">
                          <item dataType="Struct" type="Duality.Components.Transform" id="3589818163">
                            <active dataType="Bool">true</active>
                            <gameobj dataType="ObjectRef">1229503231</gameobj>
                          </item>
                          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="2871669799">
                            <active dataType="Bool">true</active>
                            <gameobj dataType="ObjectRef">1229503231</gameobj>
                          </item>
                          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="4292279755">
                            <active dataType="Bool">true</active>
                            <gameobj dataType="ObjectRef">1229503231</gameobj>
                          </item>
                          <item dataType="ObjectRef">314094541</item>
                          <item dataType="Struct" type="Duality.Components.Renderers.TextRenderer" id="2972132053">
                            <active dataType="Bool">true</active>
                            <gameobj dataType="ObjectRef">1229503231</gameobj>
                          </item>
                        </_items>
                        <_size dataType="Int">5</_size>
                        <_version dataType="Int">5</_version>
                      </compList>
                      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3767490798" surrogate="true">
                        <header />
                        <body>
                          <keys dataType="Array" type="System.Object[]" id="2377577058">
                            <item dataType="ObjectRef">1043591552</item>
                            <item dataType="ObjectRef">2814791886</item>
                            <item dataType="ObjectRef">133521180</item>
                            <item dataType="ObjectRef">1166342610</item>
                            <item dataType="ObjectRef">1432498488</item>
                          </keys>
                          <values dataType="Array" type="System.Object[]" id="2779857290">
                            <item dataType="ObjectRef">3589818163</item>
                            <item dataType="ObjectRef">2871669799</item>
                            <item dataType="ObjectRef">4292279755</item>
                            <item dataType="ObjectRef">314094541</item>
                            <item dataType="ObjectRef">2972132053</item>
                          </values>
                        </body>
                      </compMap>
                      <compTransform dataType="ObjectRef">3589818163</compTransform>
                      <identifier dataType="Struct" type="System.Guid" surrogate="true">
                        <header>
                          <data dataType="Array" type="System.Byte[]" id="2284134290">c/LXFp+2lkiu3uktCnwzGg==</data>
                        </header>
                        <body />
                      </identifier>
                      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
                      <name dataType="String">ShipOne</name>
                      <parent />
                      <prefabLink dataType="Struct" type="Duality.Resources.PrefabLink" id="1684382956">
                        <changes />
                        <obj dataType="ObjectRef">1229503231</obj>
                        <prefab dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Prefab]]">
                          <contentPath dataType="String">Data\Player.Prefab.res</contentPath>
                        </prefab>
                      </prefabLink>
                    </gameobj>
                  </item>
                </values>
              </body>
            </Players>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
        <_version dataType="Int">4</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3587796298" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1511488808">
            <item dataType="ObjectRef">1043591552</item>
            <item dataType="ObjectRef">2814791886</item>
            <item dataType="ObjectRef">133521180</item>
            <item dataType="Type" id="1193717676" value="naves.SpaceBagController" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="73228446">
            <item dataType="ObjectRef">2552680336</item>
            <item dataType="ObjectRef">1834531972</item>
            <item dataType="ObjectRef">3255141928</item>
            <item dataType="ObjectRef">1395198759</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2552680336</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3419015700">NQFEZjNUZkKfJTl0Uv3wDw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">SpaceBg</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3163566341">
      <active dataType="Bool">false</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2030965879">
        <_items dataType="Array" type="Duality.Component[]" id="26940814">
          <item dataType="Struct" type="Duality.Components.Transform" id="1228913977">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3163566341</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="510765613">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3163566341</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1931375569">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3163566341</gameobj>
          </item>
          <item dataType="Struct" type="naves.BulletController" id="1655702322">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3163566341</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
        <_version dataType="Int">4</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3030165824" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3549918653">
            <item dataType="ObjectRef">1043591552</item>
            <item dataType="ObjectRef">2814791886</item>
            <item dataType="ObjectRef">133521180</item>
            <item dataType="Type" id="2388123686" value="naves.BulletController" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="4233994936">
            <item dataType="ObjectRef">1228913977</item>
            <item dataType="ObjectRef">510765613</item>
            <item dataType="ObjectRef">1931375569</item>
            <item dataType="ObjectRef">1655702322</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">1228913977</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2505630103">xHfovXjz+ka3w/Jk6DmxOw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">bulletOne</name>
      <parent />
      <prefabLink dataType="Struct" type="Duality.Resources.PrefabLink" id="1067258069">
        <changes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Resources.PrefabLink+VarMod]]" id="832204980">
          <_items dataType="Array" type="Duality.Resources.PrefabLink+VarMod[]" id="1722518948" length="4">
            <item dataType="Struct" type="Duality.Resources.PrefabLink+VarMod">
              <childIndex dataType="Struct" type="System.Collections.Generic.List`1[[System.Int32]]" id="2070205384">
                <_items dataType="Array" type="System.Int32[]" id="3567520364"></_items>
                <_size dataType="Int">0</_size>
                <_version dataType="Int">1</_version>
              </childIndex>
              <componentType dataType="ObjectRef">133521180</componentType>
              <prop dataType="MemberInfo" id="6132446" value="P:Duality.Components.Physics.RigidBody:Shapes" />
              <val dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="1167426100">
                <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="850817352">
                  <item dataType="Struct" type="Duality.Components.Physics.PolyShapeInfo" id="3119917164">
                    <density dataType="Float">1</density>
                    <friction dataType="Float">0.3</friction>
                    <parent />
                    <restitution dataType="Float">0.3</restitution>
                    <sensor dataType="Bool">true</sensor>
                    <vertices dataType="Array" type="Duality.Vector2[]" id="2599993188">
                      <item dataType="Struct" type="Duality.Vector2">
                        <X dataType="Float">-2.588004</X>
                        <Y dataType="Float">-14.2024918</Y>
                      </item>
                      <item dataType="Struct" type="Duality.Vector2">
                        <X dataType="Float">2.1988554</X>
                        <Y dataType="Float">-14.1533995</Y>
                      </item>
                      <item dataType="Struct" type="Duality.Vector2">
                        <X dataType="Float">2.57398248</X>
                        <Y dataType="Float">13.92896</Y>
                      </item>
                      <item dataType="Struct" type="Duality.Vector2">
                        <X dataType="Float">-2.4762876</X>
                        <Y dataType="Float">13.92896</Y>
                      </item>
                    </vertices>
                  </item>
                </_items>
                <_size dataType="Int">1</_size>
                <_version dataType="Int">6</_version>
              </val>
            </item>
            <item dataType="Struct" type="Duality.Resources.PrefabLink+VarMod">
              <childIndex dataType="Struct" type="System.Collections.Generic.List`1[[System.Int32]]" id="500620066">
                <_items dataType="Array" type="System.Int32[]" id="3494886222"></_items>
                <_size dataType="Int">0</_size>
                <_version dataType="Int">1</_version>
              </childIndex>
              <componentType />
              <prop dataType="MemberInfo" id="2419346816" value="P:Duality.GameObject:ActiveSingle" />
              <val dataType="Bool">false</val>
            </item>
          </_items>
          <_size dataType="Int">2</_size>
          <_version dataType="Int">4</_version>
        </changes>
        <obj dataType="ObjectRef">3163566341</obj>
        <prefab dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Prefab]]">
          <contentPath dataType="String">Data\Bullet.Prefab.res</contentPath>
        </prefab>
      </prefabLink>
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3050105854">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="934415016">
        <_items dataType="Array" type="Duality.Component[]" id="190461612" length="4">
          <item dataType="Struct" type="Duality.Components.Transform" id="1115453490">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0.003061029</angle>
            <angleAbs dataType="Float">0.003061029</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">3050105854</gameobj>
            <ignoreParent dataType="Bool">false</ignoreParent>
            <parentTransform />
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">99.19415</X>
              <Y dataType="Float">-588.5352</Y>
              <Z dataType="Float">0</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">99.19415</X>
              <Y dataType="Float">-588.5352</Y>
              <Z dataType="Float">0</Z>
            </posAbs>
            <scale dataType="Float">0.906190157</scale>
            <scaleAbs dataType="Float">0.906190157</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
              <Z dataType="Float">0</Z>
            </vel>
            <velAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
              <Z dataType="Float">0</Z>
            </velAbs>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="397305126">
            <active dataType="Bool">true</active>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customMat />
            <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
            <gameobj dataType="ObjectRef">3050105854</gameobj>
            <offset dataType="Int">0</offset>
            <pixelGrid dataType="Bool">false</pixelGrid>
            <rect dataType="Struct" type="Duality.Rect">
              <H dataType="Float">38</H>
              <W dataType="Float">43</W>
              <X dataType="Float">-21.5</X>
              <Y dataType="Float">-19</Y>
            </rect>
            <rectMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+UVMode" name="Stretch" value="0" />
            <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\ShipOne.Material.res</contentPath>
            </sharedMat>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1817915082">
            <active dataType="Bool">true</active>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">3050105854</gameobj>
            <ignoreGravity dataType="Bool">false</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">0.3</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
            </linearVel>
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="4201154186">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="4135648224">
                <item dataType="Struct" type="Duality.Components.Physics.PolyShapeInfo" id="2598831068">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">1817915082</parent>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <vertices dataType="Array" type="Duality.Vector2[]" id="2590116548">
                    <item dataType="Struct" type="Duality.Vector2">
                      <X dataType="Float">-0.8737386</X>
                      <Y dataType="Float">-17.75641</Y>
                    </item>
                    <item dataType="Struct" type="Duality.Vector2">
                      <X dataType="Float">-5.22240734</X>
                      <Y dataType="Float">3.12484884</Y>
                    </item>
                    <item dataType="Struct" type="Duality.Vector2">
                      <X dataType="Float">3.10014486</X>
                      <Y dataType="Float">2.99173713</Y>
                    </item>
                  </vertices>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.PolyShapeInfo" id="2685663510">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">1817915082</parent>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <vertices dataType="Array" type="Duality.Vector2[]" id="1203451126">
                    <item dataType="Struct" type="Duality.Vector2">
                      <X dataType="Float">-20.0053635</X>
                      <Y dataType="Float">5.96274662</Y>
                    </item>
                    <item dataType="Struct" type="Duality.Vector2">
                      <X dataType="Float">19.5226078</X>
                      <Y dataType="Float">5.070406</Y>
                    </item>
                    <item dataType="Struct" type="Duality.Vector2">
                      <X dataType="Float">-0.828193545</X>
                      <Y dataType="Float">17.6227665</Y>
                    </item>
                  </vertices>
                </item>
              </_items>
              <_size dataType="Int">2</_size>
              <_version dataType="Int">2</_version>
            </shapes>
          </item>
        </_items>
        <_size dataType="Int">3</_size>
        <_version dataType="Int">5</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3310331806" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3936915306">
            <item dataType="ObjectRef">1043591552</item>
            <item dataType="ObjectRef">2814791886</item>
            <item dataType="ObjectRef">133521180</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="4119420122">
            <item dataType="ObjectRef">1115453490</item>
            <item dataType="ObjectRef">397305126</item>
            <item dataType="ObjectRef">1817915082</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">1115453490</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2443550410">G6wh9+2gQ0edvuK39HXFpg==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Enemy</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3835831138">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="337013676">
        <_items dataType="Array" type="Duality.Component[]" id="4106734820" length="4">
          <item dataType="Struct" type="Duality.Components.Transform" id="1901178774">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">3835831138</gameobj>
            <ignoreParent dataType="Bool">false</ignoreParent>
            <parentTransform />
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
              <Z dataType="Float">-500</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
              <Z dataType="Float">-500</Z>
            </posAbs>
            <scale dataType="Float">1</scale>
            <scaleAbs dataType="Float">1</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
              <Z dataType="Float">0</Z>
            </vel>
            <velAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
              <Z dataType="Float">0</Z>
            </velAbs>
          </item>
          <item dataType="Struct" type="Duality.Components.Camera" id="78139649">
            <active dataType="Bool">true</active>
            <farZ dataType="Float">100000</farZ>
            <focusDist dataType="Float">500</focusDist>
            <gameobj dataType="ObjectRef">3835831138</gameobj>
            <nearZ dataType="Float">0</nearZ>
            <passes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Camera+Pass]]" id="1668650269">
              <_items dataType="Array" type="Duality.Components.Camera+Pass[]" id="4038397158" length="4">
                <item dataType="Struct" type="Duality.Components.Camera+Pass" id="204172672">
                  <clearColor dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">0</A>
                    <B dataType="Byte">0</B>
                    <G dataType="Byte">0</G>
                    <R dataType="Byte">0</R>
                  </clearColor>
                  <clearDepth dataType="Float">1</clearDepth>
                  <clearFlags dataType="Enum" type="Duality.Drawing.ClearFlag" name="All" value="3" />
                  <input />
                  <matrixMode dataType="Enum" type="Duality.Drawing.RenderMatrix" name="PerspectiveWorld" value="0" />
                  <output dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.RenderTarget]]">
                    <contentPath />
                  </output>
                  <visibilityMask dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="AllGroups" value="2147483647" />
                </item>
                <item dataType="Struct" type="Duality.Components.Camera+Pass" id="1406912718">
                  <clearColor dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">0</A>
                    <B dataType="Byte">0</B>
                    <G dataType="Byte">0</G>
                    <R dataType="Byte">0</R>
                  </clearColor>
                  <clearDepth dataType="Float">1</clearDepth>
                  <clearFlags dataType="Enum" type="Duality.Drawing.ClearFlag" name="None" value="0" />
                  <input />
                  <matrixMode dataType="Enum" type="Duality.Drawing.RenderMatrix" name="OrthoScreen" value="1" />
                  <output dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.RenderTarget]]">
                    <contentPath />
                  </output>
                  <visibilityMask dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="All" value="4294967295" />
                </item>
              </_items>
              <_size dataType="Int">2</_size>
              <_version dataType="Int">2</_version>
            </passes>
            <perspective dataType="Enum" type="Duality.Drawing.PerspectiveMode" name="Parallax" value="1" />
            <visibilityMask dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="All" value="4294967295" />
          </item>
        </_items>
        <_size dataType="Int">2</_size>
        <_version dataType="Int">4</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1374614454" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1428593126">
            <item dataType="ObjectRef">1043591552</item>
            <item dataType="Type" id="2839634304" value="Duality.Components.Camera" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="3318179130">
            <item dataType="ObjectRef">1901178774</item>
            <item dataType="ObjectRef">78139649</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">1901178774</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3069705062">8mNdFP8BhUCkSPG6sxtEFQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Camera</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="130622430">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="4050153416">
        <_items dataType="Array" type="Duality.Component[]" id="4025909868" length="8">
          <item dataType="Struct" type="Duality.Components.Transform" id="2490937362">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">130622430</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="1772788998">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">130622430</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="3193398954">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">130622430</gameobj>
          </item>
          <item dataType="Struct" type="naves.Player" id="3510181036">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">130622430</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.TextRenderer" id="1873251252">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">130622430</gameobj>
          </item>
        </_items>
        <_size dataType="Int">5</_size>
        <_version dataType="Int">5</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2634992350" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3054155914">
            <item dataType="ObjectRef">1043591552</item>
            <item dataType="ObjectRef">2814791886</item>
            <item dataType="ObjectRef">133521180</item>
            <item dataType="ObjectRef">1166342610</item>
            <item dataType="ObjectRef">1432498488</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="1422961946">
            <item dataType="ObjectRef">2490937362</item>
            <item dataType="ObjectRef">1772788998</item>
            <item dataType="ObjectRef">3193398954</item>
            <item dataType="ObjectRef">3510181036</item>
            <item dataType="ObjectRef">1873251252</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2490937362</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3059999082">qWa6Y3OyUEWQZdYQ8pcyJw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">ShipOne</name>
      <parent />
      <prefabLink dataType="Struct" type="Duality.Resources.PrefabLink" id="270601780">
        <changes />
        <obj dataType="ObjectRef">130622430</obj>
        <prefab dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Prefab]]">
          <contentPath dataType="String">Data\Player.Prefab.res</contentPath>
        </prefab>
      </prefabLink>
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="2533080139">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1545184057">
        <_items dataType="Array" type="Duality.Component[]" id="3114927822" length="4">
          <item dataType="Struct" type="Duality.Components.Transform" id="598427775">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">2533080139</gameobj>
            <ignoreParent dataType="Bool">false</ignoreParent>
            <parentTransform />
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
              <Z dataType="Float">0</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
              <Z dataType="Float">0</Z>
            </posAbs>
            <scale dataType="Float">1</scale>
            <scaleAbs dataType="Float">1</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
              <Z dataType="Float">0</Z>
            </vel>
            <velAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
              <Z dataType="Float">0</Z>
            </velAbs>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.TextRenderer" id="4275708961">
            <active dataType="Bool">true</active>
            <blockAlign dataType="Enum" type="Duality.Alignment" name="Center" value="0" />
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customMat />
            <gameobj dataType="ObjectRef">2533080139</gameobj>
            <iconMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath />
            </iconMat>
            <offset dataType="Int">0</offset>
            <text dataType="Struct" type="Duality.Drawing.FormattedText" id="892426129">
              <flowAreas />
              <fonts dataType="Array" type="Duality.ContentRef`1[[Duality.Resources.Font]][]" id="571820526">
                <item dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Font]]">
                  <contentPath dataType="String">Default:Font:GenericMonospace10</contentPath>
                </item>
              </fonts>
              <icons />
              <lineAlign dataType="Enum" type="Duality.Alignment" name="Left" value="1" />
              <maxHeight dataType="Int">0</maxHeight>
              <maxWidth dataType="Int">0</maxWidth>
              <sourceText dataType="String">Hello World</sourceText>
              <wrapMode dataType="Enum" type="Duality.Drawing.FormattedText+WrapMode" name="Word" value="1" />
            </text>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
          </item>
        </_items>
        <_size dataType="Int">2</_size>
        <_version dataType="Int">2</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1492368128" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="2034562195">
            <item dataType="ObjectRef">1043591552</item>
            <item dataType="ObjectRef">1432498488</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2625496824">
            <item dataType="ObjectRef">598427775</item>
            <item dataType="ObjectRef">4275708961</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">598427775</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2030241657">dPwQHuvqTECxOWIksrSMcw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">TextRenderer</name>
      <parent />
      <prefabLink />
    </item>
  </serializeObj>
  <visibilityStrategy dataType="Struct" type="Duality.Components.DefaultRendererVisibilityStrategy" id="2035693768" />
</root>
<!-- XmlFormatterBase Document Separator -->
